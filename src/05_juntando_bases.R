#Script para juntar datos

library(tidyverse)


# género ------------------------------------------------------------------

como_nina <- read_rds("datos/tweets/genero/como_nina.RDS") %>% 
  mutate(tipo = "como_nina")

es_de_nina <- read_rds("datos/tweets/genero/es_de_nina.RDS") %>% 
  mutate(tipo = "es_de_nina")

mama_luchona <- read_rds("datos/tweets/genero/mama_luchona.RDS") %>% 
  mutate(tipo = "mama_luchona")

vieja_loca <- read_rds("datos/tweets/genero/vieja_loca_geo.RDS") %>% 
  mutate(tipo = "vieja_loca")

como_hombre <- read_rds("datos/tweets/genero/como_hombre.RDS") %>% 
  mutate(tipo = "como_hombre")

tienes_hijos <- read_rds("datos/tweets/genero/tienes_hijos.RDS") %>% 
  mutate(tipo = "tienes_hijos")

vieja_pendeja <- read_rds("datos/tweets/genero/veja_pendeja.RDS") %>% 
  mutate(tipo = "vieja_pendeja")

# discriminacion_embarazada <- read_rds("datos/tweets/genero/discriminacion_embarazada.RDS") %>% 
#   mutate(tipo = "discriminacion_embarazada")

discriminacion_mujeres <- read_rds("datos/tweets/genero/discriminacion_mujeres.RDS") %>% 
  mutate(tipo = "discriminacion_mujeres")

feminazi <- read_rds("datos/tweets/genero/feminazi.RDS") %>% 
  mutate(tipo = "feminazi")

base_genero <- rbind(como_nina, es_de_nina, mama_luchona, vieja_loca, como_hombre,
                     tienes_hijos, vieja_pendeja,
                     discriminacion_mujeres, feminazi) %>% 
  mutate(motivo = "genero")

saveRDS(base_genero, "datos/tweets/base_genero.RDS")


# orientación/identidad sexual --------------------------------------------

arroz_popote <- read_rds("datos/tweets/orientacion/arroz_popote.RDS") %>% 
  mutate(tipo = "arroz_popote")

joto <- read_rds("datos/tweets/orientacion/joto.RDS") %>% 
  mutate(tipo = "joto")

lencha <- read_rds("datos/tweets/orientacion/lencha.RDS") %>% 
  mutate(tipo = "lencha")

lesbiana <- read_rds("datos/tweets/orientacion/lesbiana.RDS") %>% 
  mutate(tipo = "lesbiana")

pinche_lesbiana <- read_rds("datos/tweets/orientacion/pinche_lesbiana.RDS") %>% 
  mutate(tipo = "pinche_lesbiana")

pinche_maricon <- read_rds("datos/tweets/orientacion/pinche_maricon.RDS") %>% 
  mutate(tipo = "pinche_maricon")

pinche_puto <- read_rds("datos/tweets/orientacion/pinche_puto.RDS") %>% 
  mutate(tipo = "pinche_puto")

punial <- read_rds("datos/tweets/orientacion/punial.RDS") %>% 
  mutate(tipo = "punial")

base_orientacion <- rbind(arroz_popote, joto, lencha, lesbiana, pinche_lesbiana,
                          pinche_maricon, pinche_puto, punial) %>% 
  mutate(motivo = "orientacion")


saveRDS(base_orientacion, "datos/tweets/base_orientacion.RDS")


# Ideología política ------------------------------------------------------

chairo <- read_rds("datos/tweets/ideologia_politica/chairo.RDS") %>% 
  mutate(tipo = "chairo")

derechairo <- read_rds("datos/tweets/ideologia_politica/derechairo.RDS") %>% 
  mutate(tipo = "derechairo")

feminazi <- read_rds("datos/tweets/ideologia_politica/feminazi.RDS") %>% 
  mutate(tipo = "feminazi")

base_ideologia <- rbind(chairo, derechairo, feminazi) %>% 
  mutate(motivo = "ideologia")


saveRDS(base_ideologia, "datos/tweets/base_ideologia.RDS")


# apariencia --------------------------------------------------------------

naco <- read_rds("datos/tweets/apariencia/naco.RDS") %>% 
  mutate(tipo = "naco")

