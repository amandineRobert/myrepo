app <- ShinyDriver$new("../")
app$snapshotInit("mytest")

app$setInputs(dates = c("2013-01-25", "2019-05-17"))
app$setInputs(dates = c("2013-01-25", "2019-05-13"))
app$setInputs(log = TRUE)
app$snapshot()
