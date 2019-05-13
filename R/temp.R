# # # #
# # # # Lataa QOG-projektin Basic data (dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019) ). Tee taulukko jossa F-kirjaimella alkavien maiden osalta datassa olevat vuodet.
# # #
# # # library(dplyr)
# # # dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019)
# # # dat %>%
# # #   filter(grepl("^F", cname)) %>%
# # #   count(cname)
# # # # Or
# # # dat %>%
# # #   filter(grepl("^F", cname)) %>%
# # #   group_by(cname) %>%
# # #   summarise(n = n())
# # #
# # # # Lataa QOG-projektin Basic data (dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019) ). Valitse undp_hdi muuttuja, poista puuttuvat arvot ja tee taulukko jossa A-kirjaimella alkavien maiden osalta datassa olevien vuosien määrä.
# # #
# # # library(dplyr)
# # # dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019)
# # # dat %>%
# # #   filter(grepl("^A", cname),
# # #          !is.na(undp_hdi)) %>%
# # #   count(cname)
# # # # Or
# # # dat %>%
# # #   filter(grepl("^F", cname),
# # #          !is.na(undp_hdi)) %>%
# # #   group_by(cname) %>%
# # #   summarise(n = n())
# # #
# # # # Lataa QOG-projektin Basic data (dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019) ). Tee taulukko jossa y-kirjaimeen loppuvien maiden korkein undp_hdi-arvo ja ko. vuosi.
# # #
# # # # cname    undp_hdi  year
# # # # Germany     0.936  2017
# # # # Hungary     0.838  2017
# # # # Italy       0.88   2017
# # # # Norway      0.953  2017
# # # # Paraguay    0.702  2015
# # # # Paraguay    0.702  2016
# # # # Paraguay    0.702  2017
# # # # Turkey      0.791  2017
# # # # Uruguay     0.804  2017
# # #
# # # library(dplyr)
# # # dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019)
# # # dat %>%
# # #   filter(grepl("y$", cname)) %>%
# # #   group_by(cname) %>%
# # #   filter(undp_hdi == max(undp_hdi, na.rm = TRUE)) %>%
# # #   select(cname,undp_hdi,year) %>%
# # #   ungroup()
# # #
# # # # Lataa QOG-projektin Basic data (dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019) ). Tee taulukko jossa o-kirjaimeen loppuvien maiden tuorein wdi_homicides-arvo ja ko. vuosi.
# # #
# # # # cname               wdi_homicides  year
# # # # Congo                       9.32   2015
# # # # Lesotho                    41.2    2015
# # # # Mexico                     19.3    2016
# # # # Monaco                      0      2015
# # # # Montenegro                  4.46   2016
# # # # Morocco                     1.24   2015
# # # # San Marino                  0      2011
# # # # Togo                        9.00   2015
# # # # Trinidad and Tobago        30.9    2015
# # # # Burkina Faso                0.370  2015
# # #
# # # library(dplyr)
# # # dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019)
# # # dat %>%
# # #   select(cname,year,wdi_homicides) %>%
# # #   filter(!is.na(wdi_homicides),
# # #          grepl("o$", cname)) %>%
# # #   group_by(cname) %>%
# # #   filter(year == max(year, na.rm = TRUE)) %>%
# # #   select(cname,wdi_homicides,year) %>%
# # #   ungroup()
# # #
# # # # Lataa QOG-projektin Basic data (dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019) ). Tee taulukko jossa d-kirjaimeen loppuvien maiden osalta top3 maat muuttujan wdi_internet-suhteen paremmuusjärjestyksessä kunakin vuonna 2014,2015,2016 ja 2017.
# # #
# # # # cname        year wdi_internet
# # # # Iceland      2014         98.2
# # # # Switzerland  2014         87.4
# # # # Finland      2014         86.5
# # # # Iceland      2015         98.2
# # # # New Zealand  2015         88.2
# # # # Switzerland  2015         87.5
# # # # Iceland      2016         98.2
# # # # Switzerland  2016         89.1
# # # # New Zealand  2016         88.5
# # # # Switzerland  2017         93.7
# # # # Finland      2017         87.5
# # # # Ireland      2017         84.5
# # #
# # # library(dplyr)
# # # dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019)
# # # dat %>%
# # #   select(cname,year,wdi_internet) %>%
# # #   filter(!is.na(wdi_internet),
# # #          grepl("d$", cname),
# # #          year %in% 2014:2017) %>%
# # #   group_by(year) %>%
# # #   arrange(desc(wdi_internet)) %>%
# # #   slice(1:3) %>%
# # #   ungroup()
# # #
# # #
# # #
# # # library(nycflights13)
# # # library(dplyr)
# # # left_join(flights, airlines) %>%
# # #   filter(name == "Hawaiian Airlines Inc.",
# # #          year == 2013,
# # #          origin == "JFK") %>%
# # #   summarise(n=n())
# # #
# # #
# # # left_join(flights, airlines) %>%
# # #   left_join(planes) %>%
# # #   filter(name == "US Airways Inc.",
# # #          year == 2013,
# # #          origin == "JFK") %>%
# # #   summarise(seats = mean(seats, na.rm = TRUE))
# # #
# # #
# # #
# # #
# # # # Visualisointiharjoitukset
# # #
# # # visu_h19_k4_1
# # # # Lataa QOG-projektin Basic data (dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019) ). Miten saat seuraavanlaisen kuvan: http://courses.markuskainu.fi/utur2019/kuvat/visu_h19_k4_1.png
# # #
# # # library(dplyr)
# # # library(ggplot2)
# # # dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019)
# # # dat2 <- dat %>%
# # #   select(year,cname,wdi_homicides) %>%
# # #   filter(!is.na(wdi_homicides),
# # #          grepl("o$", cname))
# # # ggplot(dat2, aes(x = year,
# # #                  y = wdi_homicides,
# # #                  color = cname)) +
# # #   geom_point() +
# # #   geom_line() +
# # #   theme(legend.position = "none") +
# # #   geom_text(data = dat2 %>%
# # #               group_by(cname)  %>%
# # #               filter(year == max(year, na.rm = TRUE)) %>%
# # #               ungroup(),
# # #             aes(label = cname))
# # #
# # #
# # # visu_h19_k4_2
# # # # Lataa QOG-projektin Basic data (dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019) ). Miten saat seuraavanlaisen kuvan: http://courses.markuskainu.fi/utur2019/kuvat/visu_h19_k4_2.png
# # #
# # # library(dplyr)
# # # library(ggplot2)
# # # dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019)
# # # dat2 <- dat %>%
# # #   select(year,cname,wdi_internet,wdi_elerenew) %>%
# # #   filter(year %in% c(2008,2010,2012,2014))
# # #
# # # ggplot(dat2, aes(x = wdi_internet,
# # #                       y = wdi_elerenew,
# # #                       color = cname,
# # #                       group = 1)) +
# # #   geom_point() +
# # #   facet_wrap(~year) +
# # #   geom_smooth(method = "lm") +
# # #   theme(legend.position = "none")
# # #
# # #
# # # visu_h19_k4_3
# # # # Lataa QOG-projektin Basic data (dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019) ). Miten saat seuraavanlaisen kuvan: http://courses.markuskainu.fi/utur2019/kuvat/visu_h19_k4_3.png
# # #
# # library(dplyr)
# # library(ggplot2)
# # dat <- rqog::read_qog(which_data = "basic", data_type = "time-series", year = 2019)
# # dat2 <- dat %>%
# #   select(year,cname,wdi_fertility,wdi_empagr) %>%
# #   filter(year %in% c(2008,2010,2012,2014))
# #
# # dat_cor <- dat2 %>%
# #   na.omit() %>%
# #   group_by(year) %>%
# #   summarise(corr = cor(wdi_empagr,wdi_fertility, method = "pearson"),
# #             wdi_fertility = mean(wdi_fertility, na.rm = TRUE),
# #             wdi_empagr = mean(wdi_empagr, na.rm = TRUE))
# #
# # p <- ggplot(dat2, aes(x = wdi_empagr,
# #                       y = wdi_fertility)) +
# #   geom_point() +
# #   facet_wrap(~year) +
# #   geom_smooth() +
# #   geom_text(data = dat_cor,
# #             aes(label = paste0("r. ", round(corr, 3))),
# #             color = "dim grey",
# #             size = 15, alpha = .6)
# library(dplyr)
# library(ggplot2)
# library(forcats)
# library(tidyr)
#
# kuvadata <- dplyr::starwars %>%
#   unnest(films) %>%
#   select(name,gender,films) %>%
#   filter(!is.na(gender)) %>%
#   group_by(films) %>%
#   count(gender) %>%
#   mutate(osuus = round(n/sum(n)*100,1))
#
#
# # suput esiintymisasteen (kaikissa elokuvissa) mukaan
# suput <- kuvadata %>%
#   group_by(gender) %>%
#   summarise(osuus = sum(osuus)) %>%
#   arrange(desc(osuus)) %>%
#   pull(gender)
#
# # elokuvat miesten esiintymisasteen mukaan
# elokuvat <- kuvadata %>%
#   filter(gender == "male") %>%
#   arrange(desc(osuus)) %>%
#   pull(films)
#
# # asetetaan faktorilevelit
# kuvadata$gender <- factor(kuvadata$gender, levels = rev(suput))
# kuvadata$films <- factor(kuvadata$films, levels = elokuvat)
#
# ggplot(kuvadata, aes(x = films,
#                      y = osuus,
#                      fill = gender)) +
#   geom_col() +
#   labs(title = "Star Wars elokuvat ja hahmojen 'sukupuoliosuudet'",
#        subtitle = "Elokuvat järjestetty miesten suhteellisen osuuden mukaan",
#        y = "naisten määrä") +
#   theme(axis.text.x = element_text(angle = 90))
#
# ggsave(filename = "~/btsync/kela/utur2019/utur2019_site/kuvat/h19_k4_factor_4.png", plot = p)
# #
#
#
# dplyr::starwars %>%
#   mutate(eye_color_base = gsub('-.+$|,.+$', "", eye_color)) %>%
#   filter(grepl("-|,", eye_color)) %>%
#   select(name,eye_color,eye_color_base)
