#!/usr/bin/env bash
# Japan & US Time - Standard output version

echo "========================================"
echo "       Japan & US Time Clock"
echo "========================================"
echo ""

printf "%-14s  %-10s  %s\n" "City" "Timezone" "Date & Time"
echo "----------------------------------------"

for tz_entry in \
  "Tokyo:Asia/Tokyo" \
  "New York:America/New_York" \
  "Chicago:America/Chicago" \
  "Denver:America/Denver" \
  "Los Angeles:America/Los_Angeles" \
  "Honolulu:Pacific/Honolulu"
do
  city="${tz_entry%%:*}"
  tz="${tz_entry##*:}"
  datetime=$(TZ="$tz" date '+%Y-%m-%d %H:%M:%S %Z')
  printf "%-14s  %-10s  %s\n" "$city" "$(TZ="$tz" date '+%Z')" "$datetime"
done

echo "========================================"
