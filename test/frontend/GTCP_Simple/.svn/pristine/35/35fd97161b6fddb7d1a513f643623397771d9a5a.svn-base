s = adios_selection_writeblock (rank);
adios_schedule_read (fp, s, "moments", 1, 1, momentstmp+7*(igrid_nover_in-igrid_moments_in));
adios_perform_reads (fp, 1);
adios_selection_delete (s);
