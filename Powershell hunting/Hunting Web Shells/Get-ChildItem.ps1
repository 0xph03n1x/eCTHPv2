get-childitem -recurse -include "*.php" | select-string "(mail|fsockopen|pfsockopen|exec\b|system\b|passthru|eval\b|base64_decode)" | % {"$($_.filename):$($_.line)"} | out-gridview