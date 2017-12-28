function sfdx-open-chromium
	sfdx force:org:open -r $argv | grep -oE 'https.+' | xargs -IURL chromium-browser URL
end
