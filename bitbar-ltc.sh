i#!/bin/bash
# <bitbar.title>LTC Price</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>ronangaillard</bitbar.author>
# <bitbar.author.github>ronangaillard</bitbar.author.github>
# <bitbar.desc>Display the spot USD prices of LiteCoin</bitbar.desc>
#

ltc_icon='iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAADAFBMVEUAAACAgIC1tbW4uLi2tra3t7e2tra3t7e3t7e4uLi3t7e4uLi3t7e3t7e3t7e4uLi4uLi5ubm+vr7BwcHDw8PFxcXJycnOzs7Q0NDU1NTV1dXW1tbZ2dnb29vd3d3m5ubn5+f5+fn8/Pz9/f3+/v7///8mJiYnJycoKCgpKSkqKiorKyssLCwtLS0uLi4vLy8wMDAxMTEyMjIzMzM0NDQ1NTU2NjY3Nzc4ODg5OTk6Ojo7Ozs8PDw9PT0+Pj4/Pz9AQEBBQUFCQkJDQ0NERERFRUVGRkZHR0dISEhJSUlKSkpLS0tMTExNTU1OTk5PT09QUFBRUVFSUlJTU1NUVFRVVVVWVlZXV1dYWFhZWVlaWlpbW1tcXFxdXV1eXl5fX19gYGBhYWFiYmJjY2NkZGRlZWVmZmZnZ2doaGhpaWlqampra2tsbGxtbW1ubm5vb29wcHBxcXFycnJzc3N0dHR1dXV2dnZ3d3d4eHh5eXl6enp7e3t8fHx9fX1+fn5/f3+AgICBgYGCgoKDg4OEhISFhYWGhoaHh4eIiIiJiYmKioqLi4uMjIyNjY2Ojo6Pj4+QkJCRkZGSkpKTk5OUlJSVlZWWlpaXl5eYmJiZmZmampqbm5ucnJydnZ2enp6fn5+goKChoaGioqKjo6OkpKSlpaWmpqanp6eoqKipqamqqqqrq6usrKytra2urq6vr6+wsLCxsbGysrKzs7O0tLS1tbW2tra3t7e4uLi5ubm6urq7u7u8vLy9vb2+vr6/v7/AwMDBwcHCwsLDw8PExMTFxcXGxsbHx8fIyMjJycnKysrLy8vMzMzNzc3Ozs7Pz8/Q0NDR0dHS0tLT09PU1NTV1dXW1tbX19fY2NjZ2dna2trb29vc3Nzd3d3e3t7f39/g4ODh4eHi4uLj4+Pk5OTl5eXm5ubn5+fo6Ojp6enq6urr6+vs7Ozt7e3u7u7v7+/w8PDx8fHy8vLz8/P09PT19fX29vb39/f4+Pj5+fn6+vr7+/v8/Pz9/f3+/v7////Ybd+0AAAAEHRSTlMAAiZvcHF+f7Kztbbm5/b3GL4FdwAAAItJREFUeJxtj0cWwjAMROWCC9iJTU3obe5/RSLFsOJvRp6nkSWiCe1jztFrmlGLvgi9VfJelR9LdixXI3BjNVNe+u/AKClNXnofwEYKR5FlB7yOYgTKLFfgeRAjiXEGMJRmcGR4A+taq0R46B4zJx7K316asS2dbot9Mf9WJ2XbcZ1R7V7tQkrByfkfCTkPOQ2ZcvUAAAAASUVORK5CYII='

ltcPoloniex=$(curl -s https://poloniex.com/public?command=returnTicker | tr '}' '\n' | grep USDT_LTC | tr -d '{}"' | tr ':,' '\n' | grep -A1 "last" | tail -1)


printf "%.*f | image=%s\n" 5 "$ltcPoloniex" "$ltc_icon"