jodido <- read_rds("datos/tweets/apariencia/jodido.RDS") %>% 
  mutate(tipo = "jodido")

iztapalacra <- read_rds("datos/tweets/apariencia/iztapalacra.RDS") %>% 
  mutate(tipo = "iztapalacra")

chacha <- read_rds("datos/tweets/apariencia/chacha.RDS") %>% 
  mutate(tipo = "chacha")

pinche_fresa <- read_rds("datos/tweets/apariencia/pinche_fresa.RDS") %>% 
  mutate(tipo = "pinche_fresa")

pinche_negro <- read_rds("datos/tweets/apariencia/pinche_negro.RDS") %>% 
  mutate(tipo = "pinche_negro")

pinche_gordo <- read_rds("datos/tweets/apariencia/pinche_gordo.RDS") %>% 
  mutate(tipo = "pinche_gordo")

pinche_indio <- read_rds("datos/tweets/apariencia/pinche_indio.RDS") %>% 
   mutate(tipo = "pinche_indio")

pinche_pobre <- read_rds("datos/tweets/apariencia/pinche_pobre.RDS") %>% 
  mutate(tipo = "pinche_pobre")

guerito <- read_rds("datos/tweets/apariencia/guerito.RDS") %>% 
  mutate(tipo = "guerito")

base_apariencia <- rbind(naco, jodido, iztapalacra, chacha, pinche_fresa,
                         pinche_negro, pinche_gordo, pinche_pobre,
                         guerito, pinche_indio) %>% 
  mutate(motivo = "apariencia")


saveRDS(base_apariencia, "datos/tweets/base_apariencia.RDS")

# religion ----------------------------------------------------------------

pinche_judio <- read_rds("datos/tweets/religion/pinche_judio_geo.RDS") %>% 
  mutate(tipo = "pinche_judio")

testiculos_jehova <- read_rds("datos/tweets/religion/testiculos_jehova.RDS") %>% 
  mutate(tipo = "testiculos_jehova")

testigos_jehova <- read_rds("datos/tweets/religion/testigos_jehova.RDS") %>% 
  mutate(tipo = "testigos_jehova")

religioso_pendejo <- read_rds("datos/tweets/religion/religioso_pendejo.RDS") %>% 
  mutate(tipo = "religioso_pendejo")

base_religion <- rbind(pinche_judio, testiculos_jehova, testigos_jehova, religioso_pendejo) %>% 
  mutate(motivo = "religion")

saveRDS(base_religion, "datos/tweets/base_religion.RDS")





# edad --------------------------------------------------------------------

pinche_viejo <- read_rds("datos/tweets/edad/pinche_vieji.RDS") %>% 
  mutate(tipo = "pinche_viejo")

chavoruco <- read_rds("datos/tweets/edad/chavoruco.RDS") %>% 
  mutate(tipo = "chavoruco")

es_chavo <- read_rds("datos/tweets/edad/es_chavo.RDS") %>% 
  mutate(tipo = "es_chavo")

nini <- read_rds("datos/tweets/edad/nini.RDS") %>% 
  mutate(tipo = "nini")

pareces_nino_chiquito <- read_rds("datos/tweets/edad/pareces_nino_chiquito.RDS") %>% 
  mutate(tipo = "pareces_nino_chiquito")

pinche_ninio <- read_rds("datos/tweets/edad/pinche_ninio.RDS") %>% 
  mutate(tipo = "pinche_ninio")

base_edad <- rbind(pinche_viejo, chavoruco, es_chavo, nini, pareces_nino_chiquito,pinche_ninio) %>% 
  mutate(motivo = "edad")

saveRDS(base_edad, "datos/tweets/base_edad.RDS")



# discapacidad ------------------------------------------------------------
ciego <- read_rds("datos/tweets/discapacidad/ciego.RDS") %>% 
  mutate(tipo = "ciego")

cojo <- read_rds("datos/tweets/discapacidad/cojo.RDS") %>% 
  mutate(tipo = "cojo")

discapacitado <- read_rds("datos/tweets/discapacidad/discapacitado.RDS") %>% 
  mutate(tipo = "discapacitado")

base_discapacidad <- rbind(ciego, cojo, discapacitado) %>% 
  mutate(motivo = "discapacidad")

saveRDS(base_discapacidad, "datos/tweets/base_discapacidad.RDS")


