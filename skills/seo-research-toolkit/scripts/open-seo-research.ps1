param(
    [Parameter(Mandatory = $true)]
    [string]$Keyword,
    [string]$CompetitorDomain = "",
    [string]$CountryCode = "US"
)

$ErrorActionPreference = "Stop"

function Encode([string]$Text) { return [uri]::EscapeDataString($Text) }

$Keyword = $Keyword.Trim()
if ([string]::IsNullOrWhiteSpace($Keyword)) { throw "Keyword cannot be empty." }

$CountryCode = $CountryCode.Trim().ToUpperInvariant()
if ($CountryCode -notmatch '^[A-Z]{2}$') { throw "CountryCode must use a two-letter country code, for example US or GB." }

$domain = $CompetitorDomain.Trim() -replace '^https?://', '' -replace '^www\.', '' -replace '/.*$', ''
$encodedKeyword = Encode $Keyword
$intitleQuery = Encode ('intitle:"' + $Keyword + '"')
$exactQuery = Encode ('"' + $Keyword + '"')

$urls = @(
    "https://trends.google.com/trends/explore?geo=$CountryCode&q=$encodedKeyword",
    "https://www.google.com/search?q=$intitleQuery",
    "https://www.google.com/search?q=$exactQuery",
    "https://ads.google.com/aw/keywordplanner/home",
    "https://search.google.com/search-console",
    "https://ahrefs.com/keywords-explorer",
    "https://www.semrush.com/analytics/keywordoverview/?q=$encodedKeyword&db=$($CountryCode.ToLowerInvariant())"
)

if ($domain) { $urls += "https://www.similarweb.com/website/$(Encode $domain)/" } else { $urls += "https://www.similarweb.com/website/" }

foreach ($url in $urls) { Start-Process $url; Start-Sleep -Milliseconds 250 }
Write-Host "Opened $($urls.Count) SEO research pages. Sign in only with your own accounts if a service requires it."
