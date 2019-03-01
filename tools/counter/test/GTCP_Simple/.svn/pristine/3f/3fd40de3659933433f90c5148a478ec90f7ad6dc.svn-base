adios_groupsize = 4 \
                + 4 \
                + 4 \
                + 4 \
                + 4 \
                + 4 \
                + 4 \
                + 4 \
                + 4 \
                + 4 \
                + 4 * (nparam) * (mi_total) \
                + 4 \
                + 4 \
                + 4 \
                + 4 \
                + 4 \
                + 4 \
                + 4 * (nparam) * (me_total);
adios_group_size (adios_handle, adios_groupsize, &adios_totalsize);
adios_write (adios_handle, "istep", &istep);
adios_write (adios_handle, "mype", &mype);
adios_write (adios_handle, "numberpe", &numberpe);
adios_write (adios_handle, "nparam", &nparam);
adios_write (adios_handle, "mi", &mi);
adios_write (adios_handle, "mi_total", &mi_total);
adios_write (adios_handle, "mi_offset", &mi_offset);
adios_write (adios_handle, "ntracer", &ntracer);
adios_write (adios_handle, "ntracer_i0", &ntracer_i0);
adios_write (adios_handle, "misum", &misum);
adios_write (adios_handle, "zion", zion);
adios_write (adios_handle, "ntracer_e", &ntracer_e);
adios_write (adios_handle, "etracer_e0", &etracer_e0);
adios_write (adios_handle, "mesum", &mesum);
adios_write (adios_handle, "me", &me);
adios_write (adios_handle, "me_total", &me_total);
adios_write (adios_handle, "me_offset", &me_offset);
adios_write (adios_handle, "zeon", zeon);
