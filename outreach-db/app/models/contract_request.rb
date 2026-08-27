class ContractRequest < ApplicationRecord
  # Soonest-due first; requests with no due date sort to the bottom.
  default_scope { order(Arel.sql("due_date IS NULL, due_date ASC")) }

  STATUSES = ["New", "Reviewing", "Submitted", "Won", "Lost", "Passed"].freeze
  GOVERNMENT_TYPES = ["City", "County", "Court", "Library", "School District",
                      "State", "Special District", "Healthcare", "Other"].freeze

  validates :organization_name, presence: true

  # Reference table of fiscal-year windows by government type, shown at the top
  # of the contract list. Dates are MM/DD - MM/DD. Notes start blank — Erica
  # fills them in (via a request to update this list) as she learns them.
  # Sources: US federal FY is Oct 1–Sep 30; 46 states run Jul 1–Jun 30 with AL,
  # MI (Oct 1–Sep 30), NY (Apr 1–Mar 31) and TX (Sep 1–Aug 31) as exceptions;
  # Colorado local governments (counties, cities) use the calendar year while
  # CO school districts use Jul 1–Jun 30 (C.R.S. § 29-1-602).
  FISCAL_YEARS = [
    { type: "US Federal Government",            dates: "10/01 - 09/30", notes: "" },
    { type: "U.S. States (46 states, default)", dates: "07/01 - 06/30", notes: "" },
    { type: "State — Alabama",                  dates: "10/01 - 09/30", notes: "" },
    { type: "State — Michigan",                 dates: "10/01 - 09/30", notes: "" },
    { type: "State — New York",                 dates: "04/01 - 03/31", notes: "" },
    { type: "State — Texas",                    dates: "09/01 - 08/31", notes: "" },
    { type: "Colorado — Counties & Cities",     dates: "01/01 - 12/31", notes: "" },
    { type: "Colorado — School Districts",      dates: "07/01 - 06/30", notes: "" },
  ].freeze
end
