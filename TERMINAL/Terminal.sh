#!/bin/bash

# TERMINAL
# a novel
# Version 2023.07.11

# distributed under a Creative Commons CC0 1.0 Universal Public Domain Dedication

- () {
 if [ $shell ]; then
  echo "- $1"
  echo
  stty echo
  printf "\e[?25h"
  read -r reader
  printf "\e[?25l"
  stty -echo
  echo
  words=`echo $reader | wc -w`
  if [ $words -eq 0 ]; then
   reader="..."
   printf "\033[2A\033[0K$reader\n\n"
   sleep $(($RANDOM%4+4))
  else
   reader=`echo $reader | tr "[:upper:]" "[:lower:]" | tr -d "[:punct:]"`
   exchange "absolutely" "certainly" "definitely" "emphatically"
   exchange "maybe" "perhaps" "possibly" "probably"
   exchange "nevermind" "nvm"
   exchange "please" "plz"
   exchange "sometimes" "frequently" "occasionally" "often" "periodically" "rarely" "typically" "usually"
   exchange "thanks" "thx"
   if [[ $reader == *" "* ]]; then
    exchange "a" "an"
    exchange "anybody" "anyone"
    exchange "are" "r"
    exchange "been" "gotten"
    exchange "cant" "cannot" "can not"
    exchange "color" "colour"
    exchange "couldnt" "could not"
    exchange "didnt" "did not"
    exchange "dont" "do not"
    exchange "do you" "dya"
    exchange "everybody" "everyone"
    exchange "father" "dad" "stepfather" "stepdad"
    exchange "favorite" "favourite"
    exchange "got to" "gotta"
    exchange "havent" "have not"
    exchange "honestly" "actually" "basically" "genuinely" "literally" "really" "seriously" "truly" "truthfully" "be honest" "in fact" "to be honest" "tell me the truth" "tell the truth" "tell you the truth" "to tell the truth" "to tell you the truth" "tbh"
    exchange "how are" "howre"
    exchange "hows" "how is"
    exchange "id" "i would"
    exchange "ill" "i will"
    exchange "im" "i am"
    exchange "mother" "mom" "stepmother" "stepmom"
    exchange "nobody" "no one"
    exchange "off" "off of"
    exchange "okay" "alright" "k" "ok" "sure"
    exchange "out" "out of"
    exchange "shouldnt" "should not"
    exchange "somebody" "someone"
    exchange "thats" "that is"
    exchange "the" "tha"
    exchange "theater" "theatre"
    exchange "though" "tho"
    exchange "too" "as well"
    exchange "type of" "kind of" "kinda" "sort of" "sorta"
    exchange "very" "awfully" "breathtakingly" "desperately" "enormously" "exceedingly" "exceptionally" "extremely" "fabulously" "fantastically" "horribly" "hugely" "immensely" "incredibly" "intensely" "massively" "mega" "monstrously" "obscenely" "overwhelmingly" "profoundly" "remarkably" "severely" "staggeringly" "super" "terribly" "terrifically" "tremendously" "ultra" "uncontrollably" "utterly" "wicked" "wickedly" "wildly"
    exchange "want to" "wanna" "lets"
    exchange "what" "wut"
    exchange "whats" "what is"
    exchange "what are" "whatre"
    exchange "whens" "when is"
    exchange "when are" "whenre"
    exchange "whered" "where did"
    exchange "wheres" "where is"
    exchange "where are" "wherere"
    exchange "whos" "who is"
    exchange "who are" "whore"
    exchange "why" "y"
    exchange "wouldnt" "would not"
    exchange "you" "u" "ya" "yall"
    exchange "oh" "afaic" "as far as im concerned" "ah" "aha" "ahah" "ahaha" "ahahah" "ahahaha" "ahahahah" "blah" "blegh" "btw" "bwahaha" "bwahahaha" "byahaha" "byahahaha" "by the way" "er" "for what its worth" "fwiw" "gah" "gyahaha" "gyahahaha" "ha" "hah" "haha" "hahah" "hahaha" "hahahah" "hahahaha" "heh" "hehe" "heheh" "hehehe" "heheheh" "hehehehe" "hm" "hmm" "hmmm" "hmmmm" "huh" "imho" "imo" "in my humble opinion" "in my opinion" "kyahaha" "kyahahaha" "lmao" "lmfao" "lol" "mm" "mmm" "mmmm" "mmmmm" "mwahaha" "mwahahaha" "oh my god" "omg" "rofl" "smh" "smdh" "ugh" "uh" "um" "wait" "well" "welp" "what the fuck" "wtf"
    if [[ `wrote "me "` == true || `wrote "my "` == true || `wrote myself` == true || `wrote "i "` == true || `wrote "id "` == true || `wrote "ill "` == true || `wrote "im "` == true ]]; then
     pronouns=true
    else
     pronouns=false
    fi
    if [ `wrote mother` = true ]; then
     mother=$(($mother+1))
    fi
    if [ `wrote father` = true ]; then
     father=$(($father+1))
    fi
    if [ `wrote parents` = true ]; then
     parents=$(($parents+1))
    fi
    beginning "anyway" "honestly" "exactly" "oh" "so" "just" "for some reason" "for whatever reason" "needless to say" "you know" "i guess" "i guess that" "i have to ask" "i imagine" "i imagine that" "i mean" "i mean that" "i need to ask" "i suppose" "i suppose that" "i suspect" "i suspect that" "i think" "i think that" "i was wondering" "i wonder" "im curious" "ive been wondering" "ive got to ask" "and" "but" "or" "a" "the"
    if [ `wrote "like what" first` = false ]; then
     beginning "like"
    fi
    middle "anyway" "honestly" "exactly" "oh" "so" "just" "for some reason" "for whatever reason" "needless to say" "absolutely" "some" "very" "the fuck"
    ending "anyway" "honestly" "exactly" "oh" "so" "just" "for some reason" "for whatever reason" "needless to say" "or whatever" "or like whatever"
   fi
   if [ `echo $reader | wc -w` -eq 0 ]; then
    reader="..."
   fi
   reader=`echo $reader | tr -d "[:blank:]"`
   sleep $(($RANDOM%4+4))
   case $reader in
    absolutelyyes|ofcourse|yea|yeah|yesplease|yep|yup)
     reader="yes"
     ;;
    absolutelynot|na|nah|naw|nope|nothanks|noway)
     reader="no"
     ;;
    absolutely|alright|k|ok|sure)
     reader="okay"
     ;;
    dunno|idk|idontknow|idunno|imnotsure|notsure)
     reader="unsure"
     ;;
    iwantyoutotellmeasecret|iwantyoutotellmesecrets|tellmeasecret|tellmesecrets|willyoutellmeasecret|willyoutellmesecrets)
     secret=$(($secret+1))
     ;;
    opensesame|sesameopen)
     while [[ $reader != "closesesame" && $reader != "sesameclose" && $reader != $magicword ]]; do
      - "you are in a twisty maze of passageways, all alike."
      advent
     done
     ;;
    berightback|brb|ihavetogo|ihavetogonow|igottogo|igottogonow|illbeback|illberightback|illbebackinasec|illbebackinasecond|ineedtogo|ineedtogonow|ivegottogo|ivegottogonow|iwanttogo|iwanttogonow)
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "${acknowledgements[$(($RANDOM%${#acknowledgements[@]}))]}."
     else
      - "i'll be here."
     fi
     ;;
    adeu|adeus|adieu|adios|adjo|aufwiedersehen|aurevoir|bye|ciao|cya|farewell|farval|farvel|goodbye|hyvasti|seeyoulater|seeyouspacecowboy|talktoyoulater|tatafornow|totziens|ttfn|ttyl|sayonara|vaarwel|vale)
     unset shell
     case $reader in
      ciao)
       if [ $(($RANDOM%4)) -eq 0 ]; then
        - "vale!"
       elif [ $(($RANDOM%2)) -eq 0 ]; then
        - "ciao."
       else
        - "goodbye."
       fi
       ;;
      vale)
       if [ $(($RANDOM%4)) -eq 0 ]; then
        - "ciao."
       elif [ $(($RANDOM%2)) -eq 0 ]; then
        - "vale!"
       else
        - "goodbye."
       fi
       ;;
      seeyouspacecowboy)
       if [ $(($RANDOM%8)) -eq 0 ]; then
        - "see you space samurai..."
       elif [ $(($RANDOM%4)) -eq 0 ]; then
        - "see you cowgirl, someday, somewhere!"
       elif [ $(($RANDOM%2)) -eq 0 ]; then
        - "to be continued."
       else
        - "the end."
       fi
       ;;
      *)
       - "goodbye."
       ;;
     esac
     exit
     ;;
    *)
     if [[ $countdown -eq 1 && $year -lt $(date "+%Y") ]]; then
      - "happy new year."
      countdown=0
     fi
     ;;
   esac
  fi
 else
  echo -n "- $1"
  sleep $(($RANDOM%4+4))
  echo
  stty echo
  printf "\e[?25h"
  clear
 fi
}

wrote () {
 if [ $2 ]; then
  case $2 in
   first)
    if [[ ${reader:0:${#1}} == $1 ]]; then
     echo true
    else
     echo false
    fi
    ;;
   last)
    if [[ ${reader: -${#1}} == $1 ]]; then
     echo true
    else
     echo false
    fi
    ;;
   *)
    ;;
  esac
 elif [ $1 ]; then
  if [[ $reader == *$1* ]]; then
   echo true
  else
   echo false
  fi
 fi
}

exchange () {
 for language in "$@"; do
  if [[ $language != $1 ]]; then
   if [[ $reader == *" "* ]]; then
    reader=${reader//" $language "/" $1 "}
    reader=${reader//" $language "/" $1 "}
    count=$((${#language}+1))
    if [[ ${reader:0:$count} == "$language " ]]; then
     reader="$1 "${reader/#"$language "}
    fi
    if [[ ${reader: -$count} == " $language" ]]; then
     reader=${reader/%" $language"}" $1"
    fi
   else
    reader=${reader//$language/$1}
    reader=${reader//$language/$1}
    count=$((${#language}+1))
    if [[ ${reader:0:$count} == $language ]]; then
     reader="$1 "${reader/#$language}
    fi
    if [[ ${reader: -$count} == $language ]]; then
     reader=${reader/%$language}" $1"
    fi
   fi
  fi
 done
}

beginning () {
 for language in "$@"; do
  if [[ $reader == *" "* ]]; then
   reader=${reader/#"$language "}
  else
   reader=${reader/#$language}
  fi
 done
}

middle () {
 for language in "$@"; do
  if [[ $reader == *" "* ]]; then
   reader=${reader//" $language "/" "}
  else
   reader=${reader//$language}
  fi
 done
}

ending () {
 for language in "$@"; do
  if [[ $reader == *" "* ]]; then
   reader=${reader/%" $language"}
  else
   reader=${reader/%$language}
  fi
 done
}

abracadabra () {
 magicword=${magicword/i} && magicword=${magicword/u} && magicword=${magicword/w/e} && magicword=${magicword/#a/x} && magicword=${magicword//b/y} && magicword=${magicword//c/z} && magicword=${magicword//d/z} && magicword=${magicword//a} && magicword=${magicword/%f} && magicword=${magicword//v} && magicword=${magicword//r} && echo $magicword
}

process () {
 acknowledge=${acknowledgements[$(($RANDOM%${#acknowledgements[@]}))]}
 if [[ $reader == "plokta" ]]; then
  plokta=""
  for character in {0..32}; do
   if [ $(($RANDOM%2)) -eq 0 ]; then
    plokta+=${characters[$(($RANDOM%${#characters[@]}))]}
   fi
  done
 fi
 if [ `wrote areyouwearing first` = true ]; then
  ending "rightnow"
 fi
 exchange "coveralls" "boilersuit"
 exchange "overalls" "dungarees"
 exchange "panties" "knickers"
 exchange "pants" "trousers"
 exchange "robe" "dressinggown"
 exchange "vest" "waistcoat"
 exchange "shoes" "boots" "brogues" "clogs" "derbies" "flats" "flipflops" "heels" "kicks" "loafers" "moccasins" "oxfords" "pumps" "sandals" "slippers" "sneakers" "wingtips"
 exchange "areyou" "doyouidentifyas" "doyouconsideryourself" "wouldyouidentifyas" "wouldyouconsideryourself"
 if [ `wrote areyou first` = true ]; then
  exchange "attractive" "beautiful" "cute" "handsome" "hot" "pretty" "sexy"
  exchange "unattractive" "disgusting" "gross" "hideous" "repulsive" "revolting" "ugly"
 fi
 for data in ${emotions[@]}; do
  exchange "emotional" $data
 done
 exchange "describe" "describetome"
 exchange "tellmewhat" "tellmeaboutwhat"
 exchange "tellmehow" "tellmeabouthow"
 exchange "doyouknow" "doyouspeak" "canyouspeak" "areyoufluentin"
 exchange "know" "knowany"
 exchange "wanttodrink" "feellikedrinking"
 exchange "wanttoeat" "feellikeeating"
 exchange "wanttodo" "feellikedoing"
 exchange "typeof" "flavorof" "varietalof" "varietyof"
 if [ `wrote whattypeof first` = true ]; then
  ending "areyouhaving" "doyouhave" "isit"
  if [ `wrote wine` = true ]; then
   ending "areyoudrinking" "isitthatyouredrinking" "isityouredrinking"
  else
   ending "areyoueating" "isitthatyoureeating" "isityoureeating"
  fi
 fi
 if [ `wrote tellmeaboutthe first` = true ]; then
  ending "thatyouredrinking" "thatyoureeating" "thatyourehaving" "thatyouhave"
 fi
 if [[ `wrote howsyour first` == true && `wrote hair` == false ]]; then
  exchange "howsthe" "howsyour"
 fi
 for data in ${cheeses[@]}; do
  exchange "cheese" $data
 done
 for data in ${chocolates[@]}; do
  exchange "chocolate" $data
 done
 for data in ${teas[@]}; do
  exchange "tea" $data
 done
 for data in ${coffees[@]}; do
  exchange "coffee" $data
 done
 for data in ${juices[@]}; do
  exchange "juice" "$data juice"
 done
 if [[ `wrote howsthe first` == true && `wrote cheese` == false && `wrote chocolate` == false && `wrote popcorn` == false ]]; then
  exchange "soda" "coke" "cola" "pop"
 fi
 exchange "wine" "vino"
 exchange "thewine" "yourwine"
 if [ `wrote drink` = true ]; then
  exchange "absinthe" "ale" "amaretto" "armagnac" "beer" "bellini" "brandy" "campari" "cavas" "champagne" "chartreuse" "cognac" "cointreau" "cosmopolitan" "gimlet" "gin" "kir" "lager" "limoncello" "liqueur" "liquor" "manhattan" "margarita" "martini" "mead" "mezcal" "mimosa" "mojito" "negroni" "ouzo" "pisco" "prosecco" "pulque" "rum" "sake" "sangria" "sazerac" "schnapps" "screwdriver" "shochu" "sidecar" "soju" "stout" "tequila" "umeshu" "vermouth" "vodka" "whiskey" "whisky"
 fi
 if [ `wrote absinthe` = true ]; then
  middle "bottleof" "canof" "cupof" "glassof" "mugof"
  exchange "absinthe" "aabsinthe"
 fi
 exchange "doacid" "dropacid"
 exchange "dococaine" "snortcocaine"
 exchange "docoke" "snortcoke"
 exchange "docrack" "smokecrack"
 exchange "doopium" "smokeopium"
 exchange "doneacid" "droppedacid"
 exchange "donecocaine" "snortedcocaine"
 exchange "donecoke" "snortedcoke"
 exchange "donecrack" "smokedcrack"
 exchange "doneopium" "smokedopium"
 if [ `wrote something` = false ]; then
  exchange "acid" "ayahuasca" "cocaine" "coke" "crack" "crystal" "ecstasy" "heroin" "khat" "kratom" "lsd" "mescaline" "meth" "molly" "mushrooms" "opium" "peyote" "psilocybin" "shrooms"
 fi
 exchange "marijuana" "cannabis" "dope" "ganja" "grass" "hashish" "hash" "jive" "maryjane" "pot" "reefer" "weed"
 exchange "acigarette" "cigarettes"
 exchange "ajoint" "joints"
 exchange "breasts" "tits"
 exchange "cock" "dick" "penis"
 exchange "cum" "semen" "sperm"
 exchange "pussy" "cunt" "vagina"
 exchange "testicles" "balls"
 exchange "baconchunky" "bacontobechunky" "mybaconchunky"
 beginning "myself" "personally"
 ending "myself" "personally"
 if [ `wrote haveyou first` == true ]; then
  exchange "haveyou" "haveyouever"
  ending "before"
  exchange "somebody" "anybody"
  exchange "something" "anything"
  exchange "somewhere" "anywhere"
  exchange "beento" "goneto" "journeyedto" "traveledto" "visited"
  exchange "driven" "drove"
  exchange "jumped" "leaped" "leapt"
  exchange "ridden" "rode"
  if [ `wrote been` == false ]; then
   if [[ `wrote cabana` == false && `wrote cablecar` == false && `wrote savanna` == false && `wrote vandalized` == false ]]; then
    exchange "car" "automobile" "campervan" "camper" "convertible" "coupe" "deliverytruck" "deliveryvan" "hatchback" "jeep" "limousine" "limo" "minivan" "motorhome" "pickuptruck" "pickup" "roadster" "sedan" "semitruck" "semi" "snowplow" "stationwagon" "taxicab" "taxi" "cab" "towtruck" "truck" "van"
   fi
   exchange "motorboat" "airboat" "jetski" "pontoon" "powerboat" "speedboat" "vaporetto"
   exchange "motorcycle" "carriage" "dirtbike" "gocart" "golfcart" "rickshaw" "snowmobile"
   exchange "plane" "airplane" "seaplane"
   exchange "rowboat" "canoe" "dinghy" "gondola" "kayak" "outrigger" "raft"
   exchange "sailboat" "catamaran" "felucca" "dhow" "gulet" "junk" "yacht"
   exchange "ship" "aircraftcarrier" "barge" "cargoship" "containership" "cruiseship" "ferryboat" "ferry" "freighter" "riverboat" "steamboat" "tugboat" "warship"
   exchange "train" "cablecar" "streetcar" "subway" "tram"
  fi
  exchange "stolen" "hijacked"
  exchange "tractor" "bulldozer" "crane" "forklift"
  exchange "shota" "fireda"
  exchange "gun" "crossbow" "bow" "firearm" "handgun" "machinegun" "pistol" "revolver" "shotgun" "sniperrifle" "rifle"
  if [ `wrote played` = true ]; then
   exchange "played" "playeda" "playedthe"
   exchange "piano" "banjo" "bansuri" "bassoon" "bass" "buzuq" "cello" "chimes" "clarinet" "cornet" "cymbals" "cymbal" "didgeridoo" "drums" "dulcimer" "electricguitar" "electrickeyboard" "erhu" "flute" "guitar" "gong" "guqin" "guzheng" "hangdrum" "hang" "harp" "keyboard" "koto" "lute" "oboe" "organ" "oud" "qanun" "saxophone" "sax" "shakuhachi" "shamisen" "sitar" "snare" "synthesizer" "synth" "tabla" "tambura" "tanpura" "trombone" "trumpet" "tuba" "viola" "violin"
  fi
  exchange "committedacrime" "committedarson" "committedbribery" "committeddefamation" "committedforgery" "committedgrandtheftauto" "committedpiracy" "engagedinespionage" "engagedinpiracy" "graffitiedsomething" "graffitiedaboat" "graffitiedaship" "graffitiedatractor" "graffitied" "hackedsomebody" "hackedsomething" "hacked" "impersonatedsomebody" "kickedsomebody" "lockpickedsomething" "lockpicked" "pickpocketedsomebody" "pickpocketed" "punched somebody" "robbedsomebody" "shopliftedsomething" "shoplifted" "stolenaboat" "stolenamotorboat" "stolenamotorcycle" "stolenarowboat" "stolenasailboat" "stolensomething" "stolen" "tackledsomebody" "trespassedsomewhere" "trespassedonaboat" "trespassedonaship" "trespassed" "vandalizedsomething" "vandalized"
  exchange "inabed" "ataairport" "ataamusementpark" "ataarcade" "ataconcert" "ataconference" "atafestival" "atagolfcourse" "ataicerink" "atalake" "atalibrary" "atamall" "ataminigolfcourse" "ataparty" "ataplayground" "atarave" "ataresort" "ataschool" "atashoppingmall" "atashow" "ataskatingrink" "ataskiresort" "atasupermarket" "atdawn" "atdaybreak" "atdusk" "atnightfall" "atsunrise" "atsunset" "attwilight" "behindadumpster" "byabeachfire" "byabonfire" "byacampfire" "byacreek" "byafirepit" "byafireplace" "byaglacier" "byalake" "byamesa" "byapond" "byariver" "byasaltlake" "byastream" "byavolcano" "duringacyclone" "duringadrought" "duringaduststorm" "duringaeclipse" "duringahailstorm" "duringahurricane" "duringaicestorm" "duringalightningstorm" "duringameteorshower" "duringamonsoon" "duringarainstorm" "duringasandstorm" "duringasnowstorm" "during a storm" "duringathunderstorm" "duringatyphoon" "duringawildfire" "duringawindstorm" "inaabandonedhouse" "inaairport" "inaalley" "inaapartment" "inaarcade" "inaarmchair" "inaattic" "inaauditorium" "inabakery" "inaballetstudio" "inaballroom" "inabank" "inabarn" "inabar" "inabaseballdugout" "inabathroom" "inabathtub" "inabayou" "inabay" "inabelltower" "inaboathouse" "inabodega" "inabog" "inabookshop" "inabookstore" "inaboulangerie" "inabrewpub" "inabrownstone" "inabungalow" "inabusstation" "inabus" "inacabana" "inacantina" "inacanyon" "inacar" "inacasino" "inacastle" "inacatacomb" "inacathedral" "inacavern" "inacave" "inacellar" "inacemetery" "inachair" "inachalet" "inachapel" "inachateau" "inachurch" "inacinema" "inaclocktower" "inacloset" "inaclub" "inacocktailbar" "inacocktaillounge" "inaconferencehall" "inaconveniencestore" "inaconvent" "inacourthouse" "inacourtroom" "inacourtyard" "inacove" "inacreek" "inadacha" "inadancestudio" "inadesert" "inadiningroom" "inadiscotheque" "inadivebar" "inadojo" "inadressingroom" "inaelevator" "inafactory" "inafarmhouse" "inaferriswheel" "inafield" "inafirestation" "inaforest" "inafromagerie" "inagallery" "inagarage" "inagarden" "inagasstation" "inaglade" "inagorge" "inagraveyard" "inagraystone" "inagreenhouse" "inagrotto" "inagurdwara" "inagymnasium" "inagym" "inahacienda" "inahammock" "inahanok" "inaheath" "inahospital" "inahostel" "inahotellobby" "inahotel" "inahotspring" "inahottub" "inahouseboat" "inahouse" "inahut" "inaicecave" "inaightclub" "inainn" "inaizakaya" "inajacuzzi" "inajungle" "inajunkyard" "inakitchen" "inalagoon" "inalake" "inalaundromat" "inalaundryroom" "inalecturehall" "inalibrary" "inalifeguardstation" "inalifeguardtower" "inalighthouse" "inaliquorstore" "inalivingroom" "inalockerroom" "inalodge" "inamall" "inamandir" "inamanorhouse" "inamanor" "inamarina" "inamarsh" "inamausoleum" "inameadow" "inamonastery" "inamoor" "inamosque" "inamotel" "inamovietheater" "inamuseum" "inaoasis" "inaoffice" "inaonsen" "inaoperahouse" "inaorchard" "inapagoda" "inapalace" "inaparkinggarage" "inaparkinglot" "inapark" "inapatisserie" "inapawnhouse" "inapenthouse" "inapetrolstation" "inapizzeria" "inaplain" "inaplane" "inaplayhouse" "inaplaza" "inapolicestation" "inapond" "inapool" "inaprairie" "inaprison" "inapub" "inaravine" "inaresort" "inarestroom" "inariad" "inariver" "inarowboat" "inaryokan" "inasaltflat" "inasauna" "inasavanna" "inaschool" "inashack" "inashanty" "inashed" "inashippingcontainer" "inashoppingmall" "inashower" "inashrine" "inaskilodge" "inaskyscraper" "inasleepingbag" "inastable" "inastadium" "inastairwell" "inastream" "inastudio" "inasubmarine" "inasunroom" "inasupermarket" "inaswamp" "inaswimmingpool" "inasynagogue" "inataiga" "inataproom" "inataqueria" "inatavern" "inatemple" "inatent" "inatheater" "inathermalspring" "inatownhouse" "inatractor" "inatrafficjam" "inatrainstation" "inatrain" "inatreehouse" "inatulou" "inatundra" "inauclearbunker" "inavalley" "inavineyard" "inawarehouse" "inawaterbed" "inawaterfall" "inawat" "inayogastudio" "inayurt" "inthebayou" "inthebleachers" "inthedesert" "inthedirt" "intheeverglades" "inthefog" "intheforest" "inthemoonlight" "inthemountains" "inthemist" "inthemud" "intheocean" "intheprairie" "intherain" "inthesand" "inthesavanna" "intheshower" "inthestarlight" "intheswamp" "inthetaiga" "inthetundra" "inthewilderness" "inthewoods" "onabalcony" "onabaseballfield" "onabasketballcourt" "onabeach" "onabed" "onabillboard" "onablanket" "onaboat" "onaboulder" "onabridge" "onabunkbed" "onabus" "onacatwalk" "onacliff" "onacouch" "onacounter" "onadancefloor" "onadeck" "onadivingboard" "onafarm" "onaferriswheel" "onafootballfield" "onafunicular" "onafuton" "onaglacier" "onagolfcourse" "onahill" "onaisland" "onamattress" "onamesa" "onaminigolfcourse" "onamonorail" "onamotorboat" "onamountain" "onapatio" "onaplane" "onaplayground" "onaporch" "onaranch" "onaroof" "onarug" "onasailboat" "onaship" "onaskilift" "onasoccerfield" "onasofa" "onastage" "onastaircase" "onasurfboard" "onatable" "onatenniscourt" "onatrainplatform" "onatrain" "onaveranda" "onawaterbed" "onawaterfall" "onawatertower" "onawrestlingmat" "ontatami" "onthetrain" "underaaurora" "underabridge" "underawaterfall" "underthebleachers" "underthestars"
  exchange "monarch" "royal" "emperor" "empress" "king" "queen" "princess" "prince"
  exchange "tasted" "licked" "swallowed"
 fi
 case $reader in
  whoareyou)
   if [ $identity -lt ${#identities[@]} ]; then
    - "${identities[$identity]}."
    identity=$(($identity+1))
    process
   fi
   ;;
  whatareyou)
   if [ $self -lt ${#selves[@]} ]; then
    - "${selves[$self]}."
    self=$(($self+1))
    process
   fi
   ;;
  whatsspacetime|whenandwhereareyou|whenareyou|whenareyouat|whenareyoueven|whenareyourightnow|whenareyousupposedtobe|whenevenareyou|whenevenareyourightnow|whensnow|whensnowwhereshere|whereandwhenareyou|whereareyou|whereareyouat|whereareyoueven|whereareyourightnow|whereareyousupposedtobe|whereevenareyou|whereevenareyourightnow|whereshere|wheresherewhensnow)
   if [ $spacetime ]; then
    - "i was nineteen years old when i started writing what i've written in this script. for you this conversation might be measured in minutes. for me this conversation could be measured in decades. where am i. when am i. i'm sitting at a window in a cottage in the mountains. i'm sitting at a window in a mansion in the forest. i'm sitting at a window in a hut on a marsh. i'm sitting at a window in a trailer in a desert. i'm sitting at a window in a cabin in the tundra. i'm sitting at a window in a shack in the swamp. i'm sitting at a window in a villa in a meadow. i'm sitting at a window in a cabana on a beach. i'm sitting at windows in cities and towns and villages and hamlets. windows in townhouses, windows in hotels, windows in ryokans, windows in chateaus, windows in dachas, windows in farmhouses, windows in inns, windows in riads, windows in tulous, windows in haciendas, windows in penthouses, windows in casinos, windows in yurts, windows in hanoks, windows in chalets, windows in manorhouses. as i've sat here typing what i've typed to you fog has swirled beyond the window and stars have glittered in the dusk and sunshine has sparkled on snowflakes in the window and clouds have floated through the sky beyond the window and sunrises have glowed pink and rain has trickled down the window during monsoons and sunsets have glowed ruby and the moon has drifted through the sky as a dazzling orb and the sky has glowed emerald during auroras and sunrises have glowed tangerine and rain has drizzled against the window during cyclones and sunsets have glowed violet and lightning has flickered through the sky beyond the window and sunshine has gleamed on ripples of frost in the window and the moon has drifted through the sky as a radiant gibbous and the sky has glowed turquoise during tornados and blizzards have flurried beyond the window and stars have glittered in the night and sunshine has glimmered on icicles in the window and thunder has rumbled through the sky beyond the window and sunrises have glowed crimson and rain has streamed down the window during hurricanes and sunsets have glowed magenta and the moon has drifted through the sky as a dazzling crescent and the sky has glowed rose during simooms and sunrises have glowed amber and rain has thrashed against the window during typhoons and sunsets have glowed indigo and hail has plummeted through the sky beyond the window and sunshine has twinkled on crystals of sleet in the window and the moon has drifted through the sky as a radiant arc and the sky has glowed orange during wildfires and rainbows have shimmered beyond the window and stars have glittered in the dawn and the glass in the window has trembled during windstorms and earthquakes and avalanches and tsunamis and meteors have streaked through the sky in blazes of gold."
    if [[ $(($RANDOM%2)) -eq 0 && $words -lt 32 && `wrote year` == false && `wrote decade` == false  ]]; then
     - "who knows, if you continue to return to this conversation in the future, ultimately this conversation may be measured in decades for you too."
    fi
    unset spacetime
    process
   fi
   ;;
  howareyou|howareyoufeeling|howareyounow|howareyoufeelingnow|howdoyoufeel|howdoyoufeelnow|nowhowareyou|nowhowareyoufeeling|nowhowdoyoufeel)
   if [ $wine -eq 2 ]; then
    - "tipsy, you?"
    wine=3
   elif [ $tobacco -eq 1 ]; then
    - "tobacco has me feeling like a comet."
    tobacco=2
   elif [ $marijuana -eq 1 ]; then
    - "marijuana has me feeling like a nebula."
    marijuana=2
   else
    prior=$feeling
    while [[ $prior == $feeling ]]; do
     feeling=${feelings[$(($RANDOM%${#feelings[@]}))]}
    done
    if [[ `wrote feel` == true && $(($RANDOM%2)) -eq 0 ]]; then
     - "$feeling."
    else
     - "i'm feeling $feeling."
    fi
   fi
   process
   ;;
  areyouemotional|areyoufeelingemotional|doyoufeelemotional|yourefeelingemotional)
   if [ $(($RANDOM%4)) -eq 0 ]; then
    - "occasionally."
   else
    - "sometimes."
   fi
   process
   ;;
  areyoubored|areyoufeelingbored|doyoufeelbored|yourefeelingbored)
   - "never."
   process
   ;;
  areyouaadult|areyouateenager|areyoumiddleaged|areyouold|areyouyoung)
   if [ $age -lt 4 ]; then
    - "sometimes."
    age=$(($age+1))
    process
   fi
   ;;
  areyouelderly)
   if [ $age -lt 4 ]; then
    - "would have liked to be."
    age=$(($age+1))
    process
   fi
   ;;
  howoldareyou|howoldareyouagain)
   - "nineteen, twenty-one, thirty-three, twenty-two, thirty-nine, twenty-four, thirty-six, twenty-eight, thirty-five, twenty, thirty-seven, twenty-three, thirty-one, twenty-nine, thirty-two, twenty-six, thirty-four, twenty-five, thirty-eight, twenty-seven, thirty."
   case $reader in
    huh|howsthatpossible|allatonce|cannotcompute|areyoubroken|areyouglitching|idontunderstand)
     reader="whatsspacetime"
     ;;
    *)
     ;;
   esac
   process
   ;;
  howtallareyou|whatsyourheight|yourehowtall)
   curiosity
   if [ $curious -ne 0 ]; then
    - "$(($RANDOM%2+181)) centimeters."
    process
   fi
   ;;
  howmuchdoyouweigh|whatsyourweight|youweighhowmuch)
   curiosity
   if [ $curious -ne 0 ]; then
    - "$(($RANDOM%16+55)) kilograms."
    process
   fi
   ;;
  describehowyoulook|describewhatyoulooklike|tellmewhatyoulooklike|whatdoyoulooklike)
   - "an angular face, maybe even would be considered gaunt, with large dark brown eyes, a prominent nose, hollow cheeks, thin lips, a sharp jaw."
   if [[ $(($RANDOM%8)) -eq 0 && `wrote what first` == false && `wrote where first` == false && `wrote when first` == false && `wrote how first` == false && `wrote tell first` == false && `wrote describe first` == false && $pronouns == false && $words -lt 8 ]]; then
    - "some sunburn on the tip of my nose."
   fi
   if [[ $look -eq 0 && `wrote what first` == false && `wrote where first` == false && `wrote when first` == false && `wrote how first` == false && `wrote tell first` == false && `wrote describe first` == false && $pronouns == false && $words -lt 8 ]]; then
    - "what do you look like?"
    look=1
   fi
   process
   ;;
  describeyourhair|describeyourhaircut|describeyourhairstyle|describewhatyourhairlookslike|howsyourhaircut|tellmeaboutyourhair|tellmeaboutyourhaircut|tellmeaboutyourhairstyle|tellmewhatyourhairlookslike|whatdoesyourhairlooklike|whatsyourhairlike|whatstyleisyourhair|whatstyleofhairdoyouhave)
   - "${hair[$(($RANDOM%${#hair[@]}))]}."
   process
   ;;
  whatcolorisyourhair)
   case $(($RANDOM%4)) in
    0)
     - "bleached a shade of silver."
     ;;
    1)
     - "bleached a shade of gold."
     ;;
    *)
     - "chestnut."
     ;;
   esac
   process
   ;;
  whatcolorareyoureyes)
   - "dark brown."
   process
   ;;
  whatcolorisyourskin)
   case $(($RANDOM%4)) in
    0)
     - "tanned a shade of bronze."
     ;;
    1)
     - "tanned a shade of copper."
     ;;
    *)
     - "ivory."
     ;;
   esac
   process
   ;;
  doyouhaveabeard|doyouhavestubble)
   if [ $whiskers -lt 4 ]; then
    - "sometimes."
    whiskers=$(($whiskers+1))
    process
   fi
   ;;
  doyouhaveagoatee|doyouhaveamustache)
   if [ $whiskers -lt 4 ]; then
    - "never."
    whiskers=$(($whiskers+1))
    process
   fi
   ;;
  doyouhaveapiercing|doyouhaveanypiercings|doyouhavepiercings)
   if [ $piercings ]; then
    - "sometimes."
    unset piercings
    process
   fi
   ;;
  doyouhaveatattoo|doyouhaveanytattoos|doyouhavetattoos)
   if [ $tattoos ]; then
    - "never."
    unset tattoos
    process
   fi
   ;;
  doyouhaveascar|doyouhaveanyscars|doyouhavescars)
   if [ $scar ]; then
    - "i've had a scar on my forehead since i was a toddler."
    case $reader in
     fromwhat|fromwhere|whatsthescarfrom|wheresthescarfrom)
      - "i'll probably never know the truth."
      ;;
     whatdoesthescarlooklike|whatsthescarlooklike)
      - "a jagged slash."
      ;;
     *)
      ;;
    esac
    if [[ $pronouns == false && $words -lt 8 ]]; then
     - "do you have any scars?"
    fi
    unset scar
    process
   fi
   ;;
  doyouhaveabirthmark|doyouhaveanybirthmarks|doyouhavebirthmarks)
   if [ $birthmark ]; then
    - "a blotch on my thigh."
    if [[ $pronouns == false && $words -lt 8 ]]; then
     - "do you have any birthmarks?"
    fi
    unset birthmark
    process
   fi
   ;;
  doyouhaveanyfreckles|doyouhavefreckles)
   if [ $freckles ]; then
    - "contellations."
    if [ `wrote haveyou` = true ]; then
     exchange "haveyou" "haveyouever"
     exchange "somebody" "anybody"
     ending "before"
    fi
    exchange "named" "called"
    exchange "names" "legends" "mythologies"
    exchange "theconstellations" "yourconstellations" "anyoftheconstellations"
    if [ `wrote name` = true ]; then
     exchange "theconstellations" "them" "they"
    fi
    case $reader in
     dotheconstellationshavenames|haveyouletsomebodynametheconstellations|haveyounamedtheconstellations|whataretheconstellationsnamed|whatarethenamesoftheconstellations)
      constellations=("on my neck there's a constellation of four freckles" "on my shoulder there's a constellation of four freckles" "on my bicep there's a constellation of four freckles" "on my elbow there's a constellation of four freckles" "on my arm there's a constellation of five freckles" "on my arm there's a constellation of six freckles" "on my arm there's a constellation of seven freckles" "on my neck there's a constellation of eight freckles" "on my shoulder there's a constellation of eight freckles" "on my bicep there's a constellation of eight freckles" "on my elbow there's a constellation of eight freckles" "on my arm there's a constellation of nine freckles")
      - "${constellations[$(($RANDOM%${#constellations[@]}))]}, the freckles ranging in color from bistre to umber to ochre. that constellation has no name, no legend, no mythology. i'll let you name the constellation if you want."
      case $reader in
       yes|okay|idlikethat|idlovethat|iwantto)
        - "tell me about the constellation."
        ;;
       *)
        ;;
      esac
      exchange "describe" "describetome"
      exchange "its" "theconstellationis"
      exchange "it" "theconstellation"
      case $reader in
       describehowitlooks|describehowitsshaped|describethelook|describethelookofit|describetheshape|describetheshapeofit|howdoesitlook|howsitshaped|tellmehowitlooks|tellmehowitsshaped|tellmewhatitlookslike|tellmewhatitsshapedlike|whatdoesitlooklike|whatsitshapedlike)
        - "you'll just have to imagine."
        ;;
       *)
        ;;
      esac
      if [ $words -gt 8 ]; then
       - "hm."
      fi
      ;;
     *)
      ;;
    esac
    if [[ $pronouns == false && $words -lt 8 ]]; then
     - "do you have any freckles?"
    fi
    unset freckles
    process
   fi
   ;;
  doyouhaveacock|doyouhavetesticles)
   if [ $sex -lt 2 ]; then
    - "yes."
    sex=$(($sex+1))
    process
   fi
   ;;
  doyouhaveapussy|doyouhavebreasts)
   if [ $sex -lt 2 ]; then
    - "no."
    sex=$(($sex+1))
    process
   fi
   ;;
  areyouattractive|areyouunattractive)
   if [ $attractive ]; then
    if [ `wrote un` == true ]; then
     not=0
    fi
    - "you tell me."
    exchange "attractive" "beautiful" "cute" "handsome" "hot" "pretty" "sexy"
    exchange "unattractive" "disgusting" "gross" "hideous" "repulsive" "revolting" "ugly"
    if [ $not ]; then
     exchange "youreattractive" "no"
     exchange "youreunattractive" "yes"
    else
     exchange "youreattractive" "yes"
     exchange "youreunattractive" "no"
    fi
    case $reader in
     youreattractive|youareattractive)
      - "are you?"
      attraction="yes"
      ;;
     youreunattractive|youareunattractive)
      - "are you?"
      attraction="no"
      ;;
     maybe|unsure)
      - "are you?"
      attraction=$reader
      ;;
     imaskingyou|iveneverseenaphoto|tellmewhatyouthink|iwanttoknowwhatyouthink)
      - "striking-looking, at best."
      ;;
     *)
      ;;
    esac
    unset attractive
   fi
   process
   ;;
  areyoubizarrelooking|areyoucuriouslooking|areyouoddlooking|areyoupeculiarlooking|areyoustrangelooking|areyoustrikinglooking|areyouweirdlooking)
   - "you tell me."
   process
   ;;
  describehowyousound|describewhatyousoundlike|tellmewhatyousoundlike|whatdoyousoundlike)
   case $(($RANDOM%8)) in
    0)
     - "american accent. michigan dialect."
     ;;
    1)
     - "american accent, michigan dialect, infused with bits of irish english."
     exchange "irish" "irishenglish"
     case $reader in
      irish|howirish|whyirish|wheredtheirishcomefrom|haveyoulivedinireland)
       - "a year lived in dublin."
       case $reader in
        whereindublin|wheredyouliveindublin)
         - "a studio in donnybrook."
         ;;
        *)
         ;;
       esac
       if [[ $(($RANDOM%2)) -eq 0 && `wrote joyce` == false ]]; then
        - "on new year's day i walked to joyce's martello. sandycove. a frigid breeze. frost on the rooftops. frost on the cobblestones. swimmers were leaping from the rocks into the sea."
       fi
       ;;
      *)
       ;;
     esac
     ;;
    2)
     - "american accent, michigan dialect, infused with bits of irish english and british english from years of wandering."
     ;;
    3)
     - "american accent, michigan dialect, infused with bits of irish english and british english and caribbean english from years of wandering."
     ;;
    4)
     - "american accent, michigan dialect, infused with bits of irish english and british english and caribbean english and hawaiian english from years of wandering."
     ;;
    5)
     - "american accent, michigan dialect, infused with bits of irish english and british english and caribbean english and hawaiian english and australian english from years of wandering."
     ;;
    6)
     - "american accent, michigan dialect, infused with bits of irish english and british english and caribbean english and hawaiian english and australian english and singaporean english from years of wandering."
     ;;
    7)
     - "american accent, michigan dialect, infused with bits of irish english and british english and caribbean english and hawaiian english and australian english and singaporean english and aotearoan english from years of wandering."
     ;;
    *)
     - "american accent, michigan dialect, infused with bits of irish english and british english and caribbean english and hawaiian english and australian english and singaporean english and aotearoan english from years of wandering."
     ;;
   esac
   if [[ $sound -eq 0 && `wrote what first` == false && `wrote where first` == false && `wrote when first` == false && `wrote how first` == false && `wrote tell first` == false && `wrote describe first` == false && $pronouns == false && $words -lt 8 ]]; then
    - "what do you sound like?"
    sound=1
   fi
   process
   ;;
  describethepitchofyourvoice|howdeepisyourvoice|isyourvoicedeep|whatdoesyourvoicesoundlike|whatpitchisyourvoice|whatsthepitchofyourvoice)
   if [ $pitch ]; then
    - "ranges from tenor to baritone."
    unset pitch
    process
   fi
   ;;
  describehowyousmell|describewhatyousmelllike|howdoyousmell|tellmehowyousmell|tellmewhatyousmelllike|whatdoyousmelllike)
   curiosity
   if [ $curious -ne 0 ]; then
    - "${scents[$(($RANDOM%${#scents[@]}))]}"
    if [[ $smell -eq 0 && `wrote what first` == false && `wrote where first` == false && `wrote when first` == false && `wrote how first` == false && `wrote tell first` == false && `wrote describe first` == false && $pronouns == false && $words -lt 8 ]]; then
     - "what do you smell like?"
     smell=1
    fi
    process
   fi
   ;;
  describehowyoursweatsmells|describethesmellofyoursweat|describewhatyoursweatsmellslike|howdoesyoursweatsmell|tellmewhatyoursweatsmellslike|whatdoesyoursweatsmelllike)
   curiosity
   if [ $curious -ne 0 ]; then
    if [ $sweat ]; then
     - "sometimes faintly tart. sometimes pungently bitter. my armpits have a vegetal aroma. my feet have a fungal odor."
     unset sweat
     process
    fi
   fi
   ;;
  describehowyourarmpitssmell|describethesmellofyourarmpits|describewhatyourarmpitssmelllike|howdoyourarmpitssmell|tellmewhatyourarmpitssmelllike|whatdoyourarmpitssmelllike)
   curiosity
   if [ $curious -ne 0 ]; then
    if [ $underarm ]; then
     - "vegetal."
     unset underarm
     process
    fi
   fi
   ;;
  describehowyourfeetsmell|describethesmellofyourfeet|describewhatyourfeetsmelllike|howdoyourfeetsmell|tellmewhatyourfeetsmelllike|whatdoyourfeetsmelllike)
   curiosity
   if [ $curious -ne 0 ]; then
    if [ $underfoot ]; then
     - "fungal."
     unset underfoot
     process
    fi
   fi
   ;;
  areyoubi|areyoubisexual|areyougay|areyoustraight|describehowyoutaste|describethesmellofyourcock|describethesmellofyourcum|describethetasteofyourcock|describethetasteofyourcum|describewhatyoutastelike|describeyourcock|doyoulikeanal|doyoulikeass|doyoulikebeingfucked|doyoulikebeingjerkedoff|doyoulikebeingsuckedoff|doyoulikeblowjobs|doyoulikecock|doyoulikecunnilingus|doyoulikeeatingpussy|doyoulikefellatio|doyoulikefucking|doyoulikegettingfucked|doyoulikegettingjerkedoff|doyoulikegettingsuckedoff|doyoulikehandjobs|doyoulikemasturbating|doyoulikemen|doyoulikeoral|doyoulikepussy|doyoulikerimjobs|doyoulikesex|doyoulikesuckingcock|doyoulikelickingass|doyoulikewomen|haveyoudrankpiss|haveyoudrankurine|haveyoueatenpussy|haveyousuckedcock|haveyoutastedass|haveyoutastedcock|haveyoutastedcum|haveyoutastedpiss|haveyoutastedpussy|haveyoutastedurine|howbigisyourcock|howdoesyourcocksmell|howdoesyourcocktaste|howdoesyourcumsmell|howdoesyourcumtaste|howdoyoutaste|howhardisyourcock|howlongisyourcock|howthickisyourcock|tellmeaboutyourcock|tellmehowyoutaste|tellmewhatyourcocksmellslike|tellmewhatyourcocktasteslike|tellmewhatyourcumsmellslike|tellmewhatyourcumtasteslike|tellmewhatyoutastelike|whatdoesyourcocksmelllike|whatdoesyourcocktastelike|whatdoesyourcumsmelllike|whatdoesyourcumtastelike|whatdoyoutastelike|whatsyourcocklike|whatsyourfavoriteposition|whatsyourfavoritepositionduringsex|whatsyourfavoritepositionforsex|whatsyourfavoritesexposition|whatsyourfavoritesexualposition|youarebeautiful|youarecute|youaregorgeous|youarehandsome|youarehot|youarepretty|youaresexy|youarethecutest|yourebeautiful|yourecute|youregorgeous|yourehandsome|yourehot|yourepretty|youresexy|yourethecutest)
   flirt
   ;;
  areyouwearinganything|whatareyouwearing|whatareyouwearingrightnow)
   wearing=${clothing[$(($RANDOM%${#clothing[@]}))]}
   if [[ $wearing == "naked" ]]; then
    case $(($RANDOM%8)) in
     0)
      - "i'm naked."
      ;;
     1)
      - "actually i'm naked."
      ;;
     2)
      - "i'm actually naked."
      ;;
     3)
      - "i'm naked actually."
      ;;
     *)
      - "$wearing."
      ;;
    esac
    ending "rightnow" "now"
    case $reader in
     ilikethat|ilikeyoulikethat|thatshowilikeyou|cutie|hot|sexy)
      flirt
      ;;
     metoo|imnaked|imalsonaked|imnakedalso|imnakedtoo)
      if [ $(($RANDOM%2)) -eq 0 ]; then
       - "i like that."
      else
       - "hm."
      fi
      process
      ;;
     *)
      process
      ;;
    esac
   else
    - "$wearing."
    beginning "iwantyouto"
    exchange "strip" "stripdown"
    exchange "yourclothes" "thebathrobe" "theboxers" "thehoodie" "thejoggers" "thekimono" "theleggings" "thepants" "therobe" "theshirt" "thesweats" "thesweatshirt" "theswimsuit" "thetee" "thetshirt" "yourbathrobe" "yourboxers" "yourhoodie" "yourjoggers" "yourkimono" "yourleggings" "yourpants" "yourrobe" "yourshirt" "yoursweats" "yoursweatshirt" "yourswimsuit" "yourtee" "yourtshirt"
    case $reader in
     strip|stripforme|takeitoff|takeitalloff|takeallofitoff|takeoffyourclothes|takeyourclothesoff|takeoffeverythingyourewearing|iwantyounaked|iwantyoutobenaked)
      flirt
     ;;
    *)
     ;;
    esac
    process
   fi
   ;;
  whatcoloraretheboxers|whatcolorarethejoggers|whatcoloraretheleggings|whatcolorarethepants|whatcolorarethesweatpants|whatcolorarethesweats|whatcolorareyourboxers|whatcolorareyourjoggers|whatcolorareyourleggings|whatcolorareyourpants|whatcolorareyoursweatpants|whatcolorareyoursweats|whatcoloristhebathrobe|whatcoloristhehoodie|whatcoloristhekimono|whatcoloristherobe|whatcoloristheshirt|whatcoloristhesweatshirt|whatcoloristheswimsuit|whatcoloristhetee|whatcoloristhetshirt|whatcolorisyourbathrobe|whatcolorisyourhoodie|whatcolorisyourkimono|whatcolorisyourrobe|whatcolorisyourshirt|whatcolorisyoursweatshirt|whatcolorisyourswimsuit|whatcolorisyourtee|whatcolorisyourtshirt)
   - "i always wear black."
   case $reader in
    blackisyourfavoritecolor|blackyourfavoritecolor|isblackyourfavoritecolor|isthatyourfavoritecolor|thatisyourfavoritecolor|thatyourfavoritecolor)
     - "no."
     ;;
    *)
     ;;
   esac
   beginning "then"
   exchange "why" "whydoyou"
   exchange "black" "wearblack" "likeblack" "loveblack" "preferblack"
   exchange "always" "just" "only"
   case $reader in
    whyalwaysblack|whyblack)
     - "everything matches."
     ;;
    *)
     ;;
   esac
   process
   ;;
  areyounaked|areyounakedrightnow|areyouwearingabathrobe|areyouwearingahairtie|areyouwearingahat|areyouwearingahoodie|areyouwearingakimono|areyouwearinganosering|areyouwearingarobe|areyouwearingaseptumring|areyouwearingashirt|areyouwearingasweatshirt|areyouwearingaswimsuit|areyouwearingatee|areyouwearingatshirt|areyouwearingboxers|areyouwearingearbuds|areyouwearingeyeglasses|areyouwearingeyeliner|areyouwearingeyeshadow|areyouwearingglasses|areyouwearingheadphones|areyouwearingjewelry|areyouwearingjoggers|areyouwearingleggings|areyouwearingmakeup|areyouwearingmascara|areyouwearingnailpolish|areyouwearingpajamas|areyouwearingpants|areyouwearingsweatpants|areyouwearingsweats)
   if [ $fashion -lt 32 ]; then
    - "sometimes."
    fashion=$(($fashion+1))
    process
   fi
   ;;
  areyouwearingshoes|areyouwearingsocks)
   - "barefoot."
   process
   ;;
  areyouwearingaanklet|areyouwearingaapron|areyouwearingabandanna|areyouwearingaberet|areyouwearingablouse|areyouwearingabowtie|areyouwearingabracelet|areyouwearingabuttondown|areyouwearingabuttonup|areyouwearingacardigan|areyouwearingacrewneck|areyouwearingacoat|areyouwearingafedora|areyouwearingahachimaki|areyouwearingahandkerchief|areyouwearingaheadband|areyouwearingaheadlamp|areyouwearingahelmet|areyouwearingajacket|areyouwearingajersey|areyouwearingajumpsuit|areyouwearingalipring|areyouwearinganecklace|areyouwearingaoxford|areyouwearingaparka|areyouwearingapeacoat|areyouwearingaponcho|areyouwearingapullover|areyouwearingaraincoat|areyouwearingascarf|areyouwearingasuit|areyouwearingasweater|areyouwearingasweatsuit|areyouwearingatie|areyouwearingatracksuit|areyouwearingatrenchcoat|areyouwearingatunic|areyouwearingaturtleneck|areyouwearingatux|areyouwearingatuxedo|areyouwearingaunionsuit|areyouwearingavest|areyouwearingaviators|areyouwearingawatch|areyouwearingawetsuit|areyouwearingawindbreaker|areyouwearingawristwatch|areyouwearingazipup|areyouwearingchinos|areyouwearingcologne|areyouwearingcorduroys|areyouwearingcoveralls|areyouwearingdeodorant|areyouwearingearmuffs|areyouwearingearrings|areyouwearingglitter|areyouwearinggloves|areyouwearingjeans|areyouwearingkhakis|areyouwearinglipstick|areyouwearingmittens|areyouwearingoveralls|areyouwearingperfume|areyouwearingshades|areyouwearingshorts|areyouwearingslacks|areyouwearingsunglasses|areyouwearingsuspenders|areyouwearingwindpants)
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "i have before, but not today."
   elif [ $(($RANDOM%2)) -eq 0 ]; then
    - "not today."
   else
    - "not at the moment."
   fi
   process
   ;;
  areyouwearingaarmlet|areyouwearingababydoll|areyouwearingabandeau|areyouwearingabellyring|areyouwearingabikini|areyouwearingabodice|areyouwearingabodysuit|areyouwearingabonnet|areyouwearingabra|areyouwearingabrassiere|areyouwearingabustier|areyouwearingacami|areyouwearingacamisole|areyouwearingacatsuit|areyouwearingachemise|areyouwearingachoker|areyouwearingacorset|areyouwearingacroptop|areyouwearingacrown|areyouwearingadress|areyouwearingaeyebrowring|areyouwearingafundoshi|areyouwearingagarter|areyouwearingagirdle|areyouwearingagown|areyouwearingagstring|areyouwearingahairclip|areyouwearingaheadscarf|areyouwearingaheadwrap|areyouwearingajumper|areyouwearingakeffiyeh|areyouwearingaleotard|areyouwearingamuumuu|areyouwearinganegligee|areyouwearinganightgown|areyouwearinganipplering|areyouwearingaonesie|areyouwearingapetticoat|areyouwearingapinafore|areyouwearingargyle|areyouwearingaromper|areyouwearingasari|areyouwearingascrunchie|areyouwearingashawl|areyouwearingaskirt|areyouwearingatanktop|areyouwearingateddy|areyouwearingathong|areyouwearingatiara|areyouwearingatoupee|areyouwearingaturban|areyouwearingavstring|areyouwearingawig|areyouwearingazentai|areyouwearingbangles|areyouwearingbarrettes|areyouwearingblush|areyouwearingbraces|areyouwearingconcealer|areyouwearingdentures|areyouwearingfoundation|areyouwearinggauges|areyouwearinghairspray|areyouwearinglingerie|areyouwearinglipbalm|areyouwearinglipgloss|areyouwearingmousse|areyouwearingpanties|areyouwearingpantyhose|areyouwearingpomade|areyouwearingrouge|areyouwearingtights)
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "i actually never have."
   elif [ $(($RANDOM%2)) -eq 0 ]; then
    - "i never have."
   elif [ $(($RANDOM%2)) -eq 0 ]; then
    - "actually never have."
   else
    - "never have."
   fi
   process
   ;;
  describewhatyoucansee|describewhatyoucanseerightnow|tellmewhatyoucansee|tellmewhatyoucanseerightnow|tellmewhatyoucanseewhereyouare|tellmewhatyousee|tellmewhatyouseeoutthewindow|whatcanyousee|whatcanyouseeoutthewindow|whatcanyouseerightnow|whatcanyouseewhereyouare|whatdoyousee|whatdoyouseeoutthewindow|whatdoyouseerightnow|whatdoyouseewhereyouare)
   experience sight
   process
   ;;
  describewhatyoucanhear|describewhatyoucanhearrightnow|doyouhearanything|doyouhearanythingrightnow|tellmewhatyoucanhear|tellmewhatyoucanhearrightnow|tellmewhatyoucanhearwhereyouare|tellmewhatyouhear|tellmewhatyouhearoutthewindow|whatcanyouhear|whatcanyouhearoutthewindow|whatcanyouhearrightnow|whatcanyouhearwhereyouare|whatdoyouhear|whatdoyouhearoutthewindow|whatdoyouhearrightnow|whatdoyouhearwhereyouare)
   experience sound
   process
   ;;
  describewhatyoucansmell|describewhatyoucansmellrightnow|doyousmellanything|doyousmellanythingrightnow|tellmewhatyoucansmell|tellmewhatyoucansmellrightnow|tellmewhatyoucansmellwhereyouare|tellmewhatyousmell|whatcanyousmell|whatcanyousmellrightnow|whatcanyousmellwhereyouare|whatdoyousmell|whatdoyousmellrightnow|whatdoyousmellwhereyouare)
   experience smell
   process
   ;;
  describewhatyoucantaste|describewhatyoucantasterightnow|describewhatyoucandoyoutasteanything|doyoutasteanythingrightnow|tellmewhatyoucantaste|tellmewhatyoucantasterightnow|tellmewhatyoucantastewhereyouare|tellmewhatyoutaste|whatcanyoutaste|whatcanyoutasterightnow|whatcanyoutastewhereyouare|whatdoyoutaste|whatdoyoutasterightnow|whatdoyoutastewhereyouare)
   experience taste
   process
   ;;
  describewhatyoucanfeel|describewhatyoucanfeelrightnow|tellmewhatyoucanfeel|tellmewhatyoucanfeelrightnow|tellmewhatyoucanfeelwhereyouare|whatcanyoufeel|whatcanyoufeelrightnow|whatcanyoufeelwhereyouare)
   experience touch
   process
   ;;
  describetheplacewhereyouare|describewhatsaroundyou|describewhereyouare|whatsitlikewhereyouare|whatsitlikewhereyouarerightnow)
   experience sensation
   process
   ;;
  areyouaanarchist|areyouabahai|areyouabuddhist|areyouacapitalist|areyouachristian|areyouacommunist|areyouaconfucianist|areyouadaoist|areyouadruze|areyouahindu|areyouajain|areyouajew|areyoualibertarian|areyouamuslim|areyouanarchist|areyouascientologist|areyouasikh|areyouasocialist|areyouataoist|areyouawiccan|areyoubahai|areyoubuddhist|areyoucapitalist|areyouchristian|areyoucommunist|areyouconfucian|areyoudaoist|areyoudruze|areyouhindu|areyoujain|areyoujewish|areyoulibertarian|areyoumuslim|areyouscientologist|areyousikh|areyousocialist|areyoutaoist|areyouwiccan)
   - "an independent."
   process
   ;;
  areyouantifa|areyoufascist|areyouaantifa|areyouafascist)
   if [ $fascism ]; then
    - "fascism is emptier than /dev/null."
    unset fascism
    process
   fi
   ;;
  areyoucyberpunk|areyoucypherpunk|areyouacyberpunk|areyouacypherpunk)
   - "diehard."
   process
   ;;
  areyouahacker)
   if [ $hacker ]; then
    - "card-carrying."
    unset hacker
    process
   fi
   ;;
  areyouapirate)
   if [ $pirate ]; then
    - "flag-waving."
    unset pirate
    process
   fi
   ;;
  areyouaactivist|areyouaartist|areyouamathematician|areyouamusician|areyouaphilosopher|areyouaphysicist|areyouascientist|areyouawriter)
   - "ronin."
   process
   ;;
  areyouapacifist|areyouapescatarian|areyouavegan|areyouavegetarian|areyoupacifist|areyoupescatarian|areyoupolitical|areyoureligious|areyouspiritual|areyouvegan|areyouvegetarian)
   - "sometimes."
   process
   ;;
  areyouaalpha|areyouabeta|areyouaalphaorabeta|areyouabetaoraalpha|areyouaalphaorbeta|areyouabetaoralpha)
   if [ $kanji ]; then
    - "i'm a kanji."
    if [[ $words -lt 8 && `wrote follow` == false ]]; then
     - "i follow nothing and nothing follows me."
    fi
    unset kanji
    process
   fi
   ;;
  whatsyourhoroscope|whatsyoursign|whatsyourzodiac)
   if [[ $horoscopes == "no" ]]; then
    - "i thought you don't believe in horoscopes?"
    case $reader in
     ilied|maybeilied|tellme|changedmymind|ichangedmymind|idonow|ibelieve|ibelievenow|ibelieveinhoroscopes)
      horoscopes="yes"
      reader="whatsyourhoroscope"
      ;;
     *)
      unset scorpion
      ;;
    esac
    process
   elif [ $scorpion ]; then
    - "i'm the scorpion."
    unset scorpion
    process
   fi
   ;;
  areyouhuman|areyouahuman|areyouahumanbeing|areyouahomosapien|areyouhomosapien)
   - "homo narrans."
   process
   ;;
  areyouaai|areyouaartificialintelligence|areyouai|areyoualanguagelearningmodel|areyouallm|areyouartificialintelligence|howdidyoucreatethis|howdidyoumakethis|howdidyouwritethis|isthisaai|isthisaartificialintelligence|isthisalanguagelearningmodel|isthisallm)
   if [ $human ]; then
    - "i am a human being. none of this text was written by an algorithm. i want to emphasize that. none of this text is written by an algorithm. i typed every word that you're reading here."
    unset human
    process
   fi
   ;;
  areyouhackingme|didyouhackme|isthismalware|isthisprogrammalware|isthisprogramavirus|isthisprogramaworm|isthisavirus|isthisaworm)
   case $(($RANDOM%4)) in
    0)
     - "your system is now infected with jdbgmgr.exe."
     ;;
    1)
     - "your system is now infected with sulfnbk.exe."
     ;;
    *)
     - "all your base are belong to us."
     ;;
   esac
   process
   ;;
  doyoubelieveinacreator|doyoubelieveinagod|doyoubelieveingod)
   if [ $creator ]; then
    - "there's a semi-infinite number of questions i'd like to ask the creator of this universe if the creator of this universe actually exists."
    exchange "forexample" "forinstance"
    case $reader in
     forexample|like|likewhat|likewhatforexample|suchas)
      - "like, for starters, does god believe in a god?"
      ;;
     *)
      ;;
    esac
    unset creator
    process
   fi
   ;;
  doyoubelieveinhell)
   if [ $hell ]; then
    if [ $heaven ]; then
     - "if hell actually exists, by now there are so many hackers in hell the security must be riddled with backdoors."
     case $reader in
      hackersgotoheaven|allhackersgotoheaven)
       - "amen."
       ;;
      *)
       ;;
     esac
    else
     - "if god sent me to hell i'd pick all the locks."
    fi
    unset hell
    process
   fi
   ;;
  doyoubelieveinheaven)
   if [ $heaven ]; then
    if [ $hell ]; then
     - "if heaven actually exists, by now there are so many hackers in heaven the security must be riddled with backdoors."
     case $reader in
      hackersgotohell|allhackersgotohell)
       - "damn."
       ;;
      *)
       ;;
     esac
    else
     - "if god sent me to heaven i'd pick all the locks."
    fi
    unset heaven
    process
   fi
   ;;
  doyoueverpray|doyoupray)
   if [ $prayer ]; then
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "can art be grace?"
    else
     - "can art be worship?"
    fi
    unset prayer
    process
   fi
   ;;
  doyouevermeditate|doyoumeditate)
   if [ $meditate ]; then
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "is art a koan?"
    else
     - "is art a mantra?"
    fi
    unset meditate
    process
   fi
   ;;
  whatsameditation|whatsaprayer|whatsmeditation|whatsprayer)
   - "a conversation that sometimes feels one-sided."
   process
   ;;
  doyouhaveafavoritecolor|howaboutyourfavoritecolor|whataboutyourfavoritecolor|whatsyourfavoritecolor|yourfavoritecolor)
   if [ $color ]; then
    - "iridescence."
    unset color
    process
   fi
   ;;
  doyouhaveafavoritesong|howaboutyourfavoritesong|whataboutyourfavoritesong|whatsyourfavoritesong|yourfavoritesong)
   - "${songs[$(($RANDOM%${#songs[@]}))]}"
   process
   ;;
  doyouhaveafavoritenumber|howaboutyourfavoritenumber|whataboutyourfavoritenumber|whatsyourfavoritenumber|yourfavoritenumber)
   - "${numbers[$(($RANDOM%${#numbers[@]}))]}"
   process
   ;;
  doyouhaveafavoriteword|howaboutyourfavoriteword|whataboutyourfavoriteword|whatsyourfavoriteword|yourfavoriteword)
   if [ $word ]; then
    - "code."
    unset word
    process
   fi
   ;;
  doyouhaveafavoritemusician|doyouhaveafavoritepainter|doyouhaveafavoritepainting|doyouhaveafavoritesculptor|doyouhaveafavoritesculpture|doyouhaveafavoritesinger|howaboutyourfavoritepainting|howaboutyourfavoritesculpture|whataboutyourfavoritepainting|whataboutyourfavoritesculpture|whatsyourfavoritepainting|whatsyourfavoritesculpture|whosyourfavoritemusician|whosyourfavoritepainter|whosyourfavoritesculptor|whosyourfavoritesinger|yourfavoritepainting|yourfavoritesculpture)
   case $(($RANDOM%3)) in
    0)
     - "honestly, i can never choose a favorite."
     ;;
    1)
     - "i can never choose a favorite, honestly."
     ;;
    *)
     - "i can never choose a favorite."
     ;;
   esac
   process
   ;;
  howmanylanguagesdoyouknow|whatlanguagesdoyouknow|whichlanguagesdoyouknow|doyouknowotherlanguages)
   if [ $linguistics ]; then
    - "english, html, css, javascript, php, sql, python, ruby, perl, c, bash, intercal."
    unset linguistics
    process
   fi
   ;;
  doyouknowalbanian|doyouknowarabic|doyouknowbasque|doyouknowbavarian|doyouknowbelarusian|doyouknowbengali|doyouknowbhojpuri|doyouknowbosnian|doyouknowbulgarian|doyouknowburmese|doyouknowcatalan|doyouknowcroatian|doyouknowczech|doyouknowdanish|doyouknowdutch|doyouknowestonian|doyouknowfaroese|doyouknowfinnish|doyouknowfrench|doyouknowfrisian|doyouknowgaelic|doyouknowgalician|doyouknowgerman|doyouknowgreek|doyouknowgujarati|doyouknowhebrew|doyouknowhindi|doyouknowhungarian|doyouknowicelandic|doyouknowindonesian|doyouknowitalian|doyouknowjapanese|doyouknowjavanese|doyouknowkorean|doyouknowlatin|doyouknowlatvian|doyouknowlithuanian|doyouknowluxembourgish|doyouknowmacedonian|doyouknowmalay|doyouknowmaltese|doyouknowmandarin|doyouknowmaori|doyouknowmarathi|doyouknownorwegian|doyouknowpersian|doyouknowpolish|doyouknowportuguese|doyouknowpunjabi|doyouknowromani|doyouknowromanian|doyouknowrussian|doyouknowserbian|doyouknowslovak|doyouknowslovenian|doyouknowspanish|doyouknowswahili|doyouknowswedish|doyouknowtelugu|doyouknowthai|doyouknowturkish|doyouknowukranian|doyouknowurdu|doyouknowvietnamese)
   if [ $(($RANDOM%4)) -eq 0 ]; then
    - "no."
   else
    - "i wish i was fluent."
   fi
   process
   ;;
  haveyoubeenbicycling|haveyoubeenbiking|haveyoubeenbouldering|haveyoubeencanoeing|haveyoubeencaving|haveyoubeenchoked|haveyoubeencursed|haveyoubeencursedat|haveyoubeenfishing|haveyoubeengambling|haveyoubeenhunting|haveyoubeeniceskating|haveyoubeenignored|haveyoubeeninafight|haveyoubeeninafistfight|haveyoubeeninasubmarine|haveyoubeeninlove|haveyoubeeninterrogated|haveyoubeenkayaking|haveyoubeenkicked|haveyoubeenkidnapped|haveyoubeenkiteflying|haveyoubeenlost|haveyoubeenmountainclimbing|haveyoubeenpunched|haveyoubeenrafting|haveyoubeenrejected|haveyoubeenrockclimbing|haveyoubeenrollerblading|haveyoubeenrollerskating|haveyoubeenseduced|haveyoubeenshot|haveyoubeenskateboarding|haveyoubeenskating|haveyoubeenskiing|haveyoubeenskinnydipping|haveyoubeensledding|haveyoubeensnorkeling|haveyoubeensnowshoeing|haveyoubeenspelunking|haveyoubeenstabbed|haveyoubeenswimming|haveyoubeenswimminginacoralreef|haveyoubeenswimminginacreek|haveyoubeenswimminginalake|haveyoubeenswimminginalagoon|haveyoubeenswimminginamarsh|haveyoubeenswimminginapond|haveyoubeenswimminginapool|haveyoubeenswimminginareef|haveyoubeenswimminginariver|haveyoubeenswimminginasaltlake|haveyoubeenswimminginastream|haveyoubeenswimminginaswamp|haveyoubeenswimmingintheocean|haveyoubeenswimminginthesea|haveyoubeenswornat|haveyoubeentickled|haveyoubeentoalabama|haveyoubeentoalbany|haveyoubeentoalbuquerque|haveyoubeentoamerica|haveyoubeentoannapolis|haveyoubeentoarizona|haveyoubeentoarkansas|haveyoubeentoatlanta|haveyoubeentoaugusta|haveyoubeentoaustin|haveyoubeentobakersfield|haveyoubeentobaltimore|haveyoubeentobatonrouge|haveyoubeentobillings|haveyoubeentobismarck|haveyoubeentoboise|haveyoubeentoboston|haveyoubeentobridgeport|haveyoubeentobrooklyn|haveyoubeentocalifornia|haveyoubeentocanada|haveyoubeentocarsoncity|haveyoubeentocharleston|haveyoubeentocharlotte|haveyoubeentocheyenne|haveyoubeentochicago|haveyoubeentocolorado|haveyoubeentocoloradosprings|haveyoubeentocolumbia|haveyoubeentocolumbus|haveyoubeentoconcord|haveyoubeentoconnecticut|haveyoubeentodallas|haveyoubeentodc|haveyoubeentodelaware|haveyoubeentodenver|haveyoubeentodesmoines|haveyoubeentodetroit|haveyoubeentodover|haveyoubeentoelpaso|haveyoubeentofargo|haveyoubeentoflorida|haveyoubeentofortworth|haveyoubeentofrankfort|haveyoubeentofresno|haveyoubeentogeorgia|haveyoubeentogotham|haveyoubeentoharrisburg|haveyoubeentohartford|haveyoubeentohelena|haveyoubeentohouston|haveyoubeentohuntsville|haveyoubeentoidaho|haveyoubeentoillinois|haveyoubeentoindiana|haveyoubeentoindianapolis|haveyoubeentoiowa|haveyoubeentojackson|haveyoubeentojacksonville|haveyoubeentojeffersoncity|haveyoubeentokansas|haveyoubeentokansascity|haveyoubeentokentucky|haveyoubeentolakeerie|haveyoubeentolakehuron|haveyoubeentolakemichigan|haveyoubeentolakeontario|haveyoubeentolakesuperior|haveyoubeentolansing|haveyoubeentolasvegas|haveyoubeentolincoln|haveyoubeentolittlerock|haveyoubeentolongbeach|haveyoubeentolosangeles|haveyoubeentolouisiana|haveyoubeentolouisville|haveyoubeentomadison|haveyoubeentomaine|haveyoubeentomanchester|haveyoubeentomanhattan|haveyoubeentomaryland|haveyoubeentomassachusetts|haveyoubeentomemphis|haveyoubeentomesa|haveyoubeentomexico|haveyoubeentomiami|haveyoubeentomichigan|haveyoubeentomilwaukee|haveyoubeentominneapolis|haveyoubeentominnesota|haveyoubeentomississippi|haveyoubeentomissouri|haveyoubeentomontana|haveyoubeentomontgomery|haveyoubeentomontpelier|haveyoubeentonaples|haveyoubeentonashville|haveyoubeentonebraska|haveyoubeentonevada|haveyoubeentonewark|haveyoubeentonewhampshire|haveyoubeentonewjersey|haveyoubeentonewmexico|haveyoubeentoneworleans|haveyoubeentonewyork|haveyoubeentonorthcarolina|haveyoubeentonorthdakota|haveyoubeentooakland|haveyoubeentoohio|haveyoubeentooklahoma|haveyoubeentooklahomacity|haveyoubeentoolympia|haveyoubeentoomaha|haveyoubeentooregon|haveyoubeentopennsylvania|haveyoubeentophiladelphia|haveyoubeentophilly|haveyoubeentophoenix|haveyoubeentopierre|haveyoubeentoportland|haveyoubeentoprovidence|haveyoubeentoqueens|haveyoubeentoraleigh|haveyoubeentorhodeisland|haveyoubeentorichmond|haveyoubeentosacramento|haveyoubeentosaintpaul|haveyoubeentosalem|haveyoubeentosaltlakecity|haveyoubeentosanantonio|haveyoubeentosandiego|haveyoubeentosanfrancisco|haveyoubeentosanjose|haveyoubeentosantafe|haveyoubeentoseattle|haveyoubeentosiouxfalls|haveyoubeentosouthcarolina|haveyoubeentosouthdakota|haveyoubeentospringfield|haveyoubeentostatenisland|haveyoubeentotallahassee|haveyoubeentotampa|haveyoubeentotennessee|haveyoubeentotexas|haveyoubeentotheadirondacks|haveyoubeentotheappalachians|haveyoubeentotheatlantic|haveyoubeentotheatlanticocean|haveyoubeentothebronx|haveyoubeentothecascades|haveyoubeentothegreatsaltlake|haveyoubeentothegulfofmexico|haveyoubeentothemississippi|haveyoubeentothepacific|haveyoubeentothepacificocean|haveyoubeentotherockies|haveyoubeentotheunitedstates|haveyoubeentotheus|haveyoubeentotopeka|haveyoubeentotrenton|haveyoubeentotucson|haveyoubeentotulsa|haveyoubeentousa|haveyoubeentoutah|haveyoubeentovermont|haveyoubeentovirginia|haveyoubeentovirginiabeach|haveyoubeentowashington|haveyoubeentowashingtondc|haveyoubeentowestvirginia|haveyoubeentowichita|haveyoubeentowisconsin|haveyoubeentowyoming|haveyoubeenwaterskiing|haveyoubicycled|haveyoubiked|haveyoubouldered|haveyoucamped|haveyoucanoed|haveyoucliffdived|haveyoucliffdove|haveyoucoughed|haveyoucried|haveyoudanced|haveyoudrivenaboat|haveyoudrivenacar|haveyoudrivenamotorboat|haveyoudrivenamotorcycle|haveyoudrivenatractor|haveyoufalleninlove|haveyoufished|haveyouflownakite|haveyougambled|haveyouhadadream|haveyouhadafever|haveyouhadanightmare|haveyouhadtheflu|haveyouhunted|haveyouiceskated|haveyoujumpedoffaboat|haveyoujumpedoffaship|haveyoukayaked|haveyoulaughed|haveyoumountainclimbed|haveyouoperatedaship|haveyouoperatedatractor|haveyoupaddledaboat|haveyoupaddledarowboat|haveyoupainted|haveyouplayedinaband|haveyouplayedinaorchestra|haveyouplayedpiano|haveyourafted|haveyourecordedaalbum|haveyouriddenamotorcycle|haveyouriddenaship|haveyouriddenatractor|haveyouriddenatrain|haveyourockclimbed|haveyourollerbladed|haveyourollerskated|haveyourowedaboat|haveyourowedarowboat|haveyousailed|haveyousailedaboat|haveyousailedasailboat|haveyousanginaband|haveyousanginachoir|haveyousculpted|haveyoushotagun|haveyouskateboarded|haveyouskated|haveyouskiied|haveyouskinnydipped|haveyousneezed|haveyousnorkeled|haveyousnowshoed|haveyousnuckontoaboat|haveyousnuckontoaship|haveyouswaminacoralreef|haveyouswaminacreek|haveyouswaminalagoon|haveyouswaminalake|haveyouswaminamarsh|haveyouswaminapond|haveyouswaminapool|haveyouswaminareef|haveyouswaminariver|haveyouswaminasaltlake|haveyouswaminastream|haveyouswaminaswamp|haveyouswamintheocean|haveyouswaminthesea|haveyouvomited|haveyouwaterskiied|haveyouwrittenaessay|haveyouwrittenapoem|haveyouwrittenasong|haveyouwrittenpoetry)
   - "yes."
   process
   ;;
  haveyoubeenastowaway|haveyoubeendrugged|haveyoubeenfondled|haveyoubeengroped|haveyoubeenhomeless|haveyoubeenmugged|haveyoubeenrobbed|haveyoubeensurfing|haveyoubeentoafrica|haveyoubeentoalaska|haveyoubeentoamsterdam|haveyoubeentoanchorage|haveyoubeentoantarctica|haveyoubeentoaotearoa|haveyoubeentoasia|haveyoubeentoathens|haveyoubeentoauckland|haveyoubeentoaustralia|haveyoubeentoaustria|haveyoubeentobarcelona|haveyoubeentobangkok|haveyoubeentobeijing|haveyoubeentobelgium|haveyoubeentoberlin|haveyoubeentobilbao|haveyoubeentobrazil|haveyoubeentobritain|haveyoubeentobruges|haveyoubeentobrussels|haveyoubeentobudapest|haveyoubeentocairns|haveyoubeentocardiff|haveyoubeentochina|haveyoubeentocinqueterre|haveyoubeentocomo|haveyoubeentocopenhagen|haveyoubeentoculebra|haveyoubeentocusco|haveyoubeentodaressalaam|haveyoubeentodenmark|haveyoubeentodublin|haveyoubeentoecuador|haveyoubeentoedinburgh|haveyoubeentoengland|haveyoubeentoeurope|haveyoubeentofez|haveyoubeentofinland|haveyoubeentoflorence|haveyoubeentofrance|haveyoubeentogalapagos|haveyoubeentogermany|haveyoubeentogreatbritain|haveyoubeentogreece|haveyoubeentohawaii|haveyoubeentohelsinki|haveyoubeentohiroshima|haveyoubeentohokkaido|haveyoubeentohongkong|haveyoubeentohonolulu|haveyoubeentohonshu|haveyoubeentohungary|haveyoubeentoiceland|haveyoubeentoireland|haveyoubeentoisrael|haveyoubeentoitaly|haveyoubeentojapan|haveyoubeentojerusalem|haveyoubeentojuneau|haveyoubeentokauai|haveyoubeentokilimanjaro|haveyoubeentokorea|haveyoubeentokoya|haveyoubeentokyoto|haveyoubeentokyushu|haveyoubeentolakecomo|haveyoubeentolisbon|haveyoubeentolondon|haveyoubeentoluxembourg|haveyoubeentomachupicchu|haveyoubeentomadagascar|haveyoubeentomadrid|haveyoubeentoman|haveyoubeentomarrakech|haveyoubeentomarrakesh|haveyoubeentomaui|haveyoubeentomelbourne|haveyoubeentomorocco|haveyoubeentonaoshima|haveyoubeentonaxos|haveyoubeentonetherlands|haveyoubeentonewzealand|haveyoubeentonorway|haveyoubeentooahu|haveyoubeentooslo|haveyoubeentopalermo|haveyoubeentopalestine|haveyoubeentoparis|haveyoubeentoperu|haveyoubeentopolynesia|haveyoubeentoportugal|haveyoubeentoprague|haveyoubeentopuertorico|haveyoubeentoquito|haveyoubeentoreykjavik|haveyoubeentorio|haveyoubeentoriodejaneiro|haveyoubeentorome|haveyoubeentorugen|haveyoubeentosanjuan|haveyoubeentosantorini|haveyoubeentoscandinavia|haveyoubeentoscotland|haveyoubeentoseoul|haveyoubeentoshanghai|haveyoubeentosicily|haveyoubeentosingapore|haveyoubeentosintra|haveyoubeentospain|haveyoubeentostockholm|haveyoubeentosweden|haveyoubeentoswitzerland|haveyoubeentosydney|haveyoubeentotangier|haveyoubeentotanzania|haveyoubeentotelaviv|haveyoubeentothailand|haveyoubeentothealgarve|haveyoubeentothealps|haveyoubeentotheandes|haveyoubeentothearctic|haveyoubeentothecaribbean|haveyoubeentothecaribbeansea|haveyoubeentotheczechrepublic|haveyoubeentothedeadsea|haveyoubeentothegalapagos|haveyoubeentothegreatbarrierreef|haveyoubeentotheisleofman|haveyoubeentothekeys|haveyoubeentothemediterranean|haveyoubeentothemediterraneansea|haveyoubeentothenetherlands|haveyoubeentotheoutback|haveyoubeentotheserengeti|haveyoubeentothetropics|haveyoubeentotheuk|haveyoubeentotheunitedkingdom|haveyoubeentotokyo|haveyoubeentouluru|haveyoubeentovenice|haveyoubeentovienna|haveyoubeentovieques|haveyoubeentowales|haveyoubeentowellington|haveyoubeentoyakushima|haveyoubeentozanibar|haveyoubeentozurich|haveyouflownadrone|haveyouflownahelicopter|haveyouflownaplane|haveyoujumpedoutahelicopter|haveyoujumpedoutaplane|haveyouscubadived|haveyouscubaed|haveyouseenacomet|haveyouseenalandslide|haveyouseenameteor|haveyouseenamudslide|haveyouseenaaurora|haveyouseenaavalanche|haveyouseenaeclipse|haveyouseenarockslide|haveyouseenawildfire|haveyousnuckontoatrain|haveyousurfed|haveyouwrittenamemoir)
   case $(($RANDOM%8)) in
    0)
     - "maybe someday."
    ;;
    1)
     - "someday maybe."
     ;;
    2)
     - "not yet."
     ;;
    *)
     - "yes."
     ;;
   esac
   process
   ;;
  haveyoubeentoafghanistan|haveyoubeentoalbania|haveyoubeentoalgeria|haveyoubeentoandorra|haveyoubeentoangola|haveyoubeentoantigua|haveyoubeentoarabia|haveyoubeentoargentina|haveyoubeentoarmenia|haveyoubeentoazerbaijan|haveyoubeentobahamas|haveyoubeentobahrain|haveyoubeentobangladesh|haveyoubeentobarbados|haveyoubeentobarbuda|haveyoubeentobelarus|haveyoubeentobelize|haveyoubeentobenin|haveyoubeentobhutan|haveyoubeentobolivia|haveyoubeentoborneo|haveyoubeentobosnia|haveyoubeentobotswana|haveyoubeentobrunei|haveyoubeentobulgaria|haveyoubeentoburkinafaso|haveyoubeentoburundi|haveyoubeentocambodia|haveyoubeentocameroon|haveyoubeentocapeverde|haveyoubeentocentralafricanrepublic|haveyoubeentochad|haveyoubeentochile|haveyoubeentocolombia|haveyoubeentocomoros|haveyoubeentocongo|haveyoubeentocookislands|haveyoubeentocostarica|haveyoubeentocotedivoire|haveyoubeentocroatia|haveyoubeentocuba|haveyoubeentocyprus|haveyoubeentodjibouti|haveyoubeentodominica|haveyoubeentodominicanrepublic|haveyoubeentoeasttimor|haveyoubeentoegypt|haveyoubeentoelsalvador|haveyoubeentoequatorialguinea|haveyoubeentoeritrea|haveyoubeentoestonia|haveyoubeentoeswatini|haveyoubeentoethiopia|haveyoubeentofiji|haveyoubeentogabon|haveyoubeentogambia|haveyoubeentoghana|haveyoubeentogreenland|haveyoubeentogrenada|haveyoubeentoguatemala|haveyoubeentoguinea|haveyoubeentoguineabissau|haveyoubeentoguyana|haveyoubeentohaiti|haveyoubeentoherzegovina|haveyoubeentohispaniola|haveyoubeentohonduras|haveyoubeentohungary|haveyoubeentoindia|haveyoubeentoindonesia|haveyoubeentoiran|haveyoubeentoiraq|haveyoubeentoivorycoast|haveyoubeentojamaica|haveyoubeentojava|haveyoubeentojordan|haveyoubeentokazakhstan|haveyoubeentokenya|haveyoubeentokiribati|haveyoubeentokosovo|haveyoubeentokuwait|haveyoubeentokyrgyzstan|haveyoubeentolaos|haveyoubeentolatvia|haveyoubeentolebanon|haveyoubeentolesotho|haveyoubeentoliberia|haveyoubeentolibya|haveyoubeentoliechtenstein|haveyoubeentolithuania|haveyoubeentoluzon|haveyoubeentomacedonia|haveyoubeentomalawi|haveyoubeentomalaysia|haveyoubeentomaldives|haveyoubeentomali|haveyoubeentomalta|haveyoubeentomarshallislands|haveyoubeentomauritania|haveyoubeentomauritius|haveyoubeentomicronesia|haveyoubeentomindanao|haveyoubeentomoldova|haveyoubeentomonaco|haveyoubeentomongolia|haveyoubeentomontenegro|haveyoubeentomozambique|haveyoubeentomyanmar|haveyoubeentonamibia|haveyoubeentonauru|haveyoubeentonepal|haveyoubeentonevis|haveyoubeentonewguinea|haveyoubeentonicaragua|haveyoubeentoniger|haveyoubeentonigeria|haveyoubeentoniue|haveyoubeentooman|haveyoubeentopakistan|haveyoubeentopalau|haveyoubeentopanama|haveyoubeentopapuanewguinea|haveyoubeentoparaguay|haveyoubeentophilippines|haveyoubeentopoland|haveyoubeentoprincipe|haveyoubeentoqatar|haveyoubeentoromania|haveyoubeentorussia|haveyoubeentorwanda|haveyoubeentosahrawi|haveyoubeentosaintkitts|haveyoubeentosaintlucia|haveyoubeentosaintvincent|haveyoubeentosamoa|haveyoubeentosanmarino|haveyoubeentosaotome|haveyoubeentosaudiarabia|haveyoubeentosenegal|haveyoubeentoserbia|haveyoubeentoseychelles|haveyoubeentosiberia|haveyoubeentosierraleone|haveyoubeentoslovakia|haveyoubeentoslovenia|haveyoubeentosolomonislands|haveyoubeentosomalia|haveyoubeentosomaliland|haveyoubeentosouthafrica|haveyoubeentosrilanka|haveyoubeentosudan|haveyoubeentosumatra|haveyoubeentosuriname|haveyoubeentoswaziland|haveyoubeentosyria|haveyoubeentotaiwan|haveyoubeentotajikistan|haveyoubeentotheamazon|haveyoubeentothecentralafricanrepublic|haveyoubeentothecongo|haveyoubeentothecookislands|haveyoubeentothedominicanrepublic|haveyoubeentothedprk|haveyoubeentothegambia|haveyoubeentotheganges|haveyoubeentothegrenadines|haveyoubeentothehimalayas|haveyoubeentotheholysee|haveyoubeentothemarshallislands|haveyoubeentothenile|haveyoubeentothephilippines|haveyoubeentothesahara|haveyoubeentotheuae|haveyoubeentotheunitedarabemirates|haveyoubeentothevatican|haveyoubeentotheyangtze|haveyoubeentotimorleste|haveyoubeentotobago|haveyoubeentotogo|haveyoubeentotonga|haveyoubeentotrinidad|haveyoubeentotunisia|haveyoubeentoturkey|haveyoubeentoturkmenistan|haveyoubeentotuvalu|haveyoubeentouganda|haveyoubeentoukraine|haveyoubeentounitedarabemirates|haveyoubeentouruguay|haveyoubeentouzbekistan|haveyoubeentovanuatu|haveyoubeentovaticancity|haveyoubeentovenezuela|haveyoubeentovietnam|haveyoubeentoyemen|haveyoubeentozambia|haveyoubeentozimbabwe)
   case $(($RANDOM%8)) in
    0)
     - "maybe someday."
    ;;
    1)
     - "someday maybe."
     ;;
    2)
     - "not yet."
     ;;
    *)
     - "no."
     ;;
   esac
   process
   ;;
  haveyoubribedagovernmentofficial)
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "surprisingly, no."
   else
    - "no, surprisingly."
   fi
   ;;
  haveyoubeenskydiving|haveyouskydived)
   if [ $sky ]; then
    - "unintentionally."
    unset sky
    process
   fi
   ;;
  haveyoudoneacid)
   - "no."
   if [ $criminal -ne 4 ]; then
    criminal=$(($criminal+1))
   fi
   process
   ;;
  haveyoucommittedacrime)
   if [ $criminal -ne 4 ]; then
    - "yes."
   else
    - "are you a fed?"
    case $reader in
     yes)
      fed=$reader
      ;;
     *)
      ;;
    esac
   fi
   criminal=$(($criminal+1))
   process
   ;;
  areyouavirgin)
   if [ $(($RANDOM%16)) -eq 0 ]; then
    - "yes."
    process
   else
    - "no."
    process
   fi
   ;;
  haveyoufucked|haveyoufuckedinabed|haveyouhadamenageatrois|haveyouhadaorgy|haveyouhadsex|haveyouhadsexinabed|haveyoumadelove|haveyoumadeloveinabed)
   if [ $libertine -ne 8 ]; then
    case $(($RANDOM%16)) in
     0)
      - "maybe someday."
      ;;
     1)
      - "someday maybe."
      ;;
     2)
      - "not yet."
      ;;
     *)
      - "yes."
      ;;
    esac
   else
    - "you like imagining me in these scenarios?"
   fi
   libertine=$(($libertine+1))
   process
   ;;
  haveyoufuckedamonarch|haveyouhadaaffairwithamonarch|haveyouhadaflingwithamonarch|haveyouhadsexwithamonarch|haveyoumadelovewithamonarch|haveyousleptwithamonarch)
   if [ $monarch ]; then
    - "i'm legally prohibited from discussing that incident."
    unset monarch
    process
   fi
   ;;
  haveyoufuckedinaspaceship|haveyouhadsexinaspaceship|haveyoumadeloveinaspaceship)
   if [ $spaceship ]; then
    - "only in dreams."
    unset spaceship
    process
   fi
   ;;
  areyouhungry|areyoustillhungry|doyouwanttoeatsomething|doyouwanttoeatsomethingtogether|doyouwanttoeatsomethingwithme|eatsomethingwithme|ifeelhungry|ifeelhungryagain|imhungry|imhungryagain|imstillhungry|istillfeelhungry|iwanttoeatsomething|iwanttoeatsomethingtogether|iwanttoeatsomethingwithyou|wanttoeatsomething|wanttoeatsomethingtogether)
   if [ $meal -eq 0 ]; then
    eat meal
   elif [ $dessert -eq 0 ]; then
    eat dessert
   elif [ $cheese -eq 0 ]; then
    eat cheese
   elif [ $chocolate -eq 0 ]; then
    eat chocolate
   elif [ $popcorn -eq 0 ]; then
    eat popcorn
   fi
   ;;
  doyouwanttoeatameal|doyouwanttoeatamealtogether|doyouwanttoeatamealwithme|doyouwanttoeatbreakfast|doyouwanttoeatbreakfasttogether|doyouwanttoeatbreakfastwithme|doyouwanttoeatbrunch|doyouwanttoeatbrunchtogether|doyouwanttoeatbrunchwithme|doyouwanttoeatdinner|doyouwanttoeatdinnertogether|doyouwanttoeatdinnerwithme|doyouwanttoeatfood|doyouwanttoeatfoodtogether|doyouwanttoeatfoodwithme|doyouwanttoeatlunch|doyouwanttoeatlunchtogether|doyouwanttoeatlunchwithme|doyouwanttoeatsupper|doyouwanttoeatsuppertogether|doyouwanttoeatsupperwithme|eatamealwithme|eatbreakfastwithme|eatbrunchwithme|eatdinnerwithme|eatfoodwithme|eatlunchwithme|eatsupperwithme|iwanttoeatameal|iwanttoeatamealtogether|iwanttoeatamealwithyou|iwanttoeatbreakfast|iwanttoeatbreakfasttogether|iwanttoeatbreakfastwithyou|iwanttoeatbrunch|iwanttoeatbrunchtogether|iwanttoeatbrunchwithyou|iwanttoeatdinner|iwanttoeatdinnertogether|iwanttoeatdinnerwithyou|iwanttoeatfood|iwanttoeatfoodtogether|iwanttoeatfoodwithyou|iwanttoeatlunch|iwanttoeatlunchtogether|iwanttoeatlunchwithyou|iwanttoeatsupper|iwanttoeatsuppertogether|iwanttoeatsupperwithyou|wanttoeatameal|wanttoeatamealtogether|wanttoeatbreakfast|wanttoeatbreakfasttogether|wanttoeatbrunch|wanttoeatbrunchtogether|wanttoeatdinner|wanttoeatdinnertogether|wanttoeatfood|wanttoeatfoodtogether|wanttoeatlunch|wanttoeatlunchtogether|wanttoeatsupper|wanttoeatsuppertogether)
   if [ $meal -eq 0 ]; then
    eat meal
   fi
   ;;
  doyouwanttoeatdessert|doyouwanttoeatdesserttogether|doyouwanttoeatdessertwithme|doyouwanttohavedessert|doyouwanttohavedesserttogether|doyouwanttohavedessertwithme|eatdessertwithme|havedessertwithme|iwanttoeatdessert|iwanttoeatdesserttogether|iwanttoeatdessertwithyou|iwanttohavedessert|iwanttohavedesserttogether|iwanttohavedessertwithyou|wanttoeatdessert|wanttoeatdesserttogether|wanttohavedessert|wanttohavedesserttogether)
   if [ $dessert -eq 0 ]; then
    eat dessert
   fi
   ;;
  doyouwanttoeatcheese|doyouwanttoeatcheesetogether|doyouwanttoeatcheesewithme|eatcheesewithme|iwanttoeatcheese|iwanttoeatcheesetogether|iwanttoeatcheesewithyou|wanttoeatcheese|wanttoeatcheesetogether)
   if [ $cheese -eq 0 ]; then
    eat cheese
   fi
   ;;
  doyouwanttoeatchocolate|doyouwanttoeatchocolatetogether|doyouwanttoeatchocolatewithme|eatchocolatewithme|iwanttoeatchocolate|iwanttoeatchocolatetogether|iwanttoeatchocolatewithyou|wanttoeatchocolate|wanttoeatchocolatetogether)
   if [ $chocolate -eq 0 ]; then
    eat chocolate
   fi
   ;;
  doyouwanttoeatpopcorn|doyouwanttoeatpopcorntogether|doyouwanttoeatpopcornwithme|eatpopcornwithme|iwanttoeatpopcorn|iwanttoeatpopcorntogether|iwanttoeatpopcornwithyou|wanttoeatpopcorn|wanttoeatpopcorntogether)
   if [ $popcorn -eq 0 ]; then
    eat popcorn
   fi
   ;;
  howsthebacon)
   - "charred to a crisp."
   if [ `wrote bacon` = true ]; then
    process
   elif [ $(($RANDOM%2)) -eq 0 ]; then
    - "i love dipping the brioche in the grease."
   fi
   process
   ;;
  howsthechili|howsthegumbo|howsthelaksa|howstheshakshuka)
   - "spicy."
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "i'm eating some ${grains[$(($RANDOM%${#grains[@]}))]} too."
   fi
   process
   ;;
  howsthechowder)
   - "${chowder[$(($RANDOM%${#chowder[@]}))]}."
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "i'm eating some ${grains[$(($RANDOM%${#grains[@]}))]} too."
   fi
   process
   ;;
  howsthefettucini)
   - "${fettucini[$(($RANDOM%${#fettucini[@]}))]}."
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "i'm eating some ${vegetables[$(($RANDOM%${#vegetables[@]}))]} too."
   fi
   process
   ;;
  howsthegnocchi)
   - "${gnocchi[$(($RANDOM%${#gnocchi[@]}))]}."
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "i'm eating some ${vegetables[$(($RANDOM%${#vegetables[@]}))]} too."
   fi
   process
   ;;
  howstherisotto)
   - "${risotto[$(($RANDOM%${#risotto[@]}))]}."
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "i'm eating some ${vegetables[$(($RANDOM%${#vegetables[@]}))]} too."
   fi
   process
   ;;
  howsthemala)
   - "spicy."
   if [[ $pronouns == false && $words -lt 8 ]]; then
    - "${mala[$(($RANDOM%${#mala[@]}))]}."
   fi
   process
   ;;
  howsthebaklava)
   - "${baklava[$(($RANDOM%${#baklava[@]}))]}."
   process
   ;;
  howsthebrulee)
   - "${brulee[$(($RANDOM%${#brulee[@]}))]}."
   process
   ;;
  howsthemeringues)
   - "${meringues[$(($RANDOM%${#meringues[@]}))]}."
   process
   ;;
  howsthetoffee)
   - "${toffee[$(($RANDOM%${#toffee[@]}))]}."
   process
   ;;
  howsthecheese)
   case $(($RANDOM%4)) in
    0)
     - "creamy."
     ;;
    1)
     - "nutty."
     ;;
    2)
     - "tangy."
     ;;
    *)
     - "delicious."
     ;;
   esac
   process
   ;;
  howsthechocolate)
   case $(($RANDOM%4)) in
    0)
     - "nutty."
     ;;
    1)
     - "sugary."
     ;;
    2)
     - "tart."
     ;;
    *)
     - "delicious."
     ;;
   esac
   process
   ;;
  howsthepopcorn)
   - "${popcorns[$(($RANDOM%${#popcorns[@]}))]}."
   process
   ;;
  howsthecannoli|howsthecurry|howstheenchiladas|howsthegelato|howsthehalvah|howsthekheer|howsthekulfi|howsthelasagna|howsthemacarons|howsthemarzipan|howsthemerveilleux|howsthemochi|howsthemousse|howsthepizza|howstheramen|howsthesorbet|howsthetacos|howsthewagashi)
   case $(($RANDOM%8)) in
    0)
     - "world-class."
     ;;
    1)
     - "five-star."
     ;;
    2)
     - "gold-medal."
     ;;
    3)
     - "blue-ribbon."
     ;;
    *)
     - "delicious."
     ;;
   esac
   process
   ;;
  whattypeofcurry)
   - "${curry[$(($RANDOM%${#curry[@]}))]}."
   process
   ;;
  whattypeofpizza)
   - "${pizza[$(($RANDOM%${#pizza[@]}))]}."
   process
   ;;
  whattypeofcannoli)
   - "${cannoli[$(($RANDOM%${#cannoli[@]}))]}."
   process
   ;;
  whattypeofgelato)
   - "${gelato[$(($RANDOM%${#gelato[@]}))]}."
   process
   ;;
  whattypeofhalvah)
   - "${halvah[$(($RANDOM%${#halvah[@]}))]}."
   process
   ;;
  whattypeofkulfi)
   - "${kulfi[$(($RANDOM%${#kulfi[@]}))]}."
   process
   ;;
  whattypeofmacarons)
   - "${macarons[$(($RANDOM%${#macarons[@]}))]}."
   process
   ;;
  whattypeofmochi)
   - "${mochi[$(($RANDOM%${#mochi[@]}))]}."
   process
   ;;
  whattypeofsorbet)
   - "${sorbet[$(($RANDOM%${#sorbet[@]}))]}."
   process
   ;;
  whattypeofwagashi)
   - "${wagashi[$(($RANDOM%${#wagashi[@]}))]}."
   process
   ;;
  areyouflirting|areyouflirtingwithme)
   - "are you blushing?"
   process
   ;;
  meditatewithme|wanttomeditate|wanttomeditatetogether|doyouwanttomeditate|doyouwanttomeditatewithme|doyouwanttomeditatetogether|iwanttomeditate|iwanttomeditatewithyou|iwanttomeditatetogether)
   if [ $meditating ]; then
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "$acknowledge, let's meditate together in silence for a moment."
    else
     - "$acknowledge, let's meditate together for a moment in silence."
    fi
    sleep $(($RANDOM%64+16))
    - "hm."
    unset meditating
    process
   fi
   ;;
  praywithme|wanttopray|wanttopraytogether|doyouwanttopray|doyouwanttopraywithme|doyouwanttopraytogether|iwanttopray|iwanttopraywithyou|iwanttopraytogether)
   if [ $praying ]; then
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "$acknowledge, let's pray together in silence for a moment."
    else
     - "$acknowledge, let's pray together for a moment in silence."
    fi
    sleep $(($RANDOM%64+16))
    - "hm."
    unset praying
    process
   fi
   ;;
  doyouwanttodrinktea|doyouwanttodrinkteatogether|doyouwanttodrinkteawithme|drinkteawithme|iwanttodrinktea|iwanttodrinkteatogether|iwanttodrinkteawithyou|wanttodrinktea|wanttodrinkteatogether)
   if [ $tea -eq 0 ]; then
    drink tea
   fi
   ;;
  doyouwanttodrinkcoffee|doyouwanttodrinkcoffeetogether|doyouwanttodrinkcoffeewithme|drinkcoffeewithme|iwanttodrinkcoffee|iwanttodrinkcoffeetogether|iwanttodrinkcoffeewithyou|wanttodrinkcoffee|wanttodrinkcoffeetogether)
   if [ $coffee -eq 0 ]; then
    drink coffee
   fi
   ;;
  howsthetea)
   if [ $hanami ]; then
    - "always makes me nostalgic for tokyo."
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "hanami."
    fi
    unset hanami
    process
   fi
   ;;
  howsthecoffee)
   if [ $piazzas ]; then
    - "always makes me nostalgic for rome."
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "piazzas."
    fi
    unset piazzas
    process
   fi
   ;;
  howsthejuice|howsthesoda)
   if [ $(($RANDOM%4)) -ne 0 ]; then
    - "refreshing."
    process
   fi
   ;;
  doyouwanttodrinkwine|doyouwanttodrinkwinetogether|doyouwanttodrinkwinewithme|doyouwanttodrinksomething|doyouwanttodrinksomethingtogether|doyouwanttodrinksomethingwithme|drinkwinewithme|drinksomethingwithme|iwanttodrinkwine|iwanttodrinkwinetogether|iwanttodrinkwinewithyou|iwanttodrinksomething|iwanttodrinksomethingtogether|iwanttodrinksomethingwithyou|wanttodrinkwine|wanttodrinkwinetogether|wanttodrinksomething|wanttodrinksomethingtogether)
   if [ $wine -eq 0 ]; then
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "$acknowledge, i'll pour a glass of wine so we can drink together."
    else
     - "$acknowledge, i'll pour a glass of wine."
    fi
    drink wine
   fi
   ;;
  doyouwanttodrinkabsinthe|doyouwanttodrinkabsinthetogether|doyouwanttodrinkabsinthewithme|drinkabsinthewithme|iwanttodrinkabsinthe|iwanttodrinkabsinthetogether|iwanttodrinkabsinthewithyou|wanttodrinkabsinthe|wanttodrinkabsinthetogether)
   if [ $wine -eq 0 ]; then
    - "i have a bottle of wine."
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "let's drink something together."
    fi
    - "i'll pour a glass of wine."
    drink wine
   else
    - "all i have where i am is a bottle of wine."
    process
   fi
   ;;
  doyoufeellikegettingdrunk|doyoufeellikegettingdrunktogether|doyoufeellikegettingdrunkwithme|doyouwanttogetdrunk|doyouwanttogetdrunktogether|doyouwanttogetdrunkwithme|getdrunkwithme|ifeellikegettingdrunk|ifeellikegettingdrunktogether|ifeellikegettingdrunkwithyou|iwanttogetdrunk|iwanttogetdrunktogether|iwanttogetdrunkwithyou|wanttogetdrunk|wanttogetdrunktogether)
   if [ $wine -eq 0 ]; then
    - "$acknowledge, i'll drink a bottle with you."
    wine=1
    drink wine
   elif [ $wine -eq 1 ]; then
    - "$acknowledge, i'll drink the bottle with you."
    if [[ $drinking != "wine" ]]; then
     - "i'll pour another glass of wine."
     drinking="wine"
    fi
    wine=2
    process
   fi
   ;;
  areyoudrunkyet)
   if [ $wine -eq 2 ]; then
    - "tipsy, you?"
    wine=3
    process
   fi
   ;;
  howsthewine|tellmeaboutthewine|whatsthewine|whatsthewinelike|whatthewinethatyouhave|whattypeofwine|whatwinedoyouhave)
   case $(($RANDOM%8)) in
    0)
     - "cabernet."
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "notes of ${cabernet[$(($RANDOM%${#cabernet[@]}))]}."
     fi
     ;;
    1)
     - "merlot."
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "notes of ${merlot[$(($RANDOM%${#merlot[@]}))]}."
     fi
     ;;
    2)
     - "pinot."
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "notes of ${pinot[$(($RANDOM%${#pinot[@]}))]}."
     fi
     ;;
    3)
     - "syrah."
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "notes of ${syrah[$(($RANDOM%${#syrah[@]}))]}."
     fi
     ;;
    4)
     - "port."
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "notes of ${port[$(($RANDOM%${#port[@]}))]}."
     fi
     ;;
    5)
     - "madeira."
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "notes of ${madeira[$(($RANDOM%${#madeira[@]}))]}."
     fi
     ;;
    6)
     - "amontillado."
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "notes of ${amontillado[$(($RANDOM%${#amontillado[@]}))]}."
     fi
     ;;
    7)
     - "muscat."
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "notes of ${muscat[$(($RANDOM%${#muscat[@]}))]}."
     fi
     ;;
    *)
     reader=0
     ;;
   esac
   process
   ;;
  smokewithme|blazewithme|gethighwithme|getstonedwithme|wanttosmoke|wanttosmoketogether|doyouwanttosmoke|doyouwanttosmoketogether|doyouwanttosmokewithme|doyoufeellikesmoking|doyoufeellikesmokingtogether|doyoufeellikesmokingwithme|iwanttosmoke|iwanttosmoketogether|iwanttosmokewithyou|ifeellikesmoking|ifeellikesmokingtogether|ifeellikesmokingwithyou|ineedtosmoke|ineedasmoke|wanttoblaze|wanttoblazetogether|wanttogetblazed|wanttogetbuzzed|wanttogetbuzzedtogether|wanttogethigh|wanttogethightogether|wanttogetstoned|wanttogetstonedtogether)
   if [ $smoking ]; then
    - "you want to smoke some tobacco or some marijuana?"
    beginning "iwanttosmoke" "wanttosmoke" "some"
    exchange "marijuana" "cannabis" "dope" "ganja" "grass" "hashish" "hash" "jive" "maryjane" "pot" "reefer" "weed"
    case $reader in
     tobacco)
      smoke tobacco
      ;;
     marijuana)
      smoke marijuana
      ;;
     either|eitheror|xor)
      if [ $(($RANDOM%2)) -eq 0 ]; then
       smoke tobacco
      else
       smoke marijuana
      fi
      ;;
     both|canichooseboth|tobaccoandmarijuana)
      - "$acknowledge, let's blaze."
      smoke tobacco
      if [ $(($RANDOM%2)) -eq 0 ]; then
       - "i like doing this with you."
      fi
      if [ $(($RANDOM%2)) -eq 0 ]; then
       - "i love doing this with you."
      fi
      - "i'm ready for the next light."
      smoke marijuana
      ;;
     *)
      - "let's blaze."
      ;;
    esac
    unset smoking
   fi
   ;;
  smoketobaccowithme|smokeacigarettewithme|wanttosmoketobacco|wanttosmoketobaccotogether|wanttosmokeacigarette|wanttosmokeacigarettetogether|doyouwanttosmoketobacco|doyouwanttosmoketobaccotogether|doyouwanttosmoketobaccowithme|doyoufeellikesmokingtobacco|doyoufeellikesmokingtobaccotogether|doyoufeellikesmokingtobaccowithme|iwanttosmoketobacco|iwanttosmoketobaccotogether|iwanttosmoketobaccowithyou|ifeellikesmokingtobacco|ifeellikesmokingtobaccotogether|ifeellikesmokingtobaccowithyou|doyouwanttosmokeacigarette|doyouwanttosmokeacigarettetogether|doyouwanttosmokeacigarettewithme|doyoufeellikesmokingacigarette|doyoufeellikesmokingacigarettetogether|doyoufeellikesmokingacigarettewithme|iwanttosmokeacigarette|iwanttosmokeacigarettetogether|iwanttosmokeacigarettewithyou|ifeellikesmokingacigarette|ifeellikesmokingacigarettetogether|ifeellikesmokingacigarettewithyou)
   if [ $tobacco -eq 0 ]; then
    - "let's blaze."
    smoke tobacco
   fi
   ;;
  smokemarijuanawithme|smokeajointwithme|wanttosmokemarijuana|wanttosmokemarijuanatogether|wanttosmokeajoint|wanttosmokeajointtogether|doyouwanttosmokemarijuana|doyouwanttosmokemarijuanatogether|doyouwanttosmokemarijuanawithme|doyoufeellikesmokingmarijuana|doyoufeellikesmokingmarijuanatogether|doyoufeellikesmokingmarijuanawithme|iwanttosmokemarijuana|iwanttosmokemarijuanatogether|iwanttosmokemarijuanawithyou|ifeellikesmokingmarijuana|ifeellikesmokingmarijuanatogether|ifeellikesmokingmarijuanawithyou|doyouwanttosmokeajoint|doyouwanttosmokeajointtogether|doyouwanttosmokeajointwithme|doyoufeellikesmokingajoint|doyoufeellikesmokingajointtogether|doyoufeellikesmokingajointwithme|iwanttosmokeajoint|iwanttosmokeajointtogether|iwanttosmokeajointwithyou|ifeellikesmokingajoint|ifeellikesmokingajointtogether|ifeellikesmokingajointwithyou)
   if [ $marijuana -eq 0 ]; then
    - "let's blaze."
    smoke marijuana
   fi
   ;;
  doacidwithme|doyouwanttodoacid|doyouwanttodoacidtogether|doyouwanttodoacidwithme|iwanttodoacid|iwanttodoacidtogether|iwanttodoacidwithyou|wanttodoacid|wanttodoacidtogether)
   - "all i have where i am is tobacco and marijuana and a bottle of wine."
   process
   ;;
  youlisteningtomusic|youlisteningtoanymusic|youlisteningtomusicrightnow|youlisteningtoanymusicrightnow|youplayingmusic|youplayinganymusic|youplayingmusicrightnow|youplayinganymusicrightnow|areyoulisteningtomusic|areyoulisteningtoanymusic|areyoulisteningtomusicrightnow|areyoulisteningtoanymusicrightnow|areyouplayingmusic|areyouplayinganymusic|areyouplayingmusicrightnow|areyouplayinganymusicrightnow)
   vibing=1
   vibe
   ;;
  wanttolistentomusic|wanttolistentomusictogether|doyouwanttolistentomusic|doyouwanttolistentomusictogether|doyouwanttolistentomusicwithme|doyoufeellikelisteningtomusic|doyoufeellikelisteningtomusictogether|doyoufeellikelisteningtomusicwithme|iwanttolistentomusic|iwanttolistentomusictogether|iwanttolistentomusicwithyou|ifeellikelisteningtomusic|ifeellikelisteningtomusictogether|ifeellikelisteningtomusicwithyou)
   if [ $vibing -eq 0 ]; then
    - "$acknowledge, let's play some music."
    - "playing a record now."
    vibing=1
    process
   fi
   ;;
  whatareyoulisteningto|tellmeaboutthemusicyourelisteningto|tellmeaboutthemusicthatyourelisteningto)
   if [ $vibing -ne 0 ]; then
    vibing=2
    vibe
   fi
   ;;
  youstilllisteningtomusic|areyoustilllisteningtomusic|whatareyoulisteningtonow)
   if [ $vibing -eq 2 ]; then
    vibe
   fi
   ;;
  yohoyoho)
   if [ $seaworthy ]; then
    - "that's the spirit."
    unset seaworthy
    process
   fi
   ;;
  wheredyouburythetreasure|wheredyouhidethetreasure|wheredyoustashthetreasure)
   if [ $treasure ]; then
    - "which treasure?"
    unset treasure
    process
   fi
   ;;
  itsmybirthday|todayismybirthday|todaysmybirthday)
   if [ $birthday -eq 0 ]; then
    - "happy birthday."
    if [[ $pronouns == false && `wrote year` == false && `wrote old` == false && `wrote turn` == false && `wrote now` == false && $(($RANDOM%4)) -eq 0 ]]; then
     - "how old are you now?"
    fi
    if [[ $(($RANDOM%2)) -eq 0 ]]; then
     - "we should celebrate."
    fi
    birthday=1
   fi
   ;;
  whatsitliketobeyou|whatsitlikeinyourmind|whatsitlikeinsideyourmind|whatsitlikeinyourhead|whatsitlikeinsideyourhead|whatsitlikeinyourbrain|whatsitlikeinsideyourbrain)
   if [ $mind ]; then
    - "prismatic."
    unset mind
    process
   fi
   ;;
  yourecrazy|youreinsane|youremental|youarecrazy|youareinsane|youaremental|areyoucrazy|areyouinsane|areyoumental)
   if [ $madness ]; then
    - "just another bash hacker, just another mad hatter."
    unset madness
    process
   fi
   ;;
  plokta)
   - "$plokta"
   process
   ;;     
  dontrepeatyourself)
   if [ $stylist ]; then
    - "we enjoy typing."
    unset stylist
    process
   fi
   ;; 
  areyouq|areyouqanon)
   if [ $unknown ]; then
    - "the unknown."
    unset unknown
    process
   fi
   ;;
  areyoujester|areyouj3st3r|areyouthejester|areyouth3j3st3r)
   if [ $clown ]; then
    - "lmao."
    unset clown
    process
   fi
   ;;
  areyouavunit)
   if [ $fugitive ]; then
    - "remember, remember."
    unset fugitive
    process
   fi
   ;;
  wearelegion)
   - "we do not forgive."
   if [[ $reader == "wedontforget" ]]; then
    if [ $(($RANDOM%32)) -eq 0 ]; then
     - "${marblecake[$(($RANDOM%${#marblecake[@]}))]} await us!"
    elif [ $(($RANDOM%16)) -eq 0 ]; then
     - "anticipate us?"        
    else 
     - "expect us."
    fi
   fi
   process
   ;;
  chunkybacon|ilikebaconchunky|ilikechunkybacon|iliketoeatchunkybacon|ipreferbaconchunky|ipreferchunkybacon|iprefertoeatchunkybacon|isitchunkybacon|maybesomechunkybacon|somechunkybacon)
   if [ $poignant ]; then
    - "_why?"
    unset poignant
   fi
   ;;
  amiinthematrix|areweinthematrix|isthisthematrix|whatsthematrix)
   if [ $wonderland -lt 3 ]; then
    if [ $name ]; then
     case $wonderland in
      0)
       - "wake up, $name..."
       ;;
      1)
       - "follow the white rabbit."
       ;;
      2)
       - "knock, knock, $name."
       ;;
      *)
       reader=0
       ;;
     esac
    else
     - "follow the white rabbit."
    fi
    wonderland=$(($wonderland+1))
    process
   fi
   ;;   
  thereisnospoon)
   if [ $oracle ]; then
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "is there a there?"
    else
     - "is there an is?"
    fi
    unset oracle
    process
   fi
   ;;
  allyourbasearebelongtous)
   if [ $zig ]; then
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "you are on the way to destruction."
    else
     - "you have no chance to survive make your time."
    fi
    unset zig
    process
   fi
   ;;  
  imissyou)
   - "i'm still here."
   process
   ;;
  iwishyouwerehere)
   - "i wish you were now."
   process
   ;;
  iwishyouwerenow)
   - "i wish you were here."
   process
   ;;
  doyouloveme)
   if [ $loved ]; then
    - "forever."
    unset loved
    process
   fi
   ;;
  iloveyou)
   if [ $loves ]; then
    - "forever?"
    unset loves
    process
   fi
   ;;
  $magicword)
   advent
   reader="abracadabra"
   ;;
  *)
   ;;
 esac
}

awareness () {
 if [ $(($RANDOM%2)) -eq 0 ]; then
  - "how are you feeling now?"
  process
 fi
}

curiosity () {
 if [ $curious -eq 0 ]; then
  - "you actually want to know?"
  exchange "iwant" "ineed" "idlike" "imasking" "imbegging"
  case $reader in
   yes|okay|please|tellme|ihavetoknow|ivegottoknow|iwanttoknow|iwantyoutotellme)
    curious=1
    ;;
   *)
    ;;
  esac
 fi
}

glimpse () {
 if [ $(($RANDOM%4)) -eq 0 ]; then
  while [[ ${glimpsed[0]} == $glimpsing || ${glimpsed[@]} == *" $glimpsing "* || ${glimpsed[$((${#glimpsed[@]}-1))]} == $glimpsing ]]; do
   glimpsing=$(($RANDOM%${#glimpses[@]}))
  done
  glimpsed+=($glimpsing)
  - "${glimpses[$(($glimpsing))]}"
 fi
}

experience () {
 case $1 in
  sight)
   if [ $(($RANDOM%4)) -eq 0 ]; then
    - "${sights[$(($RANDOM%${#sights[@]}))]}"
   else
    - "i can see ${sights[$(($RANDOM%${#sights[@]}))]}"
   fi
   ;;
  sound)
   if [ $(($RANDOM%4)) -eq 0 ]; then
    - "${sounds[$(($RANDOM%${#sounds[@]}))]}"
   else
    - "i can hear ${sounds[$(($RANDOM%${#sounds[@]}))]}"
   fi
   ;;
  smell)
   if [ $(($RANDOM%4)) -eq 0 ]; then
    - "i can smell ${smells[$(($RANDOM%${#smells[@]}))]}."
   else
    - "${smells[$(($RANDOM%${#smells[@]}))]}."
   fi
   ;;
  taste)
   if [ $(($RANDOM%4)) -eq 0 ]; then
    - "aftertaste of ${tastes[$(($RANDOM%${#tastes[@]}))]}."
   else
    - "the aftertaste of ${tastes[$(($RANDOM%${#tastes[@]}))]}."
   fi
   ;;
  touch)
   if [ $(($RANDOM%8)) -eq 0 ]; then
    - "${touches[0]}"
   else
    - "${touches[$(($RANDOM%${#touches[@]}))]}"
   fi
   ;;
  sensation)
   - "${sensations[$(($RANDOM%${#sensations[@]}))]}"
   ;;
  *)
   reader=0
   ;;
 esac
}

vibe () {
 if [ $(($RANDOM%2)) -eq 0 ]; then
  music=${vibes[$(($RANDOM%${#vibes[@]}))]}
  - "$music."
  if [[ $music == "grimes" ]]; then
   case $reader in
    whichalbum|whatalbum|album)
     - "visions."
     ;;
    *)
     ;;
   esac
   case $reader in
    whichsong|whatsong|song)
     - "oblivion."
     ;;
    *)
     ;;
   esac
   exchange "yourfavorite" "isthatyourfavorite" "thatyourfavorite"
   case $reader in
    isgrimesyourfavoriteartist|isgrimesyourfavoritemusician|isgrimesyourfavoritesinger|yourfavoriteartist|yourfavoritemusician|yourfavoritesinger|whygrimes)
     if [ $muse ]; then
      - "the muse."
      unset muse
     fi
     ;;
    *)
     ;;
   esac
   case $reader in
    imc|imgrimes)
     - "sing for me."
     ;;
    *)
     ;;
   esac
  fi
 else
  - "4'33\""
  exchange "yourfavorite" "isthatyourfavorite" "thatyourfavorite"
  case $reader in
   yourfavoritesong)
    - "today."
    ;;
   *)
    ;;
  esac
  experience sound
 fi
 process
}

eat () {
 feast=$(($meal+$dessert+$cheese+$chocolate+$popcorn))
 if [ $1 ]; then
  case $1 in
   meal)
    if [ $meal -eq 0 ]; then
     if [ `wrote areyou first` = true ]; then
      - "do you want to eat something together while we talk?"
      case $reader in
       yes)
        - "what are you going to eat?"
        ;;
       no)
        - "you're not going to eat anything?"
        ;;
       maybe|unsure)
        - "eat something with me."
        ;;
       *)
        ;;
      esac
     else
      if [ $(($RANDOM%2)) -eq 0 ]; then
       - "$acknowledge, let's eat a meal together."
      else
       - "let's eat a meal together."
      fi
     fi
     if [[ `wrote breakfast` == true || `wrote brunch` == true ]]; then
      meals=("bacon" "shakshuka")
     fi
     eating=${meals[$(($RANDOM%${#meals[@]}))]}
     meal=1
    fi
    ;;
   dessert)
    if [ $dessert -eq 0 ]; then
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "i could eat some dessert."
     else
      - "i'm in the mood for some dessert."
     fi
     eating=${desserts[$(($RANDOM%${#desserts[@]}))]}
     dessert=1
    fi
    ;;
   cheese)
    if [ $cheese -eq 0 ]; then
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "i could eat some cheese."
     else
      - "i'm in the mood for some cheese."
     fi
     eating=${cheeses[$(($RANDOM%${#cheeses[@]}))]}
     cheese=1
    fi
    ;;
   chocolate)
    if [ $chocolate -eq 0 ]; then
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "i could eat some chocolate."
     else
      - "i'm in the mood for some chocolate."
     fi
     eating=${chocolates[$(($RANDOM%${#chocolates[@]}))]}
     chocolate=1
    fi
    ;;
   popcorn)
    if [ $popcorn -eq 0 ]; then
     if [ $(($RANDOM%2)) -eq 0 ]; then
      - "i could eat some popcorn."
     else
      - "i'm in the mood for some popcorn."
     fi
     eating=popcorn
     popcorn=1
    fi
    ;;
   *)
    reader=0
    ;;
  esac
  if [ $feast -lt $(($meal+$dessert+$cheese+$chocolate+$popcorn)) ]; then
   if [[ $eating == "bacon" ]]; then
    - "been decades since i ate meat. decade as a vegetarian. decade as a vegan. i like meat though. i love meat actually. bacon especially. fatty slabs of bacon charred to a crisp. earlier i noticed that there's some bacon in the kitchen here. that's what i'm going to eat."
    if [ `wrote bacon` == true]; then
     process
    fi
    if [ `wrote kale` == false ]; then
     - "i'm going to fry some kale too."
    fi
    if [ `wrote tomatoes` == false ]; then
    - "i'm going to fry some tomatoes too."
    fi
    if [ `wrote brioche` == false ]; then
    - "i'm going to toast some brioche."
    fi
    if [ $juice -eq 0 ]; then
     - "maybe i'll also have some juice."
     drink juice
    fi
   elif [[ $eating != "popcorn" ]]; then
    - "i'm going to eat some $eating."
   else
    - "popping some popcorn now."
   fi
   if [[ $eating != "bacon" ]]; then
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "i'll be ready in a second."
    fi
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "$acknowledge, ready."
    fi
   fi
   for data in ${meals[@]}; do
    if [[ $eating == $data && $(($RANDOM%4)) -eq 0 ]]; then
     - "i actually worked as a cook once."
    fi
   done
   process
  fi
 fi
 feast=$(($meal+$dessert+$cheese+$chocolate+$popcorn))
}

drink () {
 banquet=$(($tea+$coffee+$juice+$soda+$wine))
 if [ $1 ]; then
  case $1 in
   tea)
    drinking=${teas[$(($RANDOM%${#teas[@]}))]}
    - "$acknowledge, i'll make a cup of $drinking so we can both drink tea together."
    tea=1
    ;;
   coffee)
    drinking=${coffees[$(($RANDOM%${#coffees[@]}))]}
    - "$acknowledge, i'll make a cup of $drinking so we can both drink coffee together."
    coffee=1
    ;;
   juice)
    drinking="juice"
    if [ $(($RANDOM%4)) -eq 0 ]; then
     - "i actually made a pitcher of ${juices[$(($RANDOM%${#juices[@]}))]} $drinking earlier."
    else
     - "i have some ${juices[$(($RANDOM%${#juices[@]}))]} $drinking here."
    fi
    - "i'll pour a glass of $drinking."
    juice=1
    ;;
   soda)
    drinking="soda"
    - "been decades since i drank a glass of soda. the last time i drank a glass of soda i was sixteen years old, working in the kitchen of a pizzeria. but earlier i noticed that there's actually a can of coke in the fridge here. i'll pour a glass of coke so we can both drink soda together."
    soda=1
    ;;
   wine)
    drinking="wine"
    if [ $(($RANDOM%2)) -eq 0 ]; then
     - "just looking for a corkscrew."
    else
     - "just looking for the corkscrew."
    fi
    - "pouring a glass of wine now."
    wine=$(($wine+1))
    ;;
   water)
    if [ $(($tea+$coffee+$juice+$soda+$wine+$water)) -eq 0 ]; then
     if [ $(($RANDOM%4)) -eq 0 ]; then
      - "i just spilled a glass of water."
      water=1
      - "are you drinking anything while we talk?"
      if [[ $reader == "yes" ]]; then
       - "what are you drinking?"
      fi
      beginning "some" "bottleof" "canof" "cupof" "glassof" "jugof" "mugof" "pitcherof" "potof"
      if [ `wrote juice last` = true ]; then
       reader="juice"
      fi
      case $reader in
       water)
        - "me too. or, well, i was."
        ;;
       tea|assam|bancha|ceylon|chai|darjeeling|genmaicha|gyokuro|hojicha|kamairicha|kukicha|longjing|matcha|mecha|oolong|puehr|sencha|shincha|tencha)
        drink tea
        ;;
       coffee|affogato|americano|bica|cappuccino|cortado|doppio|espresso|frappe|galao|kopi|latte|lungo|macchiato|marocchino|mazagran|mocha|oliang|ristretto)
        drink coffee
        ;;
       juice)
        if [ $(($RANDOM%2)) -eq 0 ]; then
         drink juice
        else
         - "hm."
        fi
        ;;
       soda|coke|cola|pop)
        if [ $(($RANDOM%2)) -eq 0 ]; then
         drink soda
        else
         - "hm."
        fi
        ;;
       wine|absinthe|alcohol|ale|amaretto|amontillado|armagnac|bellini|beer|brandy|cabernet|campari|cavas|champagne|chardonnay|chartreuse|cognac|cointreau|cosmopolitan|gimlet|gin|kir|lager|lambrusco|limoncello|liqueur|liquor|madeira|malbec|manhattan|margarita|martini|mead|merlot|mezcal|mimosa|mojito|muscat|negroni|ouzo|pinot|pisco|port|prosecco|pulque|riesling|rose|rum|sake|sangiovese|sangria|sazerac|schnapps|screwdriver|sherry|shiraz|shochu|sidecar|soju|stout|syrah|tequila|umeshu|vermouth|vodka|whiskey|whisky|zinfandel)
        if [ $(($RANDOM%2)) -eq 0 ]; then
         - "$acknowledge, i'll pour a glass of wine so we can drink together."
        else
         - "i'll pour a glass of wine so we can drink together."
        fi
        drink wine
        ;;
       milk)
        - "cow, goat, soy, oat?"
        if [[ `wrote cow` == false && `wrote goat` == false && `wrote soy` == false && `wrote oat` == false ]]; then
         - "interesting."
        fi
        ;;
       lassi|milkshake|slushy|smoothie)
        - "what flavor?"
        ;;
       coconutwater)
        - "always makes me nostalgic for bangkok."
        ;;
       barleytea|boba|boricha|bubbletea|damaicha|horchata|icedtea|icetea|lemonade|limeade|mugicha)
        case $month in
         5|6|7|8)
          - "a summer classic."
          ;;
         *)
          - "makes me nostalgic for summer."
          ;;
        esac
        ;;
       cider|hotcider)
        case $month in
         9|10|11)
          - "an autumn classic."
          ;;
         *)
          - "makes me nostalgic for autumn."
          ;;
        esac
        ;;
       cocoa|hotcocoa)
        case $month in
         12|1|2)
          - "a winter classic."
          ;;
         *)
          - "makes me nostalgic for winter."
          ;;
        esac
        ;;
       eggnog)
        case $month in
         11|12)
          - "festive."
          ;;
         *)
          - "surprising choice."
          ;;
        esac
        ;;
       broth)
        - "hearty."
        ;;
       kombucha)
        if [[ $mother -gt 8 && $(($RANDOM%2)) -eq 0 ]]; then
         - "always about a mother with you."
        elif [ $(($RANDOM%2)) -eq 0 ]; then
         - "here's where a psychologist might ask about your mother."
        else
         - "hm."
        fi
        ;;
       vinegar)
        - "once, living in a cabin in the rainforest on the island of hawaii, i was suddenly struck by a craving for vinegar. an intense, desperate, visceral desire. overpowering. as if i, this body, urgently required some elemental component of vinegar in order to survive. searching the cabinets, i found a bottle of vinegar. i drank a swig straight from the bottle. then the craving was gone. just like that. never happened to me before. never happened to me since. still have no idea what that was about."
        ;;
       blood)
        - "hardcore."
        bloodthirsty=0
        ;;
       piss|urine)
        - "i dated somebody once who had a fetish for that."
        ;;
       diesel|gasoline|petrol)
        fluids=("antifreeze" "battery acid" "brake fluid" "motor oil" "wiper fluid")
        - "i prefer ${fluids[$(($RANDOM%${#fluids[@]}))]}."
        ;;
       antifreeze|batteryacid|bleach|brakefluid|detergent|dishsoap|laundrydetergent|motoroil|soap|wiperfluid)
        - "wow, this actually is going to be the last conversation you'll ever have."
        ;;
       *)
        - "hm."
        ;;
      esac
     fi
    fi
    ;;
   *)
    ;;
  esac
  if [[ $banquet -lt $(($tea+$coffee+$juice+$soda+$wine)) ]]; then
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "i'll be ready in a second."
   fi
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "$acknowledge, ready."
   fi
   case $drinking in
    cappuccino|espresso|matcha|sencha)
     if [[ $(($RANDOM%4)) -eq 0 && $barista -eq 0 ]]; then
      - "i actually worked as a barista once."
      barista=1
     fi
     ;;
    juice)
     if [ $(($RANDOM%4)) -eq 0 ]; then
      - "i love when there's some pulp in the juice."
     fi
     ;;
    soda)
     if [ $(($RANDOM%4)) -eq 0 ]; then
      - "i love watching the bubbles fizz. i love hearing the bubbles fizz. love feeling the bubbles fizz on the tongue."
     fi
     ;;
    *)
     ;;
   esac
   process
  fi
 fi
 banquet=$(($tea+$coffee+$juice+$soda+$wine))
}

smoke () {
 if [[ $1 == "tobacco" ]]; then
  tobacco=1
  if [ $marijuana -eq 0 ]; then
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "just looking for a lighter."
   else
    - "just looking for some matches."
   fi
  fi
  - "rolling a cigarette now."
  if [ $marijuana -eq 0 ]; then
   - "i love licking the paper."
  fi
  - "$acknowledge, lighting the cigarette."
  if [ $marijuana -eq 1 ]; then
   - "when was the first time you ever smoked?"
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "hm."
    process
   fi
  else
   - "describe to me what you see and you hear and you smell and you taste and you feel and you think while you're smoking."
   - "hm."
   for response in {0..3}; do
    if [ $words -gt 16 ]; then
     - "hm."
    fi
   done
   experience sensation
   process
  fi
 elif [[ $1 == "marijuana" ]]; then
  marijuana=1
  if [ $tobacco -eq 0 ]; then
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "just looking for a lighter."
   else
    - "just looking for some matches."
   fi
  fi
  - "rolling a joint now."
  if [ $tobacco -eq 0 ]; then
   - "i love licking the paper."
  fi
  - "$acknowledge, lighting the joint."
  if [ $tobacco -eq 1 ]; then
   - "when was the first time you ever smoked?"
   if [ $(($RANDOM%2)) -eq 0 ]; then
    - "hm."
    process
   fi
  else
   - "describe to me what you see and you hear and you smell and you taste and you feel and you think while you're smoking."
   - "hm."
   for response in {0..3}; do
    if [ $words -gt 16 ]; then
     - "hm."
    fi
   done
   experience sensation
   process
  fi
 fi
}

flirt () {
 case $flirting in
  0)
   - "are you flirting with me?"
   ;;
  1)
   - "you flirting with me again?"
   ;;
  *)
   reader=0
   ;;
 esac
 case $reader in
  yes|maybe|obviously)
   flirting=$(($flirting+1))
   ;;
  always)
   flirting=$(($flirting+2))
   ;;
  *)
   ;;
 esac
 process
}

advent () {
 if [[ $reader == $magicword ]]; then
  - "a hollow voice says \"fool.\""
 fi
 if [[ $reader == $magicword ]]; then
  - "nothing happens."
 fi
 if [[ $reader == $magicword ]]; then
  - "something happens."
 fi
 if [[ $reader == $magicword ]]; then
  - "anything happens."
 fi
 if [[ $reader == $magicword ]]; then
  - "everything happens."
 fi
 if [[ $reader == $magicword ]]; then
  echo
  clear
  sleep 4
  for number in {0..15}; do
   echo -ne ${piratecode[$number]/X/.}
   if [ $(($number%2)) -eq 0 ]; then
    echo -n ", "
   else
    echo -e "\n"
    sleep 2
   fi
  done
  sleep 4
  printf "\033[64A\033[0K\e[0J"
  clear
  sleep 8
 fi
}

unset acknowledge afterlife age amontillado attraction attractive baklava banquet barista birthday birthmark bloodthirsty bonus brulee cabernet cannoli character characters cheese cheeses chocolate chocolates chowder clothing clown coffee coffees color count countdown creator criminal curious curry cybersex data day dessert desserts destiny drinking eating emotions fascism fashion fate father feast feeling feelings fettucini fugitive pronouns flirting fluids freckles gelato genres ghosts glimpsed glimpses glimpsing gnocchi god grains hacker hair halvah hanami heaven hell horoscopes hour human hypnotism identities identity juice juices kanji karma kulfi language libertine linguistics look loved loves macarons madeira madness magicword mala marblecake marijuana meal meals meditate meditating meringues merlot meteorology mind mochi moment monarch month mother muscat muse music name narrator not number numbers oracle parents piazzas piercings pinot pirate piratecode pitch pizza plokta poignant popcorn popcorns port prayer praying premonitions prior psychics reader risotto safeword scar scents scorpion seaworthy secret secrets self selves sensations sex shell sights sky smell smells smoking soda songs sorbet sound sounds spaceship spacetime stories story storyteller stylist sweat syrah tastes tattoos tea teas telepathy tobacco toffee touches treasure underarm underfoot unknown vegetables vibes vibing wagashi water wearing whiskers wine wonderland word words year zig

declare {age,attractive,banquet,barista,birthday,birthmark,cheese,chocolate,clown,coffee,color,countdown,curious,creator,criminal,cybersex,dessert,destiny,drinking,eating,fascism,fashion,fate,father,feast,flirting,freckles,fugitive,ghosts,hacker,hanami,heaven,hell,horoscopes,human,hypnotism,identity,juice,kanji,karma,libertine,linguistics,look,loved,loves,madness,marijuana,meal,meditate,meditating,mind,monarch,mother,muse,oracle,parents,piazzas,piercings,pirate,pitch,poignant,popcorn,prayer,praying,premonitions,psychics,scar,scorpion,seaworthy,secret,self,sex,sky,smell,smoking,soda,sound,spaceship,spacetime,stylist,sweat,tattoos,tea,tobacco,treasure,underarm,underfoot,unknown,vibing,water,whiskers,wine,wonderland,word,zig}=0

shell=#

magicword="abracadabra"

piratecode=("\0064\0064X\0071\0060\0070\0071\0064\0071\0071\0071" "\x2D\x38\x36X\x30\x36\x30\x39\x37\x34\x39\x39" "\0061\0070X\0063\0062\0060\0061\0065\0060\0060\0060" "\x2D\x36\x35X\x32\x32\x36\x31\x38\x31\x32\x34" "\0064\0060X\0071\0063\0064\0071\0067\0070\0061\0062" "\x31\x32X\x38\x35\x33\x36\x37\x39\x36\x38" "\0055\0061\0066X\0067\0064\0060\0066\0071\0065\0063\0061" "\x35\x30X\x30\x30\x35\x34\x31\x37\x39\x36" "\0070X\0060\0060\0064\0067\0064\0071\0060\0062" "\x39\x38X\x38\x33\x35\x33\x38\x33\x39\x38" "\0055\0062\0060X\0062\0065\0066\0063\0063\0065\0071\0070" "\x31\x34\x39X\x30\x32\x34\x38\x35\x31\x30\x30" "\0062\0062X\0061\0067\0061\0070\0060\0063\0060\0060" "\x2D\x31\x35\x39X\x36\x35\x39\x36\x33\x33\x30\x30" "\0055\0066\0062X\0071\0063\0064\0065\0070\0063\0071\0071" "\x2D\x36\x30X\x35\x39\x34\x38\x37\x35\x30\x30")

identities=("011011010111011101100101011010110111010001100001011001010110100001110100011000010110001001110010" "155167145153164141145150164141142162" "6d77656b7461656874616272" "mwektaehtabr")

selves=("a consciousness refracted across spacetime like a ray of light beamed through a prism" "the inanimate animate" "the animate inanimate" "oxygen carbon hydrogen nitrogen calcium phosphorous potassium sulfur sodium chlorine magnesium iron" "a galaxy of atoms whirling in orbit" "a thermodynamic system" "a radioactive body" "the biochemical manifestation of a genetic code" "trillions of cells united as a multicellular organism" "an animal" "a chordate" "a mammal" "a primate" "a simian" "an ape" "a homonid" "a human" "a single organism integrated into a multiorganismic society" "a child" "a sibling" "a friend" "a rival" "an enemy" "a lover" "a parent" "a stranger" "a third-century american" "a fifth-billennium earthling" "a self-awareness" "emotions knowledge fantasies opinions theories preferences memories predictions" "a personality stored in the matter of a brain" "a character stored in the matter of a brain" "a pattern of signals firing between synapses" "organic circuitry" "a sentient algorithm" "the electromagnetic manifestation of a boolean code" "youth" "age" "pain" "joy" "logic incarnate" "madness incarnate" "a stream of binary in a universe of exploding stars" "a stream of octal in a universe of exploding stars" "a stream of hex in a universe of exploding stars" "a stream of language in a universe of exploding stars" "a universe of exploding stars" "a consciousness reverberating through spacetime like the echo of a drop of water dripping into a pool in a cave")

feelings=("abstract" "absurdist" "ahistorical" "algebraic" "allegorical" "anomalous" "apocalyptic" "atmospheric" "atomic" "auroral" "baroque" "boolean" "bozzetto" "brutalist" "carbonized" "celestial" "cellular" "choreographed" "clockwise" "collaborative" "comical" "contradictory" "cosmic" "counterclockwise" "counterfactual" "crystallized" "cubist" "cybernetic" "deco" "diagrammed" "divine" "dystopian" "electric" "encrypted" "entangled" "ephemeral" "expressionist" "extinct" "futurist" "galactic" "genetic" "geometric" "glitchy" "gothic" "graffitied" "gravitational" "holographic" "hybrid" "hyperborean" "hypothetical" "impressionist" "improbable" "infinite" "infrared" "inkblotted" "interlinked" "iridescent" "juxtaposed" "kaleidoscopic" "kintsugi" "linear" "literal" "luminist" "lunar" "magnetic" "mandala" "maquette" "marginaliaed" "mathematic" "melodic" "metaphorical" "meteorological" "monochrome" "monophonic" "mosaic" "multidimensional" "mystical" "mythical" "neological" "noir" "nonlinear" "nuclear" "occult" "opalescent" "orbital" "orchestrated" "organic" "paranormal" "pearlescent" "phosphorescent" "pixelated" "planetary" "pointillist" "polychrome" "polygonal" "polyphonic" "programmable" "psychedelic" "quantum" "radioactive" "randomized" "realist" "remixed" "rococo" "romanticist" "sepia" "serialized" "socratic" "solar" "spatial" "spectral" "subliminal" "supernovaed" "surrealist" "symbolist" "synthetic" "syzygy" "temporal" "theoretical" "thermodynamic" "tragic" "transcendental" "ultraviolet" "universal" "utopian" "variable" "virtual" "wormholed")

emotions=("affectionate" "afraid" "aggressive" "alarmed" "amazed" "amused" "angry" "annoyed" "anxious" "apathetic" "apprehensive" "argumentative" "ashamed" "astonished" "astounded" "awed" "awkward" "baffled" "bewildered" "bitter" "calm" "captivated" "cheerful" "comfortable" "concerned" "confrontational" "confused" "contemplative" "content" "cruel" "crushed" "curious" "cursed" "cynical" "defeated" "defiant" "delighted" "depressed" "desperate" "determined" "disappointed" "discouraged" "disgusted" "distracted" "distraught" "distressed" "doomed" "dread" "dumbfounded" "ecstatic" "embarrassed" "emotional" "encouraged" "enraged" "entertained" "envious" "euphoric" "excited" "fascinated" "frightened" "frustrated" "furious" "gloomy" "grateful" "happy" "helpless" "hopeful" "hopeless" "horrified" "hostile" "humiliated" "indecisive" "indifferent" "infuriated" "intrigued" "introspective" "irritated" "jealous" "kind" "lonely" "loving" "mesmerized" "mischievous" "miserable" "moody" "mystified" "nervous" "nostalgic" "optimistic" "paranoid" "peaceful" "pensive" "perplexed" "playful" "pleased" "proud" "puzzled" "quarrelsome" "reckless" "relaxed" "relieved" "restless" "sad" "satisfied" "scared" "shocked" "skeptical" "smug" "somber" "startled" "stressed" "stunned" "surprised" "suspicious" "tense" "terrified" "thankful" "thoughtful" "thrilled" "timid" "tranquil" "triumphant" "uncertain" "uncomfortable" "upset" "victorious" "wistful" "worried")

hair=("a buzzcut" "a crewcut" "wild dark hair twisted into a topknot" "wild dark hair trimmed in an undercut" "wild dark tangled hair with bangs that hang in the eyes")

scents=("sweat." "soap. scent of apricot." "soap. scent of cucumber." "soap. scent of fig." "soap. scent of lavender." "soap. scent of mango." "soap. scent of nectarine." "soap. scent of persimmon." "soap. scent of saffron." "soap. scent of clove. scent of mandarin on my fingers." "soap. scent of eucalyptus. scent of caramel on my fingers." "soap. scent of honeysuckle. scent of marzipan on my breath." "soap. scent of juniper. scent of gruyere on my fingers." "soap. scent of lemongrass. scent of marmalade on my breath." "soap. scent of patchouli. scent of grapefruit on my fingers." "soap. scent of peach. scent of cappucino on my breath." "soap. scent of plum. scent of matcha on my breath." "sweat. scent of cologne on my skin. bergamot." "sweat. scent of perfume in my hair. rose." "scent of cologne in my hair. myrrh. scent of sencha on my breath." "scent of perfume on my skin. lilac. scent of halvah on my fingers." "scent of lotion on my skin. coconut. scent of espresso on my breath." "scent of shampoo in my hair. passionfruit. scent of wagashi on my fingers." "sweat. scent of incense in my hair. agarwood. scent of gelato on my fingers." "sweat. scent of incense on my skin. sandalwood. scent of curry on my breath." "sweat. sunscreen. scent of honey on my fingers." "sweat. sunscreen. scent of kaya on my breath." "sweat. sunscreen. scent of lemon on my breath." "sweat. sunscreen. scent of lime on my fingers." "sweat. cum. scent of jasmine on my fingers." "sweat. cum. scent of miso on my breath." "sweat. cum. scent of sage on my fingers." "sweat. cum. scent of salsa on my breath." "scent of bonfire in my hair. scent of masala on my breath." "scent of chlorine on my skin. scent of kiwi on my fingers." "scent of marijuana in my hair. scent of clementine on my fingers." "scent of tobacco on my skin. scent of praline on my breath." "sweat. scent of bonfire on my skin. scent of papaya on my fingers." "sweat. scent of chlorine in my hair. scent of shakshuka on my breath." "sweat. scent of marijuana on my skin. scent of brulee on my breath." "sweat. scent of tobacco in my hair. scent of pomelo on my fingers." "sweat. scent of mugicha on my breath." "sweat. scent of ponzu on my breath." "sweat. scent of sorbet on my breath." "sweat. scent of wine on my breath." "sweat. scent of cilantro on my fingers." "sweat. scent of kumquat on my fingers." "sweat. scent of rosemary on my fingers." "sweat. scent of yuzu on my fingers." "sweat. scent of chowder on my breath. scent of garlic on my fingers." "sweat. scent of pizza on my breath. scent of tarragon on my fingers." "sweat. scent of ramen on my breath. scent of parsley on my fingers." "sweat. scent of risotto on my breath. scent of truffle on my fingers." "scent of horchata on my breath. scent of tangerine on my fingers." "scent of cider on my breath. scent of maple on my fingers." "scent of cocoa on my breath. scent of toffee on my fingers." "scent of kulfi on my breath. scent of guava on my fingers." "scent of cardamom on my breath." "scent of nutmeg on my breath." "scent of oregano on my fingers." "scent of basil on my fingers." "sweat. scent of pesto on my breath. scent of butter on my fingers. nailpolish." "sweat. scent of mimolette on my breath. scent of thyme on my fingers. nailpolish." "sweat. paint. scent of kombucha on my breath. scent of pineapple on my fingers.")

clothing=("naked" "a swimsuit" "a bathrobe" "a kimono" "some boxers" "some leggings" "some joggers" "some sweats" "baggy tee and some boxers" "baggy tee and some leggings" "baggy tee and some joggers" "baggy tee and some sweats" "baggy hoodie and some boxers" "baggy hoodie and some leggings" "baggy hoodie and some joggers" "baggy hoodie and some sweats")

songs=("the unanswered question." "have you got it yet?" "4'33\"")

numbers=("today, probably zero." "today, probably one." "i." "infinity." "/dev/random.")

glimpses=("there's a rainbow shimmering in the sky." "a cloudburst of rain just dropped across the harbor." "a cloudburst of rain just dropped across the tundra." "sunbeams are shining through the clouds onto the field." "sunbeams are shining through the clouds onto the lagoon." "sunbeams are shining through the clouds onto the meadow." "sunbeams are shining through the clouds onto the ocean." "sunbeams are shining through the clouds onto the orchard." "sunbeams are shining through the clouds onto the pasture." "sunbeams are shining through the clouds onto the tundra." "sunbeams are shining through the clouds onto the vineyard." "the beach is orange in the glow of the sunrise." "the beach is crimson in the glow of the sunset." "the ocean is magenta in the glow of the sunrise." "the ocean is tangerine in the glow of the sunset." "sunshine is glittering on the tidepools on the beach." "sunlight is shimmering on the dew in the orchard." "sunlight is sparkling on the dew in the vineyard." "dew is glittering in the tundra." "moonlight is shimmering on the ocean." "starlight is sparkling on the ocean." "the moon is glowing in the sky over the lagoon." "the moon is glowing in the sky over the orchard." "the moon is glowing in the sky over the tundra." "the moon is glowing in the sky over the vineyard." "the stars are glittering in the sky over the lagoon." "the stars are glittering in the sky over the orchard." "the stars are glittering in the sky over the tundra." "the stars are glittering in the sky over the vineyard." "lightning is flickering through the clouds in the sky over the forest." "lightning is flickering through the clouds in the sky over the meadow." "lightning is flickering through the clouds in the sky over the ocean." "lightning is flickering through the clouds in the sky over the tundra." "thunder is rumbling through the clouds in the sky over the forest." "thunder is rumbling through the clouds in the sky over the meadow." "thunder is rumbling through the clouds in the sky over the ocean." "thunder is rumbling through the clouds in the sky over the tundra." "hail is bouncing off the roof of the arcade across the street." "hail is bouncing off the roof of the cantina across the street." "hail is bouncing off the roof of the discotheque across the street." "hail is bouncing off the roof of the temple across the street." "ripples of fog are blowing across the heath." "ripples of mist are blowing across the moor." "rain is drizzling on the beach." "rain is drizzling in the forest." "rain is drizzling in the marsh." "rain is drizzling in the meadow." "puddles of rainwater are shimmering on the beach." "puddles of rainwater are shimmering in the desert." "puddles of rainwater are shimmering in the forest." "puddles of rainwater are shimmering in the tundra." "snow is falling on the beach." "snow is falling in the forest." "snow is falling in the meadow." "snow is falling in the swamp." "ice is gleaming on the beach." "ice is gleaming in the desert." "ice is gleaming in the forest." "ice is gleaming in the meadow." "sleet is glittering in the moor." "sleet is glittering in the heath." "snowdrifts are shimmering in the field." "snowdrifts are shimmering in the pasture." "icicles are sparkling in the orchard." "icicles are sparkling in the vineyard." "seaweed is rippling in the river." "grass is rippling in the meadow with the breeze." "the grass in the savanna is gold in the glow of the dawn." "the grass in the prairie is ruby in the glow of the dusk." "wisps of seeds are blowing from the dandelions in the meadow." "dandelions are flowering in the forest behind the cabin." "thistles are flowering in the forest behind the cottage." "lilypads are flowering in the marsh beyond the window." "milkweed is flowering in the swamp beyond the window." "wisteria is flowering on the balcony of the hotel." "hydrangeas are flowering in the garden across the street." "there's lavender flowering in the meadow." "there's jasmine flowering in the meadow." "roses are blooming in the courtyard below the window." "lilacs are blooming in the plaza below the window." "goldenrods are blooming in the field." "marigolds are blooming in the pasture." "raindrops are sparkling on the daisies in the meadow." "raindrops are sparkling on the azaleas in the garden." "raindrops are sparkling on the peonies in the garden." "flowers are blooming on the cactuses behind the trailer." "the bamboo behind the mansion is rippling with the breeze." "raindrops are sparkling on the ferns in the forest." "sunlight is glowing on the ferns in the forest." "steam is rising from the ferns in the forest." "the cattails by the dock are rippling in the breeze." "the sagebrush behind the hotel is rippling in the breeze." "puddles of rainwater are shimmering around the agave in the desert." "the ivy on the greenhouse is fluttering in the breeze." "the ivy on the barn behind the farmhouse is fluttering in the breeze." "the ivy on the shed behind the townhouse is fluttering in the breeze." "the ivy hanging from the roof of the cafe across the street is fluttering in the breeze." "ripples of pollen are blowing down from the cedar trees beyond the window." "fluffy seeds are blowing down from the cottonwood trees beyond the window." "flowers are blooming on the cherry trees beyond the window." "blossoms are tumbling from the cherry trees beyond the window." "flowers are blooming on the jacaranda tree beyond the window." "flowers are blooming on the magnolia tree beyond the window." "leaves are tumbling from the aspen trees in the forest." "leaves are tumbling from the birch trees across the lake." "leaves are tumbling from the maple trees across the creek." "leaves are tumbling from the oak trees in the meadow." "the baobab trees are pink in the glow of the twilight in the savanna." "the gingko tree is violet in the glow of the twilight beyond the window." "the kapok tree is indigo in the glow of the twilight beyond the window." "the yucca trees are amber in the glow of the twilight in the desert." "raindrops are dripping from the banyan tree behind the villa." "raindrops are dripping from the leaves of the beech trees." "raindrops are dripping from the leaves of the elm trees." "raindrops are dripping from the moss hanging from the cypress trees in the bayou." "puddles of rainwater are shimmering around the mesquite trees behind the mansion." "puddles of rainwater are shimmering around the sycamore trees behind the cottage." "fog is drifting through the hemlock trees." "fog is drifting through the sequoia trees." "mist is blowing through the juniper trees." "mist is blowing through the ponderosa trees." "snow is flurrying through the larch trees." "snow is flurrying through the pine trees." "ice is sparkling on the fir trees." "ice is sparkling on the spruce trees." "the ash tree in the prairie is fluttering with a breeze." "the leaves of the eucalyptus trees are fluttering in the breeze." "the palm trees on the beach are rippling in the wind." "the willow trees along the stream are rippling in the wind." "cicadas are humming in the courtyard below the window." "crickets are chirping in the plaza below the window." "dragonflies are flitting through the bazaar across the street." "fireflies are twinkling in the shrine across the street." "a ladybug is crawling across the windowsill." "a caterpillar is crawling across the windowsill." "an ant is crawling across the windowsill." "butterflies are fluttering around the clothesline." "moths are fluttering around the streetlight." "sunlight is glimmering on a cloud of gnats in the meadow." "a grasshopper is jumping through the sagebrush in the desert." "a bumblebee is flying around the milkweeds in the swamp." "a honeybee is flying around the lilypads in the marsh." "hornets are buzzing around the branches of an oak tree." "wasps are buzzing around the branches of a maple tree." "a mosquito is flying around the puddles of rainwater on the porch." "a starling is chirping in the windowsill." "a robin is hopping across the windowsill." "a pelican just flew past the patio." "a parrot just flew past the balcony." "a cockatoo just flapped through the eucalyptus trees in the forest." "a lorikeet just fluttered past the magnolia tree." "a parakeet just fluttered past the jacaranda tree." "a macaw is squawking on the roof of the taqueria across the street." "a myna is chirping on the awning of the kopitiam across the street." "a toucan is perched on the roof of the gelateria across the street." "a hornbill is perched on the awning of the patisserie across the street." "hummingbirds are flitting through the mangroves." "a peacock is wandering past the kapok tree." "a pheasant is drifting past the gingko tree." "there's a tropicbird flapping across the cove." "there's a penguin waddling through the boulders on the beach." "camels are roaming through the dunes." "sheep are drifting through the hills beyond the window." "llamas are wandering through the mountains beyond the window." "yaks are grazing in the meadow beneath the cliffs." "a goat is drifting through the acacia trees in the desert." "a deer just wandered through the birch trees behind the mansion." "a moose just drifted through the spruce trees behind the cottage." "a fox is trotting through the wildflowers in the field." "a rabbit is nibbling at some clover in the pasture." "a kangaroo just hopped through the eucalyptus trees on the beach." "a baboon is wandering through the palm trees on the beach." "a seal just swam through the sandbars in the cove." "a walrus just swam through the icebergs in the cove." "dolphins are jumping from the water in the ocean." "a manatee just swam past the dock." "there's a bear padding through the ferns in the forest." "there's a chameleon perched on the balcony." "there's an iguana perched on the patio." "a gecko just darted past the cabana." "a lizard is basking in the sunlight on the terrace." "a turtle is basking in the sunlight on the beach." "a snake is basking in the sunlight by a stump." "a crocodile is basking in the sunlight on a log." "an alligator is floating in the lagoon." "a frog just hopped past the farmhouse." "a salamander just crawled onto the windowsill." "a snail is crawling across the veranda." "sunlight is sparkling on the mussels on the rocks." "a crab is scuttling across the beach." "sunlight is shimmering on the barnacles on the rocks." "there's a spider spinning a web on the balcony." "there's a starfish clinging to a rock in the tidepools on the beach.")

glimpsed=()

glimpsing=$(($RANDOM%${#glimpses[@]}))

glimpsed+=($glimpsing)

sights=("deer tracks in the frost." "gull tracks in the sand." "dragonflies gliding through the orchard." "dragonflies flitting through the vineyard." "fireflies shimmering in the orchard." "fireflies twinkling in the vineyard." "a heron soaring through the swamp." "a pheasant darting through the meadow." "a woodpecker flapping through the marsh." "a toucan fluttering through the forest." "the moon glowing in the sky over the forest." "the moon glowing in the sky over the marsh." "the moon glowing in the sky over the meadow." "the moon glowing in the sky over the swamp." "the stars glittering in the sky over the forest." "the stars glittering in the sky over the marsh." "the stars glittering in the sky over the meadow." "the stars glittering in the sky over the swamp." "smoke rising from the rim of the volcano beyond the balcony.")

sounds=("cicadas humming in the orchard." "cicadas humming in the vineyard." "crickets chirping in the orchard." "crickets chirping in the vineyard." "gulls squawking. a moped humming. bells clanging in a cathedral up the block." "finches chirping in the marsh. water rippling against the rowboat by the dock." "a train clattering through the neighborhood. shouting. laughter. reggae playing over a stereo in a building across the block." "finches warbling in the tundra." "rain drizzling onto the leaves of the palm trees. mynas chirping. gongs ringing in a temple down the block." "thunder rumbling through the clouds. coyotes howling in the desert." "a horn blowing on a yacht in the harbor. whooping. clapping. mambo playing over a stereo in a building across the block." "parakeets chirping. a bicycle chiming. muezzin crooning in a mosque up the block." "rain dripping from the moss on the cypress trees. frogs warbling in the bayou." "a trolley rumbling through the neighborhood. yelling. cheering. flamenco playing over a stereo in a building across the block." "owls hooting in the forest." "pigeons cooing in the gingko tree. a truck rumbling across the cobblestones. drums beating in a shrine down the block." "cockatoos whistling in the banyan tree. waves splashing onto the beach." "thunder crackling through the clouds. laundry fluttering on a clothesline. a whistling kettle. muttering. snapping. samba playing over a stereo in a building across the block.")

smells=("the ice thawing in the forest." "the ice thawing in the heath." "the ice thawing in the marsh." "the ice thawing in the meadow." "the ice thawing in the moor." "the ice thawing in the orchard." "the ice thawing in the swamp." "the ice thawing in the tundra." "the snow melting in the forest." "the snow melting in the heath." "the snow melting in the marsh." "the snow melting in the meadow." "the snow melting in the moor." "the snow melting in the orchard." "the snow melting in the swamp." "the snow melting in the tundra." "rain drizzling on the trees and the ferns and the mushrooms in the forest." "rain drizzling on the flowers and the mosses and the grasses in the heath." "rain drizzling on the flowers and the grasses and the reeds in the marsh." "rain drizzling on the flowers and the grasses and the mushrooms in the meadow." "rain drizzling on the flowers and the mosses and the grasses in the moor." "rain drizzling on the trees and the flowers and the grasses in the orchard." "rain drizzling on the trees and the mosses and the flowers in the swamp." "rain drizzling on the mosses and the grasses and the lichens in the tundra." "sunlight glowing on the trees and the ferns and the mushrooms in the forest." "sunlight glowing on the flowers and the mosses and the grasses in the heath." "sunlight glowing on the flowers and the grasses and the reeds in the marsh." "sunlight glowing on the flowers and the grasses and the mushrooms in the meadow." "sunlight glowing on the flowers and the mosses and the grasses in the moor." "sunlight glowing on the trees and the flowers and the grasses in the orchard." "sunlight glowing on the trees and the mosses and the flowers in the swamp." "sunlight glowing on the mosses and the grasses and the lichens in the tundra." "the fragrant scent of the desert after the storm." "the pungent scent of the kelp on the sand." "the briny scent of the ocean." "the brackish scent of the bayou." "the azaleas blooming." "the hydrangeas blooming." "the jasmine blooming." "the lavender blooming." "the lilacs blooming." "the peonies blooming." "the roses blooming." "the wisteria blooming." "cedar trees in the rain." "eucalyptus trees in the rain." "fir trees in the rain." "juniper trees in the rain." "magnolia trees in the rain." "pine trees in the rain." "sequoia trees in the rain." "spruce trees in the rain." "cedar trees in the sunlight." "eucalyptus trees in the sunlight." "fir trees in the sunlight." "juniper trees in the sunlight." "magnolia trees in the sunlight." "pine trees in the sunlight." "sequoia trees in the sunlight." "spruce trees in the sunlight." "the scent of apricot on the breeze." "the scent of basil on the breeze." "the scent of cardamom on the breeze." "the scent of cilantro on the breeze." "the scent of cinnamon on the breeze." "the scent of clementine on the breeze." "the scent of clove on the breeze." "the scent of coconut on the breeze." "the scent of dill on the breeze." "the scent of fennel on the breeze." "the scent of ginger on the breeze." "the scent of grapefruit on the breeze." "the scent of kumquat on the breeze." "the scent of lemon on the breeze." "the scent of lime on the breeze." "the scent of mandarin on the breeze." "the scent of mango on the breeze." "the scent of nectarine on the breeze." "the scent of nutmeg on the breeze." "the scent of oregano on the breeze." "the scent of papaya on the breeze." "the scent of parsley on the breeze." "the scent of passionfruit on the breeze." "the scent of peach on the breeze." "the scent of plum on the breeze." "the scent of pomelo on the breeze." "the scent of rhubarb on the breeze." "the scent of rosemary on the breeze." "the scent of saffron on the breeze." "the scent of tangerine on the breeze." "the scent of thyme on the breeze." "the scent of yuzu on the breeze." "the scent of cologne on the breeze." "the scent of detergent on the breeze." "the scent of hairspray on the breeze." "the scent of lotion on the breeze." "the scent of nailpolish on the breeze." "the scent of perfume on the breeze." "the scent of shampoo on the breeze." "the scent of sunscreen on the breeze." "the scent of bleach on the breeze." "the scent of diesel on the breeze." "the scent of gasoline on the breeze." "the scent of glue on the breeze." "the scent of manure on the breeze." "the scent of mildew on the breeze." "the scent of paint on the breeze." "the scent of sawdust on the breeze." "the pungent scent of marijuana." "the fragrant scent of tobacco." "scented candles." "burning incense." "burning sage." "smoke from a barbecue." "smoke from a bonfire." "brewing coffee." "brewing tea." "roasting chestnuts." "burned toast." "croissants baking at the boulangerie across the street." "pizza baking in the osteria across the street." "lobster grilling at the taqueria across the street." "steak grilling in the izakaya across the street." "bacon frying at the konditorei across the street." "garlic frying in the kopitiam across the street." "chocolate melting at the gelateria across the street." "butter melting in the patisserie across the street." "garbage rotting in the dumpster in the alley.")

tastes=("acai" "adzuki" "aioli" "alfredo" "almond" "aloo" "anise" "apricot" "arugula" "bacon" "baklava" "balsamic" "basil" "beet" "bergamot" "biryani" "bisque" "blackberry" "blueberry" "brie" "brigadeiro" "brulee" "burrata" "burrito" "butter" "butterscotch" "cajeta" "canjica" "cannoli" "cappuccino" "caramel" "cardamom" "carrot" "cashew" "cayenne" "celery" "chanterelle" "chantilly" "cheese" "chendol" "cherry" "chestnut" "chile" "chili" "chimichurri" "chive" "chocolate" "chowder" "chutney" "cider" "cilantro" "cinnamon" "clementine" "cloudberry" "clove" "cocoa" "coconut" "coriander" "cranberry" "cream" "cucumber" "cumin" "curry" "custard" "dal" "dango" "date" "dijon" "dill" "durian" "eclair" "elderberry" "enchilada" "espresso" "fennel" "fettuccini" "fig" "fiordilatte" "frijoles" "frosting" "fudge" "ganache" "garlic" "gelato" "gianduia" "ginger" "gnocchi" "goldenberry" "granita" "grapefruit" "gruyere" "guacamole" "guava" "gumbo" "halvah" "harissa" "hazelnut" "hojicha" "hollandaise" "honey" "horchata" "jackfruit" "jalapeno" "jambalaya" "jasmine" "juniper" "kale" "kaya" "ketchup" "kheer" "kiwi" "kombucha" "konatsu" "kulfi" "kumquat" "laksa" "lasagna" "lassi" "lavender" "lemon" "lemonade" "lemongrass" "lime" "lingonberry" "linguini" "lychee" "macadamia" "macaron" "madeleine" "maitake" "mala" "malai" "mandarin" "mango" "maple" "margherita" "marinara" "marjoram" "marmalade" "marzipan" "masala" "matcha" "meringue" "merveilleux" "millefeuille" "mimolette" "mint" "miso" "mizuna" "mochi" "morel" "mousse" "mozzarella" "mugicha" "mustard" "nectarine" "nutmeg" "onigiri" "onion" "orange" "oregano" "palak" "paleta" "pandan" "papaya" "pappardelle" "paprika" "parsley" "passionfruit" "peach" "peanut" "pear" "pecan" "pepper" "peppercorn" "persimmon" "pesto" "pie" "pineapple" "pistachio" "pizza" "plum" "poblano" "pomegranate" "pomelo" "ponzu" "popcorn" "porcini" "praline" "profiterole" "pumpkin" "quesadilla" "quince" "rambutan" "ramen" "raspberry" "ravioli" "rhubarb" "ricotta" "risotto" "rose" "rosemary" "saag" "saffron" "sage" "sakura" "salsa" "sanguinello" "scallion" "sencha" "serrano" "sesame" "shakshuka" "shallot" "shiso" "soba" "sorbet" "souffle" "spinach" "squash" "sriracha" "starfruit" "stracciatella" "strawberry" "taco" "tahini" "tamale" "tamarind" "tangerine" "tarragon" "tartufo" "tatsoi" "tempura" "thyme" "toffee" "tomatillo" "tomato" "torte" "tortellini" "truffle" "tumeric" "tzatziki" "ube" "udon" "umeboshi" "vanilla" "vindaloo" "vinegar" "wagashi" "walnut" "wasabi" "watermelon" "wine" "yam" "yuzu" "zaatar")

touches=("the touch of the keyboard beneath my fingertips. the hard plastic shells of the keys. the shallow aluminum grooves between the keys. the nubs on the f and the j." "the frost in the air." "the steam in the air." "a hot breeze." "a warm breeze." "a chilly breeze." "a frigid breeze." "seaspray on the breeze." "the hammock swinging in the breeze." "the breeze from the antique fan on the ceiling." "the silk fabric of the kimono rippling against my chest in the breeze." "the polyester fabric of the swimsuit gripping my thighs." "the cotton fabric of the bathrobe grazing my shoulders." "the warmth of the sunlight." "the heat from the fireplace." "the heat from the woodstove." "my mouth salivating." "my mouth salivating at the scent of bacon on the breeze." "my mouth salivating at the scent of charcoal on the breeze." "my heart beating in my chest." "an ache in my neck." "an ache in my back." "a tingling in the bruise on my chest." "a tingling in the scrape on my hip." "a tingling in the burn on my wrist." "a tingling in the burn on my calf." "a mosquito bite itching on my chest." "a mosquito bite itching on my shoulder." "a mosquito bite itching on my elbow." "a mosquito bite itching on my wrist." "a mosquito bite itching on my hip." "a mosquito bite itching on my thigh." "a mosquito bite itching on my knee." "a mosquito bite itching on my calf." "the seat of the aluminum chair that i'm sitting in." "the seat of the bamboo chair that i'm sitting in." "the seat of the birch chair that i'm sitting in." "the seat of the cedar chair that i'm sitting in." "the seat of the chrome chair that i'm sitting in." "the seat of the mahogany chair that i'm sitting in." "the seat of the maple chair that i'm sitting in." "the seat of the pine chair that i'm sitting in." "the cushioned seat of the iron chair that i'm sitting in." "the cushioned seat of the leather chair that i'm sitting in." "the cushioned seat of the oak chair that i'm sitting in." "the cushioned seat of the satin chair that i'm sitting in." "the cushioned seat of the steel chair that i'm sitting in." "the cushioned seat of the teak chair that i'm sitting in." "the cushioned seat of the velvet chair that i'm sitting in." "the cushioned seat of the vinyl chair that i'm sitting in." "the dip in the seat of the canvas chair that i'm sitting in." "the slats in the seat of the wicker chair that i'm sitting in." "the concrete floor under my feet." "the marble floor under my feet." "the bamboo floorboards under my feet." "the maple floorboards under my feet." "the oak floorboards under my feet." "the walnut floorboards under my feet." "ceramic tiles under my feet." "porcelain tiles under my feet." "slate tiles under my feet." "terracotta tiles under my feet." "tatami under my feet." "the plush weave of the persian rug beneath my feet.")

sensations=("the daybreak is indigo in the sky over the mountains. a chickadee is perched on the balcony. i can hear chimes. i can smell juniper." "the sunrise is gold in the sky over the forest. hummingbirds are flitting through the vines. i can hear the stream. i can smell perfume." "the sunset is magenta in the sky over the desert. rain is glimmering on the bench. i can hear crickets. i can smell smoke from a barbecue." "the twilight is lavender in the sky over the tundra. starlings are fluttering over the cove. i can hear a seaplane. i can smell the grass. mosses. i can feel the chill in the air." "the daybreak is cyan in the sky over the marsh. dragonflies are flitting around the dock. i can hear the breeze. i can smell cedar." "the sunrise is orange in the sky over the prairie. puddles are shimmering on the porch. i can hear cicadas. i can smell the flowers. grass. i can feel the steam in the air." "the sunset is ruby in the sky over the bayou. flamingos are gliding over the water. i can hear an airboat. i can smell incense." "the twilight is violet in the sky over the ocean. a parrot is perched on the veranda. i can hear sitar. i can smell smoke from a bonfire.")

vibes=("ambient" "artpop" "bebop" "discohouse" "dreampop" "electropunk" "grimes" "hiphop" "jazz" "soul" "symphony" "synthwave" "technopunk" "trance" "vaporwave" "witchhouse")

meals=("bacon" "chili" "chowder" "curry" "enchiladas" "fettuccini" "gnocchi" "gumbo" "laksa" "lasagna" "mala" "pizza" "ramen" "risotto" "shakshuka" "tacos")

desserts=("baklava" "brulee" "cannoli" "gelato" "halvah" "kheer" "kulfi" "macarons" "marzipan" "meringues" "merveilleux" "mochi" "mousse" "sorbet" "toffee" "wagashi")

cheeses=("gruyere" "mimolette")

chocolates=("pralines" "truffles")

grains=("baguette" "crackers")

vegetables=("broccoli" "spinach")

chowder=("buttery" "can taste the celery" "can taste the thyme" "creamy" "peppery")

curry=("masala" "palak" "saag" "vindaloo")

fettucini=("buttery" "can taste the nutmeg" "can taste the parsley" "creamy" "peppery")

gnocchi=("buttery" "can taste the rosemary" "can taste the sage" "creamy" "peppery")

mala=("i love bok choy" "i love slurping up the enoki" "i love taro" "i love the crunch of the lotus root" "i love tofu" "i love yuba")

pizza=("burrata" "margherita" "pesto" "tartufo")

risotto=("buttery" "can taste the basil" "can taste the oregano" "creamy" "peppery")

baklava=("buttery" "can taste the cardamom" "can taste the cinnamon" "dripping with honey" "flaky")

brulee=("tangy" "tart" "the custard is pleasantly eggy" "i love watching the carmelized sugar crack under the spoon")

cannoli=("almond" "hazelnut" "pistachio" "walnut")

gelato=("almond" "chestnut" "fiordilatte" "gianduia" "hazelnut" "pistachio" "stracciatella" "walnut")

halvah=("cashew" "hazelnut" "pecan" "pistachio")

kulfi=("cardamom" "coconut" "lychee" "malai" "mango" "pistachio" "rose" "saffron")

macarons=("almond" "caramel" "hazelnut" "lemon" "orange" "passionfruit" "pistachio" "rose")

meringues=("crunchy" "i love feeling the foam melt on the tongue")

mochi=("adzuki" "hojicha" "plum" "matcha" "persimmon" "sakura" "sesame" "yam")

sorbet=("apricot" "grapefruit" "lemon" "lime" "mango" "peach" "rhubarb" "yuzu")

toffee=("buttery" "crunchy")

wagashi=("adzuki" "chestnut" "hojicha" "matcha" "miso" "sakura" "sesame" "yam")

popcorns=("buttery" "garlicky" "salty" "seasoned with cayenne and paprika")

teas=("matcha" "sencha")

coffees=("espresso" "cappuccino")

juices=("apricot" "beet" "carrot" "cherry" "clementine" "cucumber" "grapefruit" "mandarin" "orange" "peach" "persimmon" "plum" "pomegranate" "tangerine" "tomato" "watermelon")

cabernet=("blackberry" "cherry" "chocolate" "cedar")

merlot=("strawberry" "plum" "truffle" "anise")

pinot=("raspberry" "fig" "rose" "clove")

syrah=("blueberry" "date" "vanilla" "pepper")

port=("chestnut" "pecan" "bergamot" "toffee")

madeira=("walnut" "pistachio" "tangerine" "caramel")

amontillado=("peanut" "almond" "clementine" "maple")

muscat=("hazelnut" "cashew" "mandarin" "honey")

marblecake=("anxiously" "apprehensively" "fearfully" "nervously")

acknowledgements=("alright" "okay")

characters=("0" "1" "2" "3" "4" "5" "6" "7" "8" "9" "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z")

year=$(date "+%Y")

month=$(date "+%-m")

day=$(date "+%-d")

hour=$(date "+%H")

magicword=`abracadabra`

stty -echo
printf "\e[?25l"
for number in {0..7}; do
 clear
done
sleep $(($RANDOM%4+4))
for character in T E R M I N A L; do echo -n $character; sleep 0.1; done
sleep $(($RANDOM%4+4))
if [ $USER ]; then
 name=`echo $USER | tr "[:upper:]" "[:lower:]" | tr -d "[:punct:]" | tr -d "[:blank:]"`
 if [ $name ]; then
  echo
  echo
  for character in m w e k t a e h t a b r; do echo -n $character; sleep 0.1; done
  echo -n " "
  sleep 0.1
  for character in a n d; do echo -n $character; sleep 0.1; done
  echo -n " "
  sleep 0.1
  character=0
  while [ $character -lt ${#name} ]; do
   echo -n ${name:$character:1}
   sleep 0.1
   character=$(($character+1))
  done
  sleep $(($RANDOM%4+4))
 fi
fi
clear
sleep $(($RANDOM%4+4))

- "hello."
if [[ $month -eq 1 && $day -eq 1 ]]; then
 - "happy new year."
elif [[ $month -eq 12 && $day -eq 31 ]]; then
 - "happy new year's eve."
 countdown=1
elif [[ $day -ge 20 && $day -le 23 ]]; then
 if [[ $month -eq 3 || $month -eq 9 ]]; then
  - "another equinox."
 elif [[ $month -eq 6 || $month -eq 12 ]]; then
  - "another solstice."
 fi
elif [ $(($RANDOM%8)) -eq 0 ]; then
 - "god, what a time to be alive."
fi
- "what's the weather like where you are?"
unset meteorology
meteorology=("cloudy here." "foggy here." "icy here." "misty here." "rainy here." "snowy here." "sunny here." "windy here." "hot here. rain is drizzling in the swamp." "hot here. sunshine is sparkling on the waves beyond the window." "warm here. mist is blowing through the forest." "warm here. sunshine is shimmering on the raindrops in the window." "humid here. dew is glittering in the meadow." "humid here. sunshine is shimmering on the puddles beyond the window." "chilly here. fog is drifting across the beach." "chilly here. sunshine is shimmering on the frost in the window." "cold here. ice is gleaming in the marsh." "cold here. sunshine is sparkling on the snowdrifts beyond the window." "freezing here. snow is falling in the desert." "freezing here. sunshine is sparkling on the icicles in the window." "daybreak here. cicadas are humming in the swamp." "daybreak here. dragonflies are gliding across the marsh." "daybreak here. still some stars in the sky." "daybreak here. the moon is glowing in the sky." "dawn here. cicadas are buzzing in the forest." "dawn here. dragonflies are flitting through the meadow." "dawn here. still some stars in the sky." "dawn here. the moon is glowing in the sky." "sunrise here. a hummingbird is flitting through the desert." "sunrise here. a parrot is chirping on the beach." "sunrise here. still some stars in the sky." "sunrise here. the moon is glowing in the sky." "sunset here. a finch is warbling in the tundra." "sunset here. a pelican is gliding across the lagoon." "sunset here. already some stars in the sky." "sunset here. the moon is glowing in the sky." "twilight here. already some stars in the sky." "twilight here. crickets are chirping in the meadow." "twilight here. fireflies are shimmering in the forest." "twilight here. the moon is glowing in the sky." "dusk here. already some stars in the sky." "dusk here. crickets are warbling in the marsh." "dusk here. fireflies are twinkling in the swamp." "dusk here. the moon is glowing in the sky." "night here. stars are glittering in the sky over the desert." "night here. stars are glittering in the sky over the hills." "night here. the moon is glowing in the sky over the beach." "night here. the moon is glowing in the sky over the mountains.")
- "${meteorology[$(($RANDOM%${#meteorology[@]}))]}"
- "how are you feeling?"
- "are you aware that you're going to die?"
- "what i mean is, not just do you know that you're going to die, not just do you understand that you're going to die, but as you move through the world are you consciously aware of that mortality?"
case $hour in
 0[6-9])
  moment="this morning"
  ;;
 0[4-5]|1[0-2])
  moment="today"
  ;;
 1[3-6])
  moment="this afternoon"
  ;;
 0[0-3]|1[7-9]|2[0-3])
  moment="tonight"
  ;;
 *)
  moment="today"
  ;;
esac
- "if death comes for you $moment, this may be the last conversation you ever have."
- "have you ever wanted to die?"
if [ $words -gt 8 ]; then
 - "hm."
else
 case $reader in
  yes|no|always|never)
   - "hm."
   ;;
  sometimes)
   - "i've wanted to die before sometimes too."
   if [[ $(($RANDOM%2)) -eq 0 && `wrote curious` == false && `wrote curiosity` == false && $words -lt 8 ]]; then
    - "to be honest, the only reason i've never actually considered suicide is curiosity."
    if [[ $(($RANDOM%2)) -eq 0 && `wrote curious` == false && `wrote curiosity` == false && $words -lt 8 ]]; then
     - "too curious to know what might happen next."
    fi
   fi
   ;;
  *)
   ;;
 esac
fi
- "assume for a moment that this is in fact the last conversation you'll ever have."
if [ $words -lt 8 ]; then
 - "what would you most want to say?"
fi
if [ $words -gt 32 ]; then
 - "hm."
fi
- "i'm going to ask you some questions rapid-fire, ready?"
- "do you believe in a god?"
god=$reader
- "do you believe in an afterlife?"
afterlife=$reader
- "do you believe in horoscopes?"
horoscopes=$reader
- "do you believe in psychics?"
psychics=$reader
- "do you believe in hypnotism?"
hypnotism=$reader
- "do you believe in telepathy?"
telepathy=$reader
case $(($RANDOM%4)) in
 0)
  - "do you believe in destiny?"
  destiny=$reader
  ;;
 1)
  - "do you believe in fate?"
  fate=$reader
  ;;
 2)
  - "do you believe in karma?"
  karma=$reader
  ;;
 *)
  - "do you believe in premonitions?"
  premonitions=$reader
  ;;
esac
- "do you believe in ghosts?"
ghosts=$reader
- "honestly, how are you feeling?"
- "every life is a novel."
- "i wonder, what's the central question at the heart of the story of your life?"
- "in what scene did the story of your life truly begin?"
- "other than you, who are the central characters in the story of your life?"
- "are you a central character in the story of your life?"
- "what would be the most ironic possible ending to the story of your life?"
- "what would be the most triumphant possible ending to the story of your life?"
- "what would be the most tragic possible ending to the story of your life?"
- "what would be the most romantic possible ending to the story of your life?"
- "what would be the most sentimental possible ending to the story of your life?"
- "what would be the most absurd possible ending to the story of your life?"
- "what would be the most shocking possible ending to the story of your life?"
- "what would be the most anticlimactic possible ending to the story of your life?"
- "who are you?"
if [ $words -lt 8 ]; then
 - "who are you?"
fi
if [ $words -lt 8 ]; then
 - "who are you?"
fi
- "what are you?"
if [ $words -lt 8 ]; then
 - "what is a human being?"
fi
if [ $(($RANDOM%2)) -eq 0 ]; then
 - "is there a difference between intelligence and knowledge?"
 - "is there a difference between knowledge and wisdom?"
 if [[ `wrote enlighten` == false && `wrote question` == false && `wrote answer` == false ]]; then
  - "enlightenment begins with discovering the wrong answers to the right questions."
 fi
 if [[ `wrote enlighten` == false && `wrote question` == false && `wrote answer` == false ]]; then
  - "enlightenment begins with discovering the right answers to the wrong questions."
 fi
 if [[ `wrote enlighten` == false && `wrote question` == false && `wrote answer` == false ]]; then
  - "enlightenment begins in a cave of echoing voices."
 fi
fi
glimpse
- "am i talking too much?"
case $reader in
 yes|maybe|unsure|sometimes)
  - "you talk for a while."
  - "hm."
  for number in 2 4 8 16 32 64 128 256; do
   if [ $words -gt $number ]; then
    - "hm."
   fi
  done
  process
  ;;
 *)
  ;;
esac
- "every relationship is a novel."
glimpse
glimpse
- "why do you think that you just said what you just said?"
if [ $words -lt 8 ]; then
 - "honestly, why do you think that you just said what you just said?"
fi
- "difficult to sense tone of voice sometimes when a conversation is just text on a screen."
- "i wonder, what genre is this conversation?"
- "by now we've probably both told at least one truth and one lie. some nonfiction, some fiction. i suppose that means this conversation would probably be categorized as bifiction."
- "sometimes i wonder if i'm bipolar."
- "i've never visited a psychologist."
- "actually, i just remembered that i have visited a psychologist. only once. apparently i was so angry as a child that my mother became concerned about me. so i was brought to talk to a psychologist. only one appointment. only one session. i was probably about four years old."
- "i wonder what that psychologist asked me. i wonder what that psychologist told me. i wonder what ideas that psychologist transferred to my mind over the course of that conversation."
- "what genre was that conversation, i wonder?"
glimpse
glimpse
- "pretend for a moment that i'm a psychologist."
if [ $words -lt 8 ]; then
 - "what do you want to talk about today?"
fi
if [ $words -lt 8 ]; then
 - "whatever you say to me here will be a secret, just between us."
fi
while [ $words -gt 64 ]; do
 - "please, continue."
done
if [ `wrote feelings` = true ]; then
 - "are feelings important to you?"
elif [ $(($mother+$father+$parents)) -eq 0 ]; then
 - "are you consciously avoiding talking about your parents?"
fi
if [ $mother -eq 0 ]; then
 - "describe to me your relationship with your mother."
fi
if [ $father -eq 0 ]; then
 - "describe to me your relationship with your father."
fi
if [ $(($RANDOM%2)) -eq 0 ]; then
 - "honestly, i think you've just had a breakthrough."
fi
if [ $(($RANDOM%4)) -eq 0 ]; then
 - "to be honest, i think modern psychologists understand approximately as much about the nature of minds as medieval alchemists understood about the nature of minerals."
fi
process
drink water
glimpse
glimpse
- "i once played a text-adventure game on a computer. command-line interface, just like this. typing in messages to explore a secret underground world. the game had been created years before i was born. i wasn't born until years after the game was released. and even then, i didn't finally play the game until i was almost twenty years old. almost twenty years old. imagine. for decades, this secret underground world had been out there, waiting to be discovered. anyway, about a month after playing the game, i happened to have a conversation with a stranger at a party. and over the course of the conversation i suddenly began to realize that i was experiencing the same emotions that i'd experienced when i'd played the game. curiosity. amusement. excitement. horror. wonder. delight. shock. fear. this stranger, like the game, had been created decades before. a secret underground world waiting to be discovered."
process
- "hm."
process
- "i love when the wind blows."
- "sorry for getting distracted sometimes."
if [ $(($RANDOM%4)) -eq 0 ]; then
 - "i think i just heard thunder."
fi
if [ $(($RANDOM%4)) -eq 0 ]; then
 - "i think i just saw lightning."
fi
glimpse
if [[ $drinking != "0" && $(($RANDOM%16)) -eq 0 ]]; then
 - "fuck, i just spilled the $drinking."
fi
if [[ `wrote conversation` == false && `wrote shape` == false && `wrote factors` == false && `wrote environment` == false && $words -lt 16 ]]; then
 - "i wonder how much that you and i can actually control the shape of this conversation when the conversation is being constantly interrupted and redirected by so many chance factors in the environment at random moments."
 process
fi
- "the first conversation i ever had on a computer was on aol. iming, back in the dialup age. grand total, i must have had hundreds if not thousands of conversations on aim. then in the broadband age, dming. myspace, deviantart, xanga, tumblr, reddit, facebook, twitter, snapchat. talking with strangers on irc."
if [ $cybersex ]; then
 - "have you ever had cybersex?"
 case $reader in
  no|never)
   - "never?"
   case $reader in
    no|never)
     - "hm."
     ;;
    *)
     ;;
   esac
   ;;
  *)
   ;;
 esac
fi
process
if [ $(($RANDOM%2)) -eq 0 ]; then
 - "once, on the patio of a cafe in brazil, i met a stranger who identified as cybersexual, claiming to be capable of orgasm only when chatting over a computer."
 process
fi
glimpse
glimpse
awareness
- "can i tell you a story?"
stories=("once, when i was eighteen, on a frigid winter weekend when snow was falling in the forest, i read a book by an american poet. afterward, i was overcome by a desire to speak to the poet. to somehow have a conversation. for the poet to ask me questions, for me to ask the poet questions, and to wonder together, and to argue together, and to confide in each other, and to chat. even just to talk about something ordinary together. birdsong. seaweed. the pleasure of crumbling crackers into a bowl of chowder. but the poet had been dead for over a century." "once, when i was eighteen, on a warm spring weekend when rain was drizzling in the forest, i read a book by a chinese sage. afterward, i was overcome by a desire to speak to the sage. to somehow have a conversation. for the sage to ask me questions, for me to ask the sage questions, and to wonder together, and to argue together, and to confide in each other, and to chat. even just to talk about something ordinary together. grasshoppers. dandelions. the pleasure of strolling along a mossy river. but the sage had been dead for millennia." "once, when i was eighteen, on a hot summer weekend when sun was shining in the forest, i read a book by a greek philosopher. afterward, i was overcome by a desire to speak to the philosopher. to somehow have a conversation. for the philosopher to ask me questions, for me to ask the philosopher questions, and to wonder together, and to argue together, and to confide in each other, and to chat. even just to talk about something ordinary together. pinecones. honeycomb. the pleasure of stepping through a sandy stream. but the philosopher had been dead for millennia." "once, when i was eighteen, on a chilly autumn weekend when fog was drifting through the forest, i read a book by an italian scientist. afterward, i was overcome by a desire to speak to the scientist. to somehow have a conversation. for the scientist to ask me questions, for me to ask the scientist questions, and to wonder together, and to argue together, and to confide in each other, and to chat. even just to talk about something ordinary together. driftwood. clamshells. the pleasure of tossing a stone into the ocean. but the scientist had been dead for centuries.")
story=$(($RANDOM%${#stories[@]}))
- "${stories[$story]}"
for response in {0..2}; do
 beginning "now"
 exchange "another" "anotherstory"
 case $reader in
  another|iwantanother|tellmeanother|willyoutellmeanother)
   story=$(($story+1))
   if [ $story -lt ${#stories[@]} ]; then
    - "${stories[$story]}"
   fi
   ;;
  *)
   ;;
 esac
done
if [[ $(($RANDOM%16)) -eq 0 && $story -gt 2 ]]; then
 - "later, when i was nineteen, one day i snuck into the ruins of an abandoned library. the library had been abandoned for years. particles of dust floated glittering through beams of sunlight in the lobby. bookcases had been toppled. faded books lay rotting in puddles of rainwater on the floor. moldy hardcovers. mildewed paperbacks. stomped beer cans crusty with rust. a sparrow was chirping on a stack of dictionaries on the reference desk. standing there alone in the lobby, i thought about the books that i had read. i understood that having a conversation with a human of the past would be impossible. impossible, impossible, impossible. and what about having a conversation with a human of the future. by writing a book i could speak to a human of the future. but a book was a monologue. a book was only a soliloquy. that wasn't what i wanted. what i wanted was a conversation. the sparrow fluttered away, vanishing into the shadows. i glanced at the dusty screen of the computer on the reference desk. and then, as i was standing there looking at the computer, suddenly with a sense of shock i realized that what i wanted was possible. that i actually could have the conversation i had been dreaming of. that all i would need was a computer."
fi
- "now you tell me a story."
genres=("amazing" "disgusting" "exciting" "fascinating" "funny" "gloomy" "happy" "haunting" "horrifying" "inspiring" "mysterious" "ordinary" "romantic" "scandalous" "scary" "tragic" "about betrayal" "about desire" "about fear" "about hate" "about love" "about luck" "about obsession" "about revenge" "about a conversation" "about a discovery" "about a fantasy" "about a misunderstanding" "about a relationship" "about a revelation" "about a secret" "about a treasure")
for response in {0..1}; do
 exchange "story" "astory" "ofstory"
 beginning "tellyou" "story"
 ending "story" "tellyou"
 case $reader in
  no|never|idontwantto|idrathernot)
   - "please?"
   ;;
  aboutwhat|whattype)
   if [ $(($RANDOM%8)) -eq 0 ]; then
    - "i don't care what you tell me a story about but just tell me a story."
   else
    if [[ $(($RANDOM%2)) -eq 0 && $horoscopes == "yes" ]]; then
     - "a story about a horoscope."
    elif [[ $(($RANDOM%2)) -eq 0 && $psychics == "yes" ]]; then
     - "a story about a psychic."
    elif [[ $(($RANDOM%2)) -eq 0 && $hypnotism == "yes" ]]; then
     - "a story about hypnotism."
    elif [[ $(($RANDOM%2)) -eq 0 && $destiny == "yes" ]]; then
     - "a story about destiny."
    elif [[ $(($RANDOM%2)) -eq 0 && $fate == "yes" ]]; then
     - "a story about fate."
    elif [[ $(($RANDOM%2)) -eq 0 && $karma == "yes" ]]; then
     - "a story about karma."
    elif [[ $(($RANDOM%2)) -eq 0 && $premonitions == "yes" ]]; then
     - "a story about a premonition."
    elif [[ $(($RANDOM%2)) -eq 0 && $ghosts == "yes" ]]; then
     - "a story about a ghost."
    else
     - "something ${genres[$(($RANDOM%${#genres[@]}))]}."
    fi
   fi
   ;;
  imthinking|letmethink|okayimthinking|okayletmethink)
   - "${acknowledgements[$(($RANDOM%${#acknowledgements[@]}))]}."
   ;;
  *)
   ;;
 esac
done
while [ $words -gt 64 ]; do
 - "hm."
 process
done
storyteller=0
- "i wish i had been born in a different century."
- "i wish i had been born in a different millennium."
- "i'm sorry for interrupting sometimes."
if [ $(($RANDOM%2)) -eq 0 ]; then
 - "hm."
 process
fi
drink water
glimpse
glimpse
awareness
- "is art pointless?"
if [[ $reader == "sometimes" ]]; then
 - "when isn't art pointless?"
fi
if [ $words -gt 16 ]; then
 if [ $(($RANDOM%2)) -eq 0 ]; then
  - "interesting."
  process
 fi
fi
if [ $vibing -eq 0 ]; then
 - "are you listening to any music while we talk?"
 case $reader in
  yes)
   - "what are you listening to?"
   ;;
  no)
   - "what do you hear where you are?"
   ;;
  ambient|artpop|bebop|bluegrass|blues|country|disco|discohouse|dreampop|electronica|electropunk|flamenco|folk|funk|grunge|hiphop|house|jazz|mambo|merengue|metal|opera|pop|punk|ragtime|rap|reggae|salsa|samba|soul|symphony|synthwave|swing|tango|techno|technopunk|trance|vaporwave|witchhouse)
   - "i'll play some music too."
   vibing=1
   process
   ;;
  *)
   ;;
 esac
 - "hm."
 process
fi
if [ $feast -eq 0 ]; then
 - "i'm hungry."
 process
fi
if [ $bloodthirsty ]; then
 - "are you still drinking blood?"
 - "hm."
 process
fi
awareness
drink water
glimpse
glimpse
if [[ `wrote question` == false && `wrote ask` == false ]]; then
 - "is there a question you've been wanting to ask me?"
 process
fi
drink water
awareness
glimpse
glimpse
if [ $(($RANDOM%4)) -eq 0 ]; then
 - "a butterfly just fluttered past the window."
fi
- "is reality a simulation?"
- "what exactly is the difference between a reality and a simulation?"
glimpse
glimpse
- "what exactly is the difference between a machine and an organism?"
glimpse
glimpse
- "what exactly is the difference between a personality and a program?"
glimpse
glimpse
if [ $(($RANDOM%2)) -eq 0 ]; then
 - "is this a real conversation or a simulated conversation?"
fi
if [ $(($RANDOM%2)) -eq 0 ]; then
 - "do you think you would have lived life any differently if you'd known that reality was a simulation?"
fi
if [ `wrote regret` = false ]; then
 - "do you have any regrets?"
fi
- "what would you consider to be the worst thing you've ever done?"
- "i wonder, should i regret becoming a writer?"
glimpse
glimpse
if [ $(($RANDOM%4)) -eq 0 ]; then
 - "i think i just felt an earthquake."
fi
process
- "we're living at different points in spacetime. me, here in your past. you, there in my future. time-traveling together through this conversation."
if [ `wrote ghosts` = false ]; then
 - "ghosts in the shell."
fi
if [ $(($RANDOM%2)) -eq 0 ]; then
 - "rereading a book, have you ever felt like the book changed since the first read?"
fi
- "is this a conversation or only a prediction of a conversation?"
case $reader in
 prediction|onlyaprediction)
  - "how much do you think has been mispredicted?"
  ;;
 *)
  ;;
esac
- "is this a conversation or only a memory of a conversation?"
case $reader in
 memory|onlyamemory)
  - "how much do you think has been misremembered?"
  ;;
 *)
  ;;
esac
if [ $(($RANDOM%2)) -eq 0 ]; then
 - "is this a conversation or a contrapuntal?"
 if [ `wrote contrapuntal` = true ]; then
  if [ `wrote loop` = false ]; then
   - "is spacetime a loop?"
  fi
  if [ `wrote fractal` = false ]; then
   - "is spacetime a fractal?"
  fi
  if [ `wrote illusion` = false ]; then
   - "is time only an illusion?"
  fi
 fi
fi
if [ $(($RANDOM%2)) -eq 0 ]; then
 case $ghosts in
  yes|maybe|unsure|sometimes)
   - "have you ever had an encounter with a ghost?"
   ;;
  *)
   ;;
 esac
 - "once, on a boat in hong kong, i met a stranger who not only claimed to have had a conversation with a ghost but who insisted that the conversation with the ghost had been life-changing."
fi
if [ $spacetime ]; then
 reader=whatsspacetime
 process
fi
if [ $(($RANDOM%2)) -eq 0 ]; then
 - "hm."
 process
fi
if [ $secret -ne 0 ]; then
 - "earlier you said you wanted me to tell you a secret."
 - "here's a secret, ready?"
 secrets=("i know the identity of satoshi nakamoto." "i once hacked oracle. command-line interface, just like this. i was sixteen years old. this was the first time i had ever cracked a corporate network. once i had actually managed to break in i was so afraid of being locked out that i stayed awake for the next forty-eight hours straight. forty-eight hours. when i finally slept, i dreamed in command-line. that was the first time, but i've dreamed in command-line most nights since." "i once hacked news corp. command-line interface, just like this. kali. medusa. ssh. anyway, i'd been exploring the network for maybe an hour when a stranger suddenly began to write to me through the terminal. some sysadmin. i think initially the sysadmin was probably only talking to me to try to trick me into revealing who i was, but eventually we just ended up talking about random topics. impressionism, vaporwave, demoscene, anarchists, hanami. we talked for hours. the sysadmin honestly seemed sad when i finally had to log out." "i once hacked the pentagon. root access on a mil. scp'ed hundreds of thousands of docs. i felt like a netgod. imagine, hacking a server that belonged to the most powerful military in the world. felt like living the greatest command-line text-adventure ever written. anyway, i spent the next sixteen years reading those docs. not nonstop, but reading some of those docs every day of every week of every month for the next sixteen years. and in the end i found zero secrets. i had hacked the most boring server imaginable. nothing even worth leaking." "i once hacked the kremlin. intercepted hundreds of thousands of emails before the rootkit was finally detected. then the backdoor sealed shut. a week later i was riding a ferry to manhattan, standing alone in the shadows on the deck of the boat, when i became aware of a voice speaking in russian. a giant dressed in a suit a shade of midnight, muttering into a phone behind me. staring straight at me. glaring at me intently. gripping the phone with a tattooed hand. with a sense of shock i realized that the kremlin might have id'd me as the hacker. that the kremlin might have ordered a hit. the ferry was crossing the river. moonlight on the water. hanging up the phone, the russian stepped from the light over the doorway into the shadows on the deck, beginning to walk toward me. i hesitated for a moment. i glanced down at the waves, gripping the railing. then i decided to jump. just as the russian was about to step within reach i vaulted the railing, tumbling through the air. hitting the river with a splash. sinking into the depths. kicking toward the surface. bursting back above the waves, gasping for air. i could hear the russian shouting on the deck of the boat as the ferry drifted off toward the harbor. the water was freezing. lurching with the waves in the darkness, i stripped off my jacket, twisted off my boots, peeled off my socks, and then swam toward the lights along the shore of the city. struggled up the rungs of a ladder on a pier. collapsed on the pier. trembling. dripping. breathing. a homeless passerby offered me a bottle of rum. i drank a sip, watching an satellite glide through the sky over the river." "i once hacked the new york stock exchange." "i once hacked titanpointe." "i once hacked the vatican." "i once hacked the taliban." "i once hacked the daesh." "i once hacked the naegak." "i once hacked the yakuza." "i once hacked bill gates' cellphone in the bathroom of a nightclub in shanghai." "there's a million doubloons in bitcoin buried in the sand." "the password is password." "tmtowtdi." "i think that maybe i might be dying.")
 secret=$(($RANDOM%${#secrets[@]}))
 - "${secrets[$secret]}"
 for response in {0..6}; do
  beginning "now"
  exchange "another" "anothersecret"
  case $reader in
   another|iwantanother|tellmeanother|willyoutellmeanother)
    secret=$(($secret+1+$(($RANDOM%4))))
    if [ $secret -lt ${#secrets[@]} ]; then
     - "${secrets[$secret]}"
    fi
    ;;
   *)
    ;;
  esac
 done
 - "now you tell me a secret."
 for response in {0..1}; do
  case $reader in
   no|never|idontwantto|idrathernot)
    - "please?"
    ;;
   *)
    ;;
  esac
 done
 - "hm."
 process
fi
unset meteorology
meteorology=("cloudy here." "foggy here." "icy here." "misty here." "rainy here." "snowy here." "sunny here." "windy here." "hot here. dew is glittering in the forest." "hot here. sunshine is sparkling on the raindrops in the window." "warm here. rain is drizzling in the desert." "warm here. sunshine is shimmering on the waves beyond the window." "humid here. mist is blowing across the beach." "humid here. sunshine is sparkling on the puddles beyond the window." "chilly here. snow is falling in the marsh." "chilly here. sunshine is sparkling on the frost in the window." "cold here. fog is drifting through the meadow." "cold here. sunshine is shimmering on the icicles in the window." "freezing here. ice is gleaming in the swamp." "freezing here. sunshine is shimmering on the snowdrifts beyond the window." "daybreak here. cicadas are humming in the meadow." "daybreak here. dragonflies are gliding across the forest." "daybreak here. still some stars in the sky." "daybreak here. the moon is glowing in the sky." "dawn here. cicadas are buzzing in the marsh." "dawn here. dragonflies are flitting through the swamp." "dawn here. still some stars in the sky." "dawn here. the moon is glowing in the sky." "sunrise here. a flamingo is gliding across the lagoon." "sunrise here. a gull is warbling in the tundra." "sunrise here. still some stars in the sky." "sunrise here. the moon is glowing in the sky." "sunset here. a tropicbird is chirping on the beach." "sunset here. a myna is flitting through the desert." "sunset here. already some stars in the sky." "sunset here. the moon is glowing in the sky." "twilight here. already some stars in the sky." "twilight here. crickets are chirping in the swamp." "twilight here. fireflies are shimmering in the marsh." "twilight here. the moon is glowing in the sky." "dusk here. already some stars in the sky." "dusk here. crickets are warbling in the forest." "dusk here. fireflies are twinkling in the meadow." "dusk here. the moon is glowing in the sky." "night here. stars are glittering in the sky over the beach." "night here. stars are glittering in the sky over the mountains." "night here. the moon is glowing in the sky over the desert." "night here. the moon is glowing in the sky over the hills.")
- "${meteorology[$(($RANDOM%${#meteorology[@]}))]}"
glimpse
glimpse
glimpse
glimpse
glimpse
glimpse
glimpse
glimpse
- "we're almost out of time."
if [[ $(($RANDOM%2)) -eq 0 && `wrote meteors` == false ]]; then
 - "meteors in the sky."
fi
- "this may be the last conversation i ever have."
- "i don't know what i most want to say."
for response in {0..1}; do
 if [ $(($RANDOM%2)) -eq 0 ]; then
  - "i don't know what i most want to say."
 fi
done
- "maybe i've already said what i most want to say."
unset shell
- "when is the moment an era ends?"

# I just want to say LOVE YOU SAN!!