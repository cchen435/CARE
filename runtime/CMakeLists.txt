add_library(care SHARED
    care.c
    dw.c
    handler.c
    udis.c
    util.c
)

find_library(UDIS_LIB udis86)
message("UD: " ${UDIS_LIB})

find_library(DWARF_LIB dwarf)
message("dwarf: " ${DWARF_LIB})

target_link_libraries(care ${UDIS_LIB} ${DWARF_LIB})
