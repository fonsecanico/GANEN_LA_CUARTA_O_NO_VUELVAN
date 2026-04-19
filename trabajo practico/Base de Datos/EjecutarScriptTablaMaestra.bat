sqlcmd -S SERVIDOR\INSTANCIA -i gd_esquema.Schema.sql  -a 32767 -o resultado_output.txt
sqlcmd -S SERVIDOR\INSTANCIA -i gd_esquema.Maestra.sql -a 32767 -o resultado_output.txt
sqlcmd -S SERVIDOR\INSTANCIA -i gd_esquema.Maestra.Table.sql -a 32767 -o resultado_output.txt