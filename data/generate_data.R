# making data
set.seed(47)
start_tid <- as_datetime('1974/06/20 13:47:10')
slut_tid <- as_datetime('2022/06/16 13:47:10')

# vi vil have 14 kolonner med 12 rækker
tidspunkter <- sample(seq(from=start_tid, to=slut_tid, by="sec"), 12*14)

data <- matrix(tidspunkter, nrow = 12, ncol = 14) %>% 
  as_tibble() %>% 
  mutate(across(.cols = everything(), .fns = as_datetime))

data %>% 
  select(V1) %>% 
  mutate(dmy = str_c(day(V1), month(V1), year(V1), sep="-"))


data %>% 
  select(V1) %>% 
  mutate(test = as.character(V1)) %>% 
  mutate(test2 = str_c(test, " UTC")) %>% 
  mutate(test2 = as_datetime(test, tz="Europe/London")) %>% 
  mutate(test3 = str_c(test, " CEST")) %>% 
  mutate(test4 = as_datetime(as_datetime(test3, tz="Asia/Shanghai"), tz="Europe/London"))
  

dt_utc <- ymd_hms("2010-08-03 00:50:50")
dt_europe <- ymd_hms("2010-08-03 00:50:50", tz="Asia/Shanghai")


with_tz


  mutate(mon_year = zoo::as.yearmon(V1)) %>% 
  mutate(year_mon = str_c(year(mon_year), month(mon_year, label=T), sep=" ")) %>% 
  mutate(stamp = as.numeric(V1)) %>% 
  mutate(mdy = str_c(month(V1), day(V1), year(V1), sep="-")) %>% 
  mutate(ymd = str_c(year(V1), month(V1), day(V1), sep="-")) %>% 
  mutate(dmy = str_c(day(V1), month(V1), year(V1), sep="-")) %>% 
  mutate(tid = hms::as_hms(V1)) %>% 
  mutate(mdy_tid = str_c(mdy, tid, sep = " ")) %>% 
  mutate(ymd_tid = str_c(ymd, tid, sep = " ")) %>% 
  mutate(dmy_tid = str_c(dmy, tid, sep = " ")) %>% 
    view()

library(hms)

ymd_hms("1999-04-04 12:36:10", tz="Europe/Amsterdam") %>% as.character()
zoo::as.yearmon(ymd_hms("1999-04-04 12:36:10"))


dmå
åmd
mdå

tid
18:52:10

CEST
CST

måned
kvartal
tidszoner
Sys.getlocale()
local_time()


