s = adios_selection_writeblock (rank);
adios_schedule_read (fp, s, "zion", 1, 1, zion);
adios_schedule_read (fp, s, "zeon", 1, 1, zeon);
adios_perform_reads (fp, 1);
adios_selection_delete (s);
