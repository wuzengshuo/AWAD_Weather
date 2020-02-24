# README
## Personal info
```
No: 51988744
Name: Wu Zengshuo
```
* Ruby version 2.6.2

* Configuration database.yml

* Database creation postgresql

* Database initialization
```
# Special Weather Statement for Los Angeles, CA
# ...THREAT OF MONSOONAL THUNDERSTORMS LATE TONIGHT THROUGH WEDNESDAY...
# A STRONG UPPER LEVEL HIGH PRESSURE SYSTEM CURRENTLY CENTERED OVER NEVADA
# WILL BRING INCREASING EAST TO SOUTHEAST FLOW OVER SOUTHERN
# CALIFORNIA. AS A RESULT...A SIGNIFICANT SURGE OF MONSOONAL MOISTURE
# WILL MOVE INTO SOUTHWEST CALIFORNIA LATE TONIGHT THROUGH WEDNESDAY.
# THE GREATEST THREAT OF SHOWERS AND THUNDERSTORMS WILL BE ACROSS THE
# MOUNTAINS AND ANTELOPE VALLEY LATE TONIGHT INTO TUESDAY. DUE TO THE
# EASTERLY UPPER LEVEL FLOW ON MONDAY...THERE WILL ALSO BE A SLIGHT
# CHANCE OF SHOWERS AND THUNDERSTORMS ACROSS MOST COASTAL AND VALLEY
# AREAS.
# THE DEEPER MONSOONAL MOISTURE WILL BRING THE POTENTIAL FOR BRIEF HEAVY
# RAINFALL WITH STORMS THAT DEVELOP ON MONDAY AND TUESDAY...ESPECIALLY
# ACROSS THE MOUNTAINS AND ANTELOPE VALLEY. WHILE STORMS ARE EXPECTED
# TO BE FAST MOVING...THERE WILL BE THE POTENTIAL FOR LOCALIZED FLOODING
# OF ROADWAYS AND ARROYOS. ON TUESDAY...THE THREAT OF THUNDERSTORMS IS
# EXPECTED TO REMAIN CONFINED TO THE MOUNTAINS AND DESERTS. WITH WEAKER
# UPPER LEVEL WINDS ON TUESDAY...STORMS WILL LIKELY MOVE SLOWER. AS A
# RESULT...THERE WILL BE AN INCREASED THREAT OF FLASH FLOODING.
# IT WILL NOT BE AS HOT ACROSS MUCH OF THE REGION TOMORROW DUE TO THE
# INCREASED MOISTURE AND CLOUD COVERAGE...WITH INTERIOR SECTIONS
# GENERALLY REMAINING IN THE 90S. HOWEVER...THERE WILL BE A
# SIGNIFICANT INCREASE IN HUMIDITY ON MONDAY THAT WILL CONTINUE TO
# BRING DISCOMFORT.
# ANYONE PLANNING OUTDOOR ACTIVITIES IN THE MOUNTAINS AND DESERTS
# DURING THE NEXT FEW DAYS SHOULD CAREFULLY MONITOR THE LATEST
# NATIONAL WEATHER SERVICE FORECASTS AND STATEMENTS DUE TO THE
# POTENTIAL HAZARDS ASSOCIATED WITH THUNDERSTORMS.
#             Created: July 13 at 10:50pm EDT
#             Expires: July 14 at 7:00pm EDT
#
# Ick! The humidity is 85%
# The nearest storm is 18 miles NE away
# The wind speed is 3.96 mph SE
# The cloud coverage is 35%
# The visibility is 9.58 miles
# The pressure is 1012.99 mbar
```

## Include tables
```
daily_forecasts

address_id:integer cond_code_d:string{100} cond_code_n:string{100} cond_txt_d:string{100} cond_txt_n:string{100} vdate:datetime hum:'decimal{14,4}' pcpn:'decimal{14,4}' pop:integer pres:integer tmp_max:'decimal{14,4}' tmp_min:'decimal{14,4}' uv_index:integer vis:integer wind_deg:integer wind_dir:string{100} wind_sc:string{100} wind_spd:integer

addresses
cid:string{100} parent_city:string{100}

hourly_forecasts

address_id:integer vtime:datetime tmp:'decimal{14,4}' cond_code:string{100} cond_txt:string{100} wind_deg:integer wind_dir:string{100} wind_sc:string{100} wind_spd:integer  hum:'decimal{14,4}' pres:integer pop:integer dew:integer cloud:integer

```
## Running the Server

```
web bin/rails server -p $PORT -e $RAILS_ENV
```

## Control database

```
bin/rails db:create
bin/rails db:migrate
bin/rails db:rollback
```



