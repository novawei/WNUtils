# WNUtils

# Overview
using category to simplify method usage.

including:

* __UIColor+WNUtils__
* __NSDate+WNUtils__ using c function to format date. `#import <time.h>`
* __UIBarButtonItem+WNUtils__

# Usage

1. __UIColor+WNUtils__
```
[UIColor colorWithHex:0xff0000];
[UIColor colorWithHex:0x000000 alpha:0.5];
```

2. __NSDate+WNUtils__
```
[NSDate prettyDateDescription:[[NSDate date] timeIntervalSince1970]]; // e.g.  1分钟前|2小时前|昨天
[date prettyDateDescription];

[NSDate dateTimeDescription:[[NSDate date] timeIntervalSince1970]]; // e.g. 2016-04-20 12:00
[NSDate dateDescription:[[NSDate date] timeIntervalSince1970]]; // e.g. 2016-04-19
```

3. __UIBarButtonItem+WNUtils__

# License
**MIT**
