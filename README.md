# Job Grabber

Integrates with Job APIs to deliver jobs in a standardised Job list.

# Useage
Add it to your gemfile (and bundle install)
```
gem 'job-grabber'
```
or 
```
gem install job-grabber
```

```
require 'job-grabber'
JobGrabber::Base.new(["reddit:forhire"])
# or
JobGrabber::Controller.new().jobs
```
# Docs
*Coming soon*

# The code
##Base (base.rb)
JobGrabber::Base loops through sources and returns an array of Job objects populated with the data found at specified sources. It currently has adapters for Reddit, Workinstartups and HackerNews Jobs.
##Controller (controller.rb)
The JobGrabber::Controller holds the jobs, sources and filters content before returning it. There is scope here for inheriting from this for multiple platforms.
##SrcGrabber (src_grabber.rb)
JobGrabber::SrcGrabber grabs jobs from a specified source, it uses the factory/adapter pattern and has 3 adapters: `reddit.rb`, `workinstartups.rb` and `hackernews.rb`.
##Adapters (/adapters)
We have three adapters for Reddit, WorkInStartups and HNJobs, that use [Redd](https://github.com/avinashbot/redd), [workinstartups-api](https://github.com/HugoDF/workinstartups-api) and [hnjobs](https:github.com/HugoDF), respectively.
##Job 
The JobGrabber::Job object has the following fields: 
`origin`, `id`, `title`, `description`, `created_at` and `link`, all returned as strings.

Copyright (c) 2016, [Hugo Di Francesco](https://twitter.com/hugo__df) and [awebots](http://www.awebots.com).

This project is licensed under the [MIT License](LICENSE.md).