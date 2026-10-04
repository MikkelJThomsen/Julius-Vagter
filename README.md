# Julius Vagter – PWA

En simpel installérbar web-app til iPhone.

## Funktioner
- Registrer dato, mødetid, sluttid og pause
- Automatisk beregning af arbejdstid og forventet løn
- Standardtimeløn: 80 kr. (kan ændres)
- Lønperioder fra den 20. til den 19.
- Historik pr. lønperiode
- Rediger og slet vagter
- Lokal lagring på enheden
- Offline-understøttelse efter første besøg

## Udgivelse
Upload hele mappen til en HTTPS-host, fx GitHub Pages, Cloudflare Pages eller Netlify. Service worker/PWA-installation kræver HTTPS (localhost er undtaget under udvikling).

På iPhone: Åbn webadressen i Safari → Del → Føj til hjemmeskærm.

## Vigtigt om data
Data gemmes i browserens localStorage på den enkelte enhed. Rydning af Safari/webstedsdata kan slette vagterne. En senere version kan tilføje eksport/backup eller cloud-synkronisering.
