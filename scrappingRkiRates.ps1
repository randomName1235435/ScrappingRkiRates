$response = Invoke-WebRequest 'https://www.rki.de/DE/Content/InfAZ/N/Neuartiges_Coronavirus/Fallzahlen.html'
$response.Content -match 'Vor­.*pom.*mern<\/td><td class="right" colspan="1" rowspan="1">[0-9.]*<\/td><td class="right" colspan="1" rowspan="1">[0-9.,]*<\/td><td class="right" colspan="1" rowspan="1">[0-9.,]*<\/td><td class="right" colspan="1" rowspan="1">(?<inzidenz>[0-9.,]*)<'
$matches
$matches.inzidenz
$inzidenzValue = $matches.inzidenz.ToString()
