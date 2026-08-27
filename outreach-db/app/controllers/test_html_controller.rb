require "fileutils"

class TestHtmlController < ApplicationController
  DIR = Rails.root.join("storage", "test_html")

  def index
    FileUtils.mkdir_p(DIR)
    @files = Dir.glob(DIR.join("*.{html,htm}")).map { |p| File.basename(p) }.sort
  end

  def create
    file = params[:file]
    return redirect_to(test_html_path, alert: "Choose an .html file to upload.") if file.blank?
    orig = File.basename(file.original_filename.to_s)
    return redirect_to(test_html_path, alert: "Only .html / .htm files allowed.") unless orig =~ /\.html?\z/i

    name = orig.gsub(/[^A-Za-z0-9._-]/, "_")
    FileUtils.mkdir_p(DIR)
    File.binwrite(DIR.join(name), file.read)
    redirect_to test_html_path, notice: "Uploaded #{name}."
  end

  def show
    name = File.basename(params[:name].to_s) # strip any path components (no traversal)
    path = DIR.join(name)
    return head :not_found unless name =~ /\.html?\z/i && File.file?(path)

    send_file path, type: "text/html", disposition: "inline"
  end
end
