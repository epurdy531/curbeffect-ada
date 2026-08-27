namespace :vendor_registrations do
  desc "Seed one vendor_registrations row per US state (idempotent; dev only). " \
       "Fills the best-known state vendor/supplier registration portal URL; " \
       "blanks are left for you to fill. Existing rows' is_registered / " \
       "registration_username are never overwritten."
  task seed: :environment do
    unless Rails.env.development?
      puts "vendor_registrations is a development-only feature; skipping."
      next
    end

    # Best-effort state procurement / supplier-registration portals. These are
    # editable in the UI — fix any that have moved.
    portals = {
      "Alabama"        => "https://procurement.staars.alabama.gov",
      "Alaska"         => "https://iris.alaska.gov",
      "Arizona"        => "https://app.az.gov",
      "Arkansas"       => "https://arbuy.arkansas.gov",
      "California"     => "https://caleprocure.ca.gov",
      "Colorado"       => "https://www.colorado.gov/vss",
      "Connecticut"    => "https://biznet.ct.gov",
      "Delaware"       => "https://mmp.delaware.gov",
      "Florida"        => "https://vendor.myfloridamarketplace.com",
      "Georgia"        => "https://fscm.teamworks.georgia.gov",
      "Hawaii"         => "https://hands.ehawaii.gov",
      "Idaho"          => "https://luma-ext.idaho.gov",
      "Illinois"       => "https://www.bidbuy.illinois.gov",
      "Indiana"        => "https://supplier.in.gov",
      "Iowa"           => "https://bidopportunities.iowa.gov",
      "Kansas"         => "https://supplier.ks.gov",
      "Kentucky"       => "https://vss.ky.gov",
      "Louisiana"      => "https://lagoverpvendor.doa.louisiana.gov",
      "Maine"          => "https://www.maine.gov/dafs/bbm/procurementservices/vendors",
      "Maryland"       => "https://emma.maryland.gov",
      "Massachusetts"  => "https://www.commbuys.com",
      "Michigan"       => "https://sigma.michigan.gov/webapp/PRDVSS2X1/AltSelfService",
      "Minnesota"      => "https://supplier.systems.state.mn.us",
      "Mississippi"    => "https://sus.magic.ms.gov",
      "Missouri"       => "https://missouribuys.mo.gov",
      "Montana"        => "https://emacs.mt.gov",
      "Nebraska"       => "https://das.nebraska.gov/materiel/purchasing.html",
      "Nevada"         => "https://nevadaepro.com",
      "New Hampshire"  => "https://www.nh.gov/nhfirst",
      "New Jersey"     => "https://www.njstart.gov",
      "New Mexico"     => "https://www.generalservices.state.nm.us/statepurchasing",
      "New York"       => "https://esupplier.sfs.ny.gov",
      "North Carolina" => "https://evp.nc.gov",
      "North Dakota"   => "https://www.omb.nd.gov/vendor-registration",
      "Ohio"           => "https://ohiobuys.ohio.gov",
      "Oklahoma"       => "https://oklahoma.gov/omes/services/purchasing.html",
      "Oregon"         => "https://oregonbuys.gov",
      "Pennsylvania"   => "https://www.pasupplierportal.state.pa.us",
      "Rhode Island"   => "https://oceanstateprocures.ri.gov",
      "South Carolina" => "https://procurement.sc.gov",
      "South Dakota"   => "https://bfm.sd.gov/vendor",
      "Tennessee"      => "https://hub.edison.tn.gov",
      "Texas"          => "https://comptroller.texas.gov/purchasing/vendor/cmbl",
      "Utah"           => "https://bids.utah.gov",
      "Vermont"        => "https://www.vermontbusinessregistry.com",
      "Virginia"       => "https://eva.virginia.gov",
      "Washington"     => "https://pr-webs-vendor.des.wa.gov",
      "West Virginia"  => "https://vendor.wvoasis.gov",
      "Wisconsin"      => "https://vendornet.wi.gov",
      "Wyoming"        => "https://ai.wyo.gov/divisions/general-services/purchasing",
    }

    created = updated = 0
    portals.each do |state, url|
      rec = VendorRegistration.find_or_initialize_by(state: state)
      if rec.new_record?
        rec.vendor_url = url
        rec.save!
        created += 1
      elsif rec.vendor_url.blank? && url.present?
        # Backfill a URL only when the row doesn't already have one — never
        # clobber an edit you've made.
        rec.update!(vendor_url: url)
        updated += 1
      end
    end

    puts "vendor_registrations: #{created} created, #{updated} URL-backfilled, " \
         "#{VendorRegistration.count} total."
  end
end
