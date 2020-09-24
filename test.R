library(rbbt)
bbt_write_bib("rbbt-bibliography2.json", 
              keys = c("franklin_mapping_2009", "incollection-a3e3", "Kish_1965"))

bbt_write_bib("bibliography.json", 
              keys = c("franklin_mapping_2009", "incollection-a3e3", "Kish_1965"))

file.create("rbbt-bibliography2.json")
bbt_write_bib("rbbt-bibliography2.json", 
              keys = c("franklin_mapping_2009",
                       "Kish_1965",
                       "incollection-a3e3",
                       "book-a2e0",
                       "nonexistant_2030",
                       "nonexistant_2040"),
              overwrite = TRUE)

library(rbbt)
bbt_bib(
  keys = c("franklin_mapping_2009",
           "Kish_1965",
           "incollection-a3e3",
           "book-a2e0",
           "nonexistant_2030",
           "nonexistant_2040")
)

bbt_call_json_rpc(
  "item.export",
  as.list(unique(as.character(c("franklin_mapping_2009", 
                                "incollection-a3e3")))),
  getOption("rbbt.default.translator", "biblatex"),
  getOption("rbbt.default.library_id", 1)
)

bbt_write_bib("rbbt-bibliography2.json", 
              keys = c("franklin_mapping_2009", 
                       "incollection-a3e3"),
              overwrite = TRUE)
