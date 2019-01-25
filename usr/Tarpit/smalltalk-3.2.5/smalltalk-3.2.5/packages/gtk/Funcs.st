"Automatically generated, do not edit!"
!GDate class methodsFor: 'C call-outs'!
new
    <cCall: 'g_date_new' returning: #{GDate}
	args: #( )>! !

!GDate class methodsFor: 'C call-outs'!
newDmy: day month: month year: year
    <cCall: 'g_date_new_dmy' returning: #{GDate}
	args: #( #int #int #int )>! !

!GDate class methodsFor: 'C call-outs'!
newJulian: julianDay
    <cCall: 'g_date_new_julian' returning: #{GDate}
	args: #( #int )>! !

!GDate methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'g_date_free' returning: #void
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
valid
    <cCall: 'g_date_valid' returning: #boolean
	args: #( #self )>! !

!GDate class methodsFor: 'C call-outs'!
validDay: day
    <cCall: 'g_date_valid_day' returning: #boolean
	args: #( #int )>! !

!GDate class methodsFor: 'C call-outs'!
validMonth: month
    <cCall: 'g_date_valid_month' returning: #boolean
	args: #( #int )>! !

!GDate class methodsFor: 'C call-outs'!
validYear: year
    <cCall: 'g_date_valid_year' returning: #boolean
	args: #( #int )>! !

!GDate class methodsFor: 'C call-outs'!
validWeekday: weekday
    <cCall: 'g_date_valid_weekday' returning: #boolean
	args: #( #int )>! !

!GDate class methodsFor: 'C call-outs'!
validJulian: julianDate
    <cCall: 'g_date_valid_julian' returning: #boolean
	args: #( #int )>! !

!GDate class methodsFor: 'C call-outs'!
validDmy: day month: month year: year
    <cCall: 'g_date_valid_dmy' returning: #boolean
	args: #( #int #int #int )>! !

!GDate methodsFor: 'C call-outs'!
getWeekday
    <cCall: 'g_date_get_weekday' returning: #int
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
getMonth
    <cCall: 'g_date_get_month' returning: #int
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
getYear
    <cCall: 'g_date_get_year' returning: #int
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
getDay
    <cCall: 'g_date_get_day' returning: #int
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
getJulian
    <cCall: 'g_date_get_julian' returning: #int
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
getDayOfYear
    <cCall: 'g_date_get_day_of_year' returning: #int
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
getMondayWeekOfYear
    <cCall: 'g_date_get_monday_week_of_year' returning: #int
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
getSundayWeekOfYear
    <cCall: 'g_date_get_sunday_week_of_year' returning: #int
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
getIso8601WeekOfYear
    <cCall: 'g_date_get_iso8601_week_of_year' returning: #int
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
clear: nDates
    <cCall: 'g_date_clear' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
setParse: str
    <cCall: 'g_date_set_parse' returning: #void
	args: #( #self #string )>! !

!GDate methodsFor: 'C call-outs'!
setTimeT: timet
    <cCall: 'g_date_set_time_t' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
setTimeVal: timeval
    <cCall: 'g_date_set_time_val' returning: #void
	args: #( #self #cObject )>! !

!GDate methodsFor: 'C call-outs'!
setMonth: month
    <cCall: 'g_date_set_month' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
setDay: day
    <cCall: 'g_date_set_day' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
setYear: year
    <cCall: 'g_date_set_year' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
setDmy: day month: month y: y
    <cCall: 'g_date_set_dmy' returning: #void
	args: #( #self #int #int #int )>! !

!GDate methodsFor: 'C call-outs'!
setJulian: julianDate
    <cCall: 'g_date_set_julian' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
isFirstOfMonth
    <cCall: 'g_date_is_first_of_month' returning: #boolean
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
isLastOfMonth
    <cCall: 'g_date_is_last_of_month' returning: #boolean
	args: #( #self )>! !

!GDate methodsFor: 'C call-outs'!
addDays: nDays
    <cCall: 'g_date_add_days' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
subtractDays: nDays
    <cCall: 'g_date_subtract_days' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
addMonths: nMonths
    <cCall: 'g_date_add_months' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
subtractMonths: nMonths
    <cCall: 'g_date_subtract_months' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
addYears: nYears
    <cCall: 'g_date_add_years' returning: #void
	args: #( #self #int )>! !

!GDate methodsFor: 'C call-outs'!
subtractYears: nYears
    <cCall: 'g_date_subtract_years' returning: #void
	args: #( #self #int )>! !

!GDate class methodsFor: 'C call-outs'!
isLeapYear: year
    <cCall: 'g_date_is_leap_year' returning: #boolean
	args: #( #int )>! !

!GDate class methodsFor: 'C call-outs'!
getDaysInMonth: month year: year
    <cCall: 'g_date_get_days_in_month' returning: #int
	args: #( #int #int )>! !

!GDate class methodsFor: 'C call-outs'!
getMondayWeeksInYear: year
    <cCall: 'g_date_get_monday_weeks_in_year' returning: #int
	args: #( #int )>! !

!GDate class methodsFor: 'C call-outs'!
getSundayWeeksInYear: year
    <cCall: 'g_date_get_sunday_weeks_in_year' returning: #int
	args: #( #int )>! !

!GDate methodsFor: 'C call-outs'!
daysBetween: date2
    <cCall: 'g_date_days_between' returning: #int
	args: #( #self #cObject )>! !

!GDate methodsFor: 'C call-outs'!
compare: rhs
    <cCall: 'g_date_compare' returning: #int
	args: #( #self #cObject )>! !

!GDate methodsFor: 'C call-outs'!
toStructTm: tm
    <cCall: 'g_date_to_struct_tm' returning: #void
	args: #( #self #cObject )>! !

!GDate methodsFor: 'C call-outs'!
clamp: minDate maxDate: maxDate
    <cCall: 'g_date_clamp' returning: #void
	args: #( #self #cObject #cObject )>! !

!GDate methodsFor: 'C call-outs'!
order: date2
    <cCall: 'g_date_order' returning: #void
	args: #( #self #cObject )>! !

!GDate class methodsFor: 'C call-outs'!
strftime: s slen: slen format: format date: date
    <cCall: 'g_date_strftime' returning: #int
	args: #( #string #int #string #cObject )>! !

!GMainContext class methodsFor: 'C call-outs'!
new
    <cCall: 'g_main_context_new' returning: #{GMainContext}
	args: #( )>! !

!GMainContext methodsFor: 'C call-outs'!
ref
    <cCall: 'g_main_context_ref' returning: #{GMainContext}
	args: #( #self )>! !

!GMainContext methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_main_context_unref' returning: #void
	args: #( #self )>! !

!GMainContext class methodsFor: 'C call-outs'!
default
    <cCall: 'g_main_context_default' returning: #{GMainContext}
	args: #( )>! !

!GMainContext methodsFor: 'C call-outs'!
iteration: mayBlock
    <cCall: 'g_main_context_iteration' returning: #boolean
	args: #( #self #boolean )>! !

!GMainContext methodsFor: 'C call-outs'!
pending
    <cCall: 'g_main_context_pending' returning: #boolean
	args: #( #self )>! !

!GMainContext methodsFor: 'C call-outs'!
wakeup
    <cCall: 'g_main_context_wakeup' returning: #void
	args: #( #self )>! !

!GMainContext methodsFor: 'C call-outs'!
acquire
    <cCall: 'g_main_context_acquire' returning: #boolean
	args: #( #self )>! !

!GMainContext methodsFor: 'C call-outs'!
release
    <cCall: 'g_main_context_release' returning: #void
	args: #( #self )>! !

!GMainContext methodsFor: 'C call-outs'!
isOwner
    <cCall: 'g_main_context_is_owner' returning: #boolean
	args: #( #self )>! !

!GMainContext methodsFor: 'C call-outs'!
wait: cond mutex: mutex
    <cCall: 'g_main_context_wait' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GMainContext methodsFor: 'C call-outs'!
prepare: priority
    <cCall: 'g_main_context_prepare' returning: #boolean
	args: #( #self #cObject )>! !

!GMainContext methodsFor: 'C call-outs'!
query: maxPriority timeout: timeout fds: fds nFds: nFds
    <cCall: 'g_main_context_query' returning: #int
	args: #( #self #int #cObject #cObject #int )>! !

!GMainContext methodsFor: 'C call-outs'!
check: maxPriority fds: fds nFds: nFds
    <cCall: 'g_main_context_check' returning: #int
	args: #( #self #int #cObject #int )>! !

!GMainContext methodsFor: 'C call-outs'!
dispatch
    <cCall: 'g_main_context_dispatch' returning: #void
	args: #( #self )>! !

!GMainContext methodsFor: 'C call-outs'!
setPollFunc: func
    <cCall: 'g_main_context_set_poll_func' returning: #void
	args: #( #self #cObject )>! !

!GMainContext methodsFor: 'C call-outs'!
getPollFunc
    <cCall: 'g_main_context_get_poll_func' returning: #int
	args: #( #self )>! !

!GMainContext methodsFor: 'C call-outs'!
addPoll: fd priority: priority
    <cCall: 'g_main_context_add_poll' returning: #void
	args: #( #self #cObject #int )>! !

!GMainContext methodsFor: 'C call-outs'!
removePoll: fd
    <cCall: 'g_main_context_remove_poll' returning: #void
	args: #( #self #cObject )>! !

!GMain class methodsFor: 'C call-outs'!
depth
    <cCall: 'g_main_depth' returning: #int
	args: #( )>! !

!GMainContext methodsFor: 'C call-outs'!
pushThreadDefault
    <cCall: 'g_main_context_push_thread_default' returning: #void
	args: #( #self )>! !

!GMainContext methodsFor: 'C call-outs'!
popThreadDefault
    <cCall: 'g_main_context_pop_thread_default' returning: #void
	args: #( #self )>! !

!GMainContext class methodsFor: 'C call-outs'!
getThreadDefault
    <cCall: 'g_main_context_get_thread_default' returning: #{GMainContext}
	args: #( )>! !

!GMainContext class methodsFor: 'C call-outs'!
refThreadDefault
    <cCall: 'g_main_context_ref_thread_default' returning: #{GMainContext}
	args: #( )>! !

!GMainLoop class methodsFor: 'C call-outs'!
new: context isRunning: isRunning
    <cCall: 'g_main_loop_new' returning: #{GMainLoop}
	args: #( #cObject #boolean )>! !

!GMainLoop methodsFor: 'C call-outs'!
run
    <cCall: 'g_main_loop_run' returning: #void
	args: #( #self )>! !

!GMainLoop methodsFor: 'C call-outs'!
quit
    <cCall: 'g_main_loop_quit' returning: #void
	args: #( #self )>! !

!GMainLoop methodsFor: 'C call-outs'!
ref
    <cCall: 'g_main_loop_ref' returning: #{GMainLoop}
	args: #( #self )>! !

!GMainLoop methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_main_loop_unref' returning: #void
	args: #( #self )>! !

!GMainLoop methodsFor: 'C call-outs'!
isRunning
    <cCall: 'g_main_loop_is_running' returning: #boolean
	args: #( #self )>! !

!GMainLoop methodsFor: 'C call-outs'!
getContext
    <cCall: 'g_main_loop_get_context' returning: #{GMainContext}
	args: #( #self )>! !

!GGet class methodsFor: 'C call-outs'!
currentTime: result
    <cCall: 'g_get_current_time' returning: #void
	args: #( #cObject )>! !

!GGet class methodsFor: 'C call-outs'!
monotonicTime
    <cCall: 'g_get_monotonic_time' returning: #int
	args: #( )>! !

!GGet class methodsFor: 'C call-outs'!
realTime
    <cCall: 'g_get_real_time' returning: #int
	args: #( )>! !

!GTimeout class methodsFor: 'C call-outs'!
addFull: priority interval: interval function: function data: data notify: notify
    <cCall: 'g_timeout_add_full' returning: #int
	args: #( #int #int #cObject #cObject #int )>! !

!GTimeout class methodsFor: 'C call-outs'!
add: interval function: function data: data
    <cCall: 'g_timeout_add' returning: #int
	args: #( #int #cObject #cObject )>! !

!GTimeout class methodsFor: 'C call-outs'!
addSecondsFull: priority interval: interval function: function data: data notify: notify
    <cCall: 'g_timeout_add_seconds_full' returning: #int
	args: #( #int #int #cObject #cObject #int )>! !

!GTimeout class methodsFor: 'C call-outs'!
addSeconds: interval function: function data: data
    <cCall: 'g_timeout_add_seconds' returning: #int
	args: #( #int #cObject #cObject )>! !

!GChild class methodsFor: 'C call-outs'!
watchAddFull: priority pid: pid function: function data: data notify: notify
    <cCall: 'g_child_watch_add_full' returning: #int
	args: #( #int #int #cObject #cObject #int )>! !

!GChild class methodsFor: 'C call-outs'!
watchAdd: pid function: function data: data
    <cCall: 'g_child_watch_add' returning: #int
	args: #( #int #cObject #cObject )>! !

!GIdle class methodsFor: 'C call-outs'!
add: function data: data
    <cCall: 'g_idle_add' returning: #int
	args: #( #cObject #cObject )>! !

!GIdle class methodsFor: 'C call-outs'!
addFull: priority function: function data: data notify: notify
    <cCall: 'g_idle_add_full' returning: #int
	args: #( #int #cObject #cObject #int )>! !

!GIdle class methodsFor: 'C call-outs'!
removeByData: data
    <cCall: 'g_idle_remove_by_data' returning: #boolean
	args: #( #cObject )>! !

!GMainContext methodsFor: 'C call-outs'!
invokeFull: priority function: function data: data notify: notify
    <cCall: 'g_main_context_invoke_full' returning: #void
	args: #( #self #int #cObject #cObject #int )>! !

!GMainContext methodsFor: 'C call-outs'!
invoke: function data: data
    <cCall: 'g_main_context_invoke' returning: #void
	args: #( #self #cObject #cObject )>! !

!GOptionContext class methodsFor: 'C call-outs'!
new: parameterString
    <cCall: 'g_option_context_new' returning: #{GOptionContext}
	args: #( #string )>! !

!GOptionContext methodsFor: 'C call-outs'!
setSummary: summary
    <cCall: 'g_option_context_set_summary' returning: #void
	args: #( #self #string )>! !

!GOptionContext methodsFor: 'C call-outs'!
setDescription: description
    <cCall: 'g_option_context_set_description' returning: #void
	args: #( #self #string )>! !

!GOptionContext methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'g_option_context_free' returning: #void
	args: #( #self )>! !

!GOptionContext methodsFor: 'C call-outs'!
setHelpEnabled: helpEnabled
    <cCall: 'g_option_context_set_help_enabled' returning: #void
	args: #( #self #boolean )>! !

!GOptionContext methodsFor: 'C call-outs'!
getHelpEnabled
    <cCall: 'g_option_context_get_help_enabled' returning: #boolean
	args: #( #self )>! !

!GOptionContext methodsFor: 'C call-outs'!
setIgnoreUnknownOptions: ignoreUnknown
    <cCall: 'g_option_context_set_ignore_unknown_options' returning: #void
	args: #( #self #boolean )>! !

!GOptionContext methodsFor: 'C call-outs'!
getIgnoreUnknownOptions
    <cCall: 'g_option_context_get_ignore_unknown_options' returning: #boolean
	args: #( #self )>! !

!GOptionContext methodsFor: 'C call-outs'!
addMainEntries: entries translationDomain: translationDomain
    <cCall: 'g_option_context_add_main_entries' returning: #void
	args: #( #self #cObject #string )>! !

!GOptionContext methodsFor: 'C call-outs'!
parse: argc argv: argv error: error
    <cCall: 'g_option_context_parse' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GOptionContext methodsFor: 'C call-outs'!
parseStrv: arguments error: error
    <cCall: 'g_option_context_parse_strv' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GOptionContext methodsFor: 'C call-outs'!
setTranslateFunc: func data: data destroyNotify: destroyNotify
    <cCall: 'g_option_context_set_translate_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GOptionContext methodsFor: 'C call-outs'!
setTranslationDomain: domain
    <cCall: 'g_option_context_set_translation_domain' returning: #void
	args: #( #self #string )>! !

!GOptionContext methodsFor: 'C call-outs'!
addGroup: group
    <cCall: 'g_option_context_add_group' returning: #void
	args: #( #self #cObject )>! !

!GOptionContext methodsFor: 'C call-outs'!
setMainGroup: group
    <cCall: 'g_option_context_set_main_group' returning: #void
	args: #( #self #cObject )>! !

!GOptionContext methodsFor: 'C call-outs'!
getMainGroup
    <cCall: 'g_option_context_get_main_group' returning: #{GOptionGroup}
	args: #( #self )>! !

!GOptionContext methodsFor: 'C call-outs'!
getHelp: mainHelp group: group
    <cCall: 'g_option_context_get_help' returning: #string
	args: #( #self #boolean #cObject )>! !

!GOptionGroup class methodsFor: 'C call-outs'!
new: name description: description helpDescription: helpDescription userData: userData destroy: destroy
    <cCall: 'g_option_group_new' returning: #{GOptionGroup}
	args: #( #string #string #string #cObject #int )>! !

!GOptionGroup methodsFor: 'C call-outs'!
setParseHooks: preParseFunc postParseFunc: postParseFunc
    <cCall: 'g_option_group_set_parse_hooks' returning: #void
	args: #( #self #cObject #cObject )>! !

!GOptionGroup methodsFor: 'C call-outs'!
setErrorHook: errorFunc
    <cCall: 'g_option_group_set_error_hook' returning: #void
	args: #( #self #cObject )>! !

!GOptionGroup methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'g_option_group_free' returning: #void
	args: #( #self )>! !

!GOptionGroup methodsFor: 'C call-outs'!
addEntries: entries
    <cCall: 'g_option_group_add_entries' returning: #void
	args: #( #self #cObject )>! !

!GOptionGroup methodsFor: 'C call-outs'!
setTranslateFunc: func data: data destroyNotify: destroyNotify
    <cCall: 'g_option_group_set_translate_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GOptionGroup methodsFor: 'C call-outs'!
setTranslationDomain: domain
    <cCall: 'g_option_group_set_translation_domain' returning: #void
	args: #( #self #string )>! !

!GTypeInterface class methodsFor: 'C call-outs'!
peek: instanceClass ifaceType: ifaceType
    <cCall: 'g_type_interface_peek' returning: #cObject
	args: #( #cObject #long )>! !

!GTypeInterface class methodsFor: 'C call-outs'!
peekParent: gIface
    <cCall: 'g_type_interface_peek_parent' returning: #cObject
	args: #( #cObject )>! !

!GTypeInterface class methodsFor: 'C call-outs'!
addPrerequisite: interfaceType prerequisiteType: prerequisiteType
    <cCall: 'g_type_interface_add_prerequisite' returning: #void
	args: #( #long #long )>! !

!GTypeInterface class methodsFor: 'C call-outs'!
prerequisites: interfaceType nPrerequisites: nPrerequisites
    <cCall: 'g_type_interface_prerequisites' returning: CLong type
	args: #( #long #cObject )>! !

!GTypeInstance methodsFor: 'C call-outs'!
getPrivate: privateType
    <cCall: 'g_type_instance_get_private' returning: #cObject
	args: #( #self #long )>! !

!GTypeInterface class methodsFor: 'C call-outs'!
getPlugin: instanceType interfaceType: interfaceType
    <cCall: 'g_type_interface_get_plugin' returning: #{GTypePlugin}
	args: #( #long #long )>! !

!GTypeValueTable class methodsFor: 'C call-outs'!
peek: type
    <cCall: 'g_type_value_table_peek' returning: #{GTypeValueTable}
	args: #( #long )>! !

!GParamSpec methodsFor: 'C call-outs'!
ref
    <cCall: 'g_param_spec_ref' returning: #{GParamSpec}
	args: #( #self )>! !

!GParamSpec methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_param_spec_unref' returning: #void
	args: #( #self )>! !

!GParamSpec methodsFor: 'C call-outs'!
sink
    <cCall: 'g_param_spec_sink' returning: #void
	args: #( #self )>! !

!GParamSpec methodsFor: 'C call-outs'!
refSink
    <cCall: 'g_param_spec_ref_sink' returning: #{GParamSpec}
	args: #( #self )>! !

!GParamSpec methodsFor: 'C call-outs'!
getQdata: quark
    <cCall: 'g_param_spec_get_qdata' returning: #cObject
	args: #( #self #int )>! !

!GParamSpec methodsFor: 'C call-outs'!
setQdata: quark data: data
    <cCall: 'g_param_spec_set_qdata' returning: #void
	args: #( #self #int #cObject )>! !

!GParamSpec methodsFor: 'C call-outs'!
setQdataFull: quark data: data destroy: destroy
    <cCall: 'g_param_spec_set_qdata_full' returning: #void
	args: #( #self #int #cObject #int )>! !

!GParamSpec methodsFor: 'C call-outs'!
stealQdata: quark
    <cCall: 'g_param_spec_steal_qdata' returning: #cObject
	args: #( #self #int )>! !

!GParamSpec methodsFor: 'C call-outs'!
getRedirectTarget
    <cCall: 'g_param_spec_get_redirect_target' returning: #{GParamSpec}
	args: #( #self )>! !

!GParamSpec class methodsFor: 'C call-outs'!
registerStatic: name pspecInfo: pspecInfo
    <cCall: 'g_param_type_register_static' returning: #long
	args: #( #string #cObject )>! !

!GParamSpec class methodsFor: 'C call-outs'!
internal: paramType name: name nick: nick blurb: blurb flags: flags
    <cCall: 'g_param_spec_internal' returning: #cObject
	args: #( #long #string #string #string #int )>! !

!GParamSpecPool class methodsFor: 'C call-outs'!
new: typePrefixing
    <cCall: 'g_param_spec_pool_new' returning: #{GParamSpecPool}
	args: #( #boolean )>! !

!GParamSpecPool methodsFor: 'C call-outs'!
insert: pspec ownerType: ownerType
    <cCall: 'g_param_spec_pool_insert' returning: #void
	args: #( #self #cObject #long )>! !

!GParamSpecPool methodsFor: 'C call-outs'!
remove: pspec
    <cCall: 'g_param_spec_pool_remove' returning: #void
	args: #( #self #cObject )>! !

!GParamSpecPool methodsFor: 'C call-outs'!
lookup: paramName ownerType: ownerType walkAncestors: walkAncestors
    <cCall: 'g_param_spec_pool_lookup' returning: #{GParamSpec}
	args: #( #self #string #long #boolean )>! !

!GParamSpecPool methodsFor: 'C call-outs'!
listOwned: ownerType
    <cCall: 'g_param_spec_pool_list_owned' returning: #{GList}
	args: #( #self #long )>! !

!GParamSpecPool methodsFor: 'C call-outs'!
list: ownerType nPspecsP: nPspecsP
    <cCall: 'g_param_spec_pool_list' returning: #{GParamSpec}
	args: #( #self #long #cObject )>! !

!GDate class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_date_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDate!

!GVariant class methodsFor: 'C call-outs'!
typeGetGtype
    <cCall: 'g_variant_type_get_gtype' returning: #long
	args: #( )>! !

!GDate class methodsFor: 'C call-outs'!
timeGetType
    <cCall: 'g_date_time_get_type' returning: #long
	args: #( )>! !

!GMainLoop class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_main_loop_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMainLoop!

!GMainContext class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_main_context_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMainContext!

!GVariant class methodsFor: 'C call-outs'!
getGtype
    <cCall: 'g_variant_get_gtype' returning: #long
	args: #( )>! !

!GInitiallyUnowned class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_initially_unowned_get_type' returning: #long
	args: #( )>! !

GLib registerType: GInitiallyUnowned!

!GObject class methodsFor: 'C call-outs'!
classInstallProperty: oclass propertyId: propertyId pspec: pspec
    <cCall: 'g_object_class_install_property' returning: #void
	args: #( #cObject #int #cObject )>! !

!GObject class methodsFor: 'C call-outs'!
classFindProperty: oclass propertyName: propertyName
    <cCall: 'g_object_class_find_property' returning: #{GParamSpec}
	args: #( #cObject #string )>! !

!GObject class methodsFor: 'C call-outs'!
classListProperties: oclass nProperties: nProperties
    <cCall: 'g_object_class_list_properties' returning: #{GParamSpec}
	args: #( #cObject #cObject )>! !

!GObject class methodsFor: 'C call-outs'!
classOverrideProperty: oclass propertyId: propertyId name: name
    <cCall: 'g_object_class_override_property' returning: #void
	args: #( #cObject #int #string )>! !

!GObject class methodsFor: 'C call-outs'!
classInstallProperties: oclass nPspecs: nPspecs pspecs: pspecs
    <cCall: 'g_object_class_install_properties' returning: #void
	args: #( #cObject #int #cObject )>! !

!GObject class methodsFor: 'C call-outs'!
interfaceInstallProperty: gIface pspec: pspec
    <cCall: 'g_object_interface_install_property' returning: #void
	args: #( #cObject #cObject )>! !

!GObject class methodsFor: 'C call-outs'!
interfaceFindProperty: gIface propertyName: propertyName
    <cCall: 'g_object_interface_find_property' returning: #{GParamSpec}
	args: #( #cObject #string )>! !

!GObject class methodsFor: 'C call-outs'!
interfaceListProperties: gIface nPropertiesP: nPropertiesP
    <cCall: 'g_object_interface_list_properties' returning: #{GParamSpec}
	args: #( #cObject #cObject )>! !

!GObject class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_object_get_type' returning: #long
	args: #( )>! !

GLib registerType: GObject!

!GObject class methodsFor: 'C call-outs'!
new: objectType varargs: varargs
    <cCall: 'g_object_new' returning: #{GObject}
	args: #( #long #variadic )>! !

!GObject class methodsFor: 'C call-outs'!
newv: objectType nParameters: nParameters parameters: parameters
    <cCall: 'g_object_newv' returning: #{GObject}
	args: #( #long #int #cObject )>! !

!GObject class methodsFor: 'C call-outs'!
set: object varargs: varargs
    <cCall: 'g_object_set' returning: #void
	args: #( #cObject #variadic )>! !

!GObject class methodsFor: 'C call-outs'!
get: object varargs: varargs
    <cCall: 'g_object_get' returning: #void
	args: #( #cObject #variadic )>! !

!GObject methodsFor: 'C call-outs'!
connect: signalSpec varargs: varargs
    <cCall: 'g_object_connect' returning: #cObject
	args: #( #self #string #variadic )>! !

!GObject methodsFor: 'C call-outs'!
disconnect: signalSpec varargs: varargs
    <cCall: 'g_object_disconnect' returning: #void
	args: #( #self #string #variadic )>! !

!GObject methodsFor: 'C call-outs'!
freezeNotify
    <cCall: 'g_object_freeze_notify' returning: #void
	args: #( #self )>! !

!GObject methodsFor: 'C call-outs'!
notify: propertyName
    <cCall: 'g_object_notify' returning: #void
	args: #( #self #string )>! !

!GObject methodsFor: 'C call-outs'!
notifyByPspec: pspec
    <cCall: 'g_object_notify_by_pspec' returning: #void
	args: #( #self #cObject )>! !

!GObject methodsFor: 'C call-outs'!
thawNotify
    <cCall: 'g_object_thaw_notify' returning: #void
	args: #( #self )>! !

!GObject class methodsFor: 'C call-outs'!
isFloating: object
    <cCall: 'g_object_is_floating' returning: #boolean
	args: #( #cObject )>! !

!GObject class methodsFor: 'C call-outs'!
refSink: object
    <cCall: 'g_object_ref_sink' returning: #cObject
	args: #( #cObject )>! !

!GObject methodsFor: 'C call-outs'!
ref
    <cCall: 'g_object_ref' returning: #cObject
	args: #( #self )>! !

!GObject methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_object_unref' returning: #void
	args: #( #self )>! !

!GObject methodsFor: 'C call-outs'!
weakRef: notify data: data
    <cCall: 'g_object_weak_ref' returning: #void
	args: #( #self #int #cObject )>! !

!GObject methodsFor: 'C call-outs'!
weakUnref: notify data: data
    <cCall: 'g_object_weak_unref' returning: #void
	args: #( #self #int #cObject )>! !

!GObject methodsFor: 'C call-outs'!
addWeakPointer: weakPointerLocation
    <cCall: 'g_object_add_weak_pointer' returning: #void
	args: #( #self #cObject )>! !

!GObject methodsFor: 'C call-outs'!
removeWeakPointer: weakPointerLocation
    <cCall: 'g_object_remove_weak_pointer' returning: #void
	args: #( #self #cObject )>! !

!GObject methodsFor: 'C call-outs'!
addToggleRef: notify data: data
    <cCall: 'g_object_add_toggle_ref' returning: #void
	args: #( #self #int #cObject )>! !

!GObject methodsFor: 'C call-outs'!
removeToggleRef: notify data: data
    <cCall: 'g_object_remove_toggle_ref' returning: #void
	args: #( #self #int #cObject )>! !

!GObject methodsFor: 'C call-outs'!
getQdata: quark
    <cCall: 'g_object_get_qdata' returning: #cObject
	args: #( #self #int )>! !

!GObject methodsFor: 'C call-outs'!
setQdata: quark data: data
    <cCall: 'g_object_set_qdata' returning: #void
	args: #( #self #int #cObject )>! !

!GObject methodsFor: 'C call-outs'!
setQdataFull: quark data: data destroy: destroy
    <cCall: 'g_object_set_qdata_full' returning: #void
	args: #( #self #int #cObject #int )>! !

!GObject methodsFor: 'C call-outs'!
stealQdata: quark
    <cCall: 'g_object_steal_qdata' returning: #cObject
	args: #( #self #int )>! !

!GObject methodsFor: 'C call-outs'!
dupQdata: quark dupFunc: dupFunc userData: userData
    <cCall: 'g_object_dup_qdata' returning: #cObject
	args: #( #self #int #cObject #cObject )>! !

!GObject methodsFor: 'C call-outs'!
replaceQdata: quark oldval: oldval newval: newval destroy: destroy oldDestroy: oldDestroy
    <cCall: 'g_object_replace_qdata' returning: #boolean
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GObject methodsFor: 'C call-outs'!
getData: key
    <cCall: 'g_object_get_data' returning: #cObject
	args: #( #self #string )>! !

!GObject methodsFor: 'C call-outs'!
setData: key data: data
    <cCall: 'g_object_set_data' returning: #void
	args: #( #self #string #cObject )>! !

!GObject methodsFor: 'C call-outs'!
setDataFull: key data: data destroy: destroy
    <cCall: 'g_object_set_data_full' returning: #void
	args: #( #self #string #cObject #int )>! !

!GObject methodsFor: 'C call-outs'!
stealData: key
    <cCall: 'g_object_steal_data' returning: #cObject
	args: #( #self #string )>! !

!GObject methodsFor: 'C call-outs'!
dupData: key dupFunc: dupFunc userData: userData
    <cCall: 'g_object_dup_data' returning: #cObject
	args: #( #self #string #cObject #cObject )>! !

!GObject methodsFor: 'C call-outs'!
replaceData: key oldval: oldval newval: newval destroy: destroy oldDestroy: oldDestroy
    <cCall: 'g_object_replace_data' returning: #boolean
	args: #( #self #string #cObject #cObject #int #cObject )>! !

!GObject methodsFor: 'C call-outs'!
forceFloating
    <cCall: 'g_object_force_floating' returning: #void
	args: #( #self )>! !

!GObject methodsFor: 'C call-outs'!
runDispose
    <cCall: 'g_object_run_dispose' returning: #void
	args: #( #self )>! !

!GObject class methodsFor: 'C call-outs'!
compatControl: what data: data
    <cCall: 'g_object_compat_control' returning: #int
	args: #( #int #cObject )>! !

!GClear class methodsFor: 'C call-outs'!
object: objectPtr
    <cCall: 'g_clear_object' returning: #void
	args: #( #cObject )>! !

!GWeak class methodsFor: 'C call-outs'!
refInit: weakRef object: object
    <cCall: 'g_weak_ref_init' returning: #void
	args: #( #cObject #cObject )>! !

!GWeak class methodsFor: 'C call-outs'!
refClear: weakRef
    <cCall: 'g_weak_ref_clear' returning: #void
	args: #( #cObject )>! !

!GWeak class methodsFor: 'C call-outs'!
refGet: weakRef
    <cCall: 'g_weak_ref_get' returning: #cObject
	args: #( #cObject )>! !

!GWeak class methodsFor: 'C call-outs'!
refSet: weakRef object: object
    <cCall: 'g_weak_ref_set' returning: #void
	args: #( #cObject #cObject )>! !

!GBinding class methodsFor: 'C call-outs'!
flagsGetType
    <cCall: 'g_binding_flags_get_type' returning: #long
	args: #( )>! !

!GBinding class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_binding_get_type' returning: #long
	args: #( )>! !

GLib registerType: GBinding!

!GBinding methodsFor: 'C call-outs'!
getFlags
    <cCall: 'g_binding_get_flags' returning: #int
	args: #( #self )>! !

!GBinding methodsFor: 'C call-outs'!
getSource
    <cCall: 'g_binding_get_source' returning: #{GObject}
	args: #( #self )>! !

!GBinding methodsFor: 'C call-outs'!
getTarget
    <cCall: 'g_binding_get_target' returning: #{GObject}
	args: #( #self )>! !

!GBinding methodsFor: 'C call-outs'!
unbind
    <cCall: 'g_binding_unbind' returning: #void
	args: #( #self )>! !

!GObject class methodsFor: 'C call-outs'!
bindProperty: source sourceProperty: sourceProperty target: target targetProperty: targetProperty flags: flags
    <cCall: 'g_object_bind_property' returning: #{GBinding}
	args: #( #cObject #string #cObject #string #int )>! !

!GObject class methodsFor: 'C call-outs'!
bindPropertyFull: source sourceProperty: sourceProperty target: target targetProperty: targetProperty flags: flags transformTo: transformTo transformFrom: transformFrom userData: userData notify: notify
    <cCall: 'g_object_bind_property_full' returning: #{GBinding}
	args: #( #cObject #string #cObject #string #int #cObject #cObject #cObject #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
char: name nick: nick blurb: blurb minimum: minimum maximum: maximum defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_char' returning: #{GParamSpec}
	args: #( #string #string #string #int #int #int #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
uchar: name nick: nick blurb: blurb minimum: minimum maximum: maximum defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_uchar' returning: #{GParamSpec}
	args: #( #string #string #string #int #int #int #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
boolean: name nick: nick blurb: blurb defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_boolean' returning: #{GParamSpec}
	args: #( #string #string #string #boolean #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
int: name nick: nick blurb: blurb minimum: minimum maximum: maximum defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_int' returning: #{GParamSpec}
	args: #( #string #string #string #int #int #int #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
uint: name nick: nick blurb: blurb minimum: minimum maximum: maximum defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_uint' returning: #{GParamSpec}
	args: #( #string #string #string #int #int #int #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
long: name nick: nick blurb: blurb minimum: minimum maximum: maximum defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_long' returning: #{GParamSpec}
	args: #( #string #string #string #long #long #long #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
ulong: name nick: nick blurb: blurb minimum: minimum maximum: maximum defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_ulong' returning: #{GParamSpec}
	args: #( #string #string #string #long #long #long #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
int64: name nick: nick blurb: blurb minimum: minimum maximum: maximum defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_int64' returning: #{GParamSpec}
	args: #( #string #string #string #int #int #int #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
uint64: name nick: nick blurb: blurb minimum: minimum maximum: maximum defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_uint64' returning: #{GParamSpec}
	args: #( #string #string #string #int #int #int #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
unichar: name nick: nick blurb: blurb defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_unichar' returning: #{GParamSpec}
	args: #( #string #string #string #int #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
enum: name nick: nick blurb: blurb enumType: enumType defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_enum' returning: #{GParamSpec}
	args: #( #string #string #string #long #int #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
flags: name nick: nick blurb: blurb flagsType: flagsType defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_flags' returning: #{GParamSpec}
	args: #( #string #string #string #long #int #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
float: name nick: nick blurb: blurb minimum: minimum maximum: maximum defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_float' returning: #{GParamSpec}
	args: #( #string #string #string #float #float #float #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
double: name nick: nick blurb: blurb minimum: minimum maximum: maximum defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_double' returning: #{GParamSpec}
	args: #( #string #string #string #double #double #double #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
string: name nick: nick blurb: blurb defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_string' returning: #{GParamSpec}
	args: #( #string #string #string #string #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
param: name nick: nick blurb: blurb paramType: paramType flags: flags
    <cCall: 'g_param_spec_param' returning: #{GParamSpec}
	args: #( #string #string #string #long #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
boxed: name nick: nick blurb: blurb boxedType: boxedType flags: flags
    <cCall: 'g_param_spec_boxed' returning: #{GParamSpec}
	args: #( #string #string #string #long #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
pointer: name nick: nick blurb: blurb flags: flags
    <cCall: 'g_param_spec_pointer' returning: #{GParamSpec}
	args: #( #string #string #string #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
valueArray: name nick: nick blurb: blurb elementSpec: elementSpec flags: flags
    <cCall: 'g_param_spec_value_array' returning: #{GParamSpec}
	args: #( #string #string #string #cObject #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
object: name nick: nick blurb: blurb objectType: objectType flags: flags
    <cCall: 'g_param_spec_object' returning: #{GParamSpec}
	args: #( #string #string #string #long #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
override: name overridden: overridden
    <cCall: 'g_param_spec_override' returning: #{GParamSpec}
	args: #( #string #cObject )>! !

!GParamSpec class methodsFor: 'C call-outs'!
gtype: name nick: nick blurb: blurb isAType: isAType flags: flags
    <cCall: 'g_param_spec_gtype' returning: #{GParamSpec}
	args: #( #string #string #string #long #int )>! !

!GParamSpec class methodsFor: 'C call-outs'!
variant: name nick: nick blurb: blurb type: type defaultValue: defaultValue flags: flags
    <cCall: 'g_param_spec_variant' returning: #{GParamSpec}
	args: #( #string #string #string #cObject #cObject #int )>! !

!GTypeModule class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_type_module_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTypeModule!

!GTypeModule methodsFor: 'C call-outs'!
use
    <cCall: 'g_type_module_use' returning: #boolean
	args: #( #self )>! !

!GTypeModule methodsFor: 'C call-outs'!
unuse
    <cCall: 'g_type_module_unuse' returning: #void
	args: #( #self )>! !

!GTypeModule methodsFor: 'C call-outs'!
setName: name
    <cCall: 'g_type_module_set_name' returning: #void
	args: #( #self #string )>! !

!GTypeModule methodsFor: 'C call-outs'!
registerType: parentType typeName: typeName typeInfo: typeInfo flags: flags
    <cCall: 'g_type_module_register_type' returning: #long
	args: #( #self #long #string #cObject #int )>! !

!GTypeModule methodsFor: 'C call-outs'!
addInterface: instanceType interfaceType: interfaceType interfaceInfo: interfaceInfo
    <cCall: 'g_type_module_add_interface' returning: #void
	args: #( #self #long #long #cObject )>! !

!GTypeModule methodsFor: 'C call-outs'!
registerEnum: name constStaticValues: constStaticValues
    <cCall: 'g_type_module_register_enum' returning: #long
	args: #( #self #string #cObject )>! !

!GTypeModule methodsFor: 'C call-outs'!
registerFlags: name constStaticValues: constStaticValues
    <cCall: 'g_type_module_register_flags' returning: #long
	args: #( #self #string #cObject )>! !

!GTypePlugin class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_type_plugin_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTypePlugin!

!GTypePlugin methodsFor: 'C call-outs'!
use
    <cCall: 'g_type_plugin_use' returning: #void
	args: #( #self )>! !

!GTypePlugin methodsFor: 'C call-outs'!
unuse
    <cCall: 'g_type_plugin_unuse' returning: #void
	args: #( #self )>! !

!GTypePlugin methodsFor: 'C call-outs'!
completeTypeInfo: gType info: info valueTable: valueTable
    <cCall: 'g_type_plugin_complete_type_info' returning: #void
	args: #( #self #long #cObject #cObject )>! !

!GTypePlugin methodsFor: 'C call-outs'!
completeInterfaceInfo: instanceType interfaceType: interfaceType info: info
    <cCall: 'g_type_plugin_complete_interface_info' returning: #void
	args: #( #self #long #long #cObject )>! !

!GValueArray class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_value_array_get_type' returning: #long
	args: #( )>! !

GLib registerType: GValueArray!

!GValueArray class methodsFor: 'C call-outs'!
new: nPrealloced
    <cCall: 'g_value_array_new' returning: #{GValueArray}
	args: #( #int )>! !

!GValueArray methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'g_value_array_free' returning: #void
	args: #( #self )>! !

!GValueArray methodsFor: 'C call-outs'!
copy
    <cCall: 'g_value_array_copy' returning: #{GValueArray}
	args: #( #self )>! !

!GValueArray methodsFor: 'C call-outs'!
remove: index
    <cCall: 'g_value_array_remove' returning: #{GValueArray}
	args: #( #self #int )>! !

!GValueArray methodsFor: 'C call-outs'!
sort: compareFunc
    <cCall: 'g_value_array_sort' returning: #{GValueArray}
	args: #( #self #cObject )>! !

!GValueArray methodsFor: 'C call-outs'!
sortWithData: compareFunc userData: userData
    <cCall: 'g_value_array_sort_with_data' returning: #{GValueArray}
	args: #( #self #cObject #cObject )>! !

!GAction class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_action_get_type' returning: #long
	args: #( )>! !

GLib registerType: GAction!

!GAction methodsFor: 'C call-outs'!
getStateHint
    <cCall: 'g_action_get_state_hint' returning: #{GVariant}
	args: #( #self )>! !

!GAction methodsFor: 'C call-outs'!
getEnabled
    <cCall: 'g_action_get_enabled' returning: #boolean
	args: #( #self )>! !

!GAction methodsFor: 'C call-outs'!
getState
    <cCall: 'g_action_get_state' returning: #{GVariant}
	args: #( #self )>! !

!GAction methodsFor: 'C call-outs'!
changeState: value
    <cCall: 'g_action_change_state' returning: #void
	args: #( #self #cObject )>! !

!GAction methodsFor: 'C call-outs'!
activate: parameter
    <cCall: 'g_action_activate' returning: #void
	args: #( #self #cObject )>! !

!GAction class methodsFor: 'C call-outs'!
nameIsValid: actionName
    <cCall: 'g_action_name_is_valid' returning: #boolean
	args: #( #string )>! !

!GAction class methodsFor: 'C call-outs'!
parseDetailedName: detailedName actionName: actionName targetValue: targetValue error: error
    <cCall: 'g_action_parse_detailed_name' returning: #boolean
	args: #( #string #cObject #cObject #cObject )>! !

!GAction class methodsFor: 'C call-outs'!
printDetailedName: actionName targetValue: targetValue
    <cCall: 'g_action_print_detailed_name' returning: #string
	args: #( #string #cObject )>! !

!GActionGroup class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_action_group_get_type' returning: #long
	args: #( )>! !

GLib registerType: GActionGroup!

!GActionGroup methodsFor: 'C call-outs'!
hasAction: actionName
    <cCall: 'g_action_group_has_action' returning: #boolean
	args: #( #self #string )>! !

!GActionGroup methodsFor: 'C call-outs'!
listActions
    <cCall: 'g_action_group_list_actions' returning: #string
	args: #( #self )>! !

!GActionGroup methodsFor: 'C call-outs'!
getActionStateHint: actionName
    <cCall: 'g_action_group_get_action_state_hint' returning: #{GVariant}
	args: #( #self #string )>! !

!GActionGroup methodsFor: 'C call-outs'!
getActionEnabled: actionName
    <cCall: 'g_action_group_get_action_enabled' returning: #boolean
	args: #( #self #string )>! !

!GActionGroup methodsFor: 'C call-outs'!
getActionState: actionName
    <cCall: 'g_action_group_get_action_state' returning: #{GVariant}
	args: #( #self #string )>! !

!GActionGroup methodsFor: 'C call-outs'!
changeActionState: actionName value: value
    <cCall: 'g_action_group_change_action_state' returning: #void
	args: #( #self #string #cObject )>! !

!GActionGroup methodsFor: 'C call-outs'!
activateAction: actionName parameter: parameter
    <cCall: 'g_action_group_activate_action' returning: #void
	args: #( #self #string #cObject )>! !

!GActionGroup methodsFor: 'C call-outs'!
actionAdded: actionName
    <cCall: 'g_action_group_action_added' returning: #void
	args: #( #self #string )>! !

!GActionGroup methodsFor: 'C call-outs'!
actionRemoved: actionName
    <cCall: 'g_action_group_action_removed' returning: #void
	args: #( #self #string )>! !

!GActionGroup methodsFor: 'C call-outs'!
actionEnabledChanged: actionName enabled: enabled
    <cCall: 'g_action_group_action_enabled_changed' returning: #void
	args: #( #self #string #boolean )>! !

!GActionGroup methodsFor: 'C call-outs'!
actionStateChanged: actionName state: state
    <cCall: 'g_action_group_action_state_changed' returning: #void
	args: #( #self #string #cObject )>! !

!GActionGroup methodsFor: 'C call-outs'!
queryAction: actionName enabled: enabled parameterType: parameterType stateType: stateType stateHint: stateHint state: state
    <cCall: 'g_action_group_query_action' returning: #boolean
	args: #( #self #string #cObject #cObject #cObject #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
exportActionGroup: objectPath actionGroup: actionGroup error: error
    <cCall: 'g_dbus_connection_export_action_group' returning: #int
	args: #( #self #string #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
unexportActionGroup: exportId
    <cCall: 'g_dbus_connection_unexport_action_group' returning: #void
	args: #( #self #int )>! !

!GActionMap class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_action_map_get_type' returning: #long
	args: #( )>! !

GLib registerType: GActionMap!

!GActionMap methodsFor: 'C call-outs'!
lookupAction: actionName
    <cCall: 'g_action_map_lookup_action' returning: #{GAction}
	args: #( #self #string )>! !

!GActionMap methodsFor: 'C call-outs'!
addAction: action
    <cCall: 'g_action_map_add_action' returning: #void
	args: #( #self #cObject )>! !

!GActionMap methodsFor: 'C call-outs'!
removeAction: actionName
    <cCall: 'g_action_map_remove_action' returning: #void
	args: #( #self #string )>! !

!GActionMap methodsFor: 'C call-outs'!
addActionEntries: entries nEntries: nEntries userData: userData
    <cCall: 'g_action_map_add_action_entries' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GAppInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_app_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GAppInfo!

!GAppInfo class methodsFor: 'C call-outs'!
createFromCommandline: commandline applicationName: applicationName flags: flags error: error
    <cCall: 'g_app_info_create_from_commandline' returning: #{GAppInfo}
	args: #( #string #string #int #cObject )>! !

!GAppInfo methodsFor: 'C call-outs'!
dup
    <cCall: 'g_app_info_dup' returning: #{GAppInfo}
	args: #( #self )>! !

!GAppInfo methodsFor: 'C call-outs'!
equal: appinfo2
    <cCall: 'g_app_info_equal' returning: #boolean
	args: #( #self #cObject )>! !

!GAppInfo methodsFor: 'C call-outs'!
getIcon
    <cCall: 'g_app_info_get_icon' returning: #{GIcon}
	args: #( #self )>! !

!GAppInfo methodsFor: 'C call-outs'!
launch: files launchContext: launchContext error: error
    <cCall: 'g_app_info_launch' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GAppInfo methodsFor: 'C call-outs'!
supportsUris
    <cCall: 'g_app_info_supports_uris' returning: #boolean
	args: #( #self )>! !

!GAppInfo methodsFor: 'C call-outs'!
supportsFiles
    <cCall: 'g_app_info_supports_files' returning: #boolean
	args: #( #self )>! !

!GAppInfo methodsFor: 'C call-outs'!
launchUris: uris launchContext: launchContext error: error
    <cCall: 'g_app_info_launch_uris' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GAppInfo methodsFor: 'C call-outs'!
shouldShow
    <cCall: 'g_app_info_should_show' returning: #boolean
	args: #( #self )>! !

!GAppInfo methodsFor: 'C call-outs'!
setAsDefaultForType: contentType error: error
    <cCall: 'g_app_info_set_as_default_for_type' returning: #boolean
	args: #( #self #string #cObject )>! !

!GAppInfo methodsFor: 'C call-outs'!
setAsDefaultForExtension: extension error: error
    <cCall: 'g_app_info_set_as_default_for_extension' returning: #boolean
	args: #( #self #string #cObject )>! !

!GAppInfo methodsFor: 'C call-outs'!
addSupportsType: contentType error: error
    <cCall: 'g_app_info_add_supports_type' returning: #boolean
	args: #( #self #string #cObject )>! !

!GAppInfo methodsFor: 'C call-outs'!
canRemoveSupportsType
    <cCall: 'g_app_info_can_remove_supports_type' returning: #boolean
	args: #( #self )>! !

!GAppInfo methodsFor: 'C call-outs'!
removeSupportsType: contentType error: error
    <cCall: 'g_app_info_remove_supports_type' returning: #boolean
	args: #( #self #string #cObject )>! !

!GAppInfo methodsFor: 'C call-outs'!
canDelete
    <cCall: 'g_app_info_can_delete' returning: #boolean
	args: #( #self )>! !

!GAppInfo methodsFor: 'C call-outs'!
delete
    <cCall: 'g_app_info_delete' returning: #boolean
	args: #( #self )>! !

!GAppInfo methodsFor: 'C call-outs'!
setAsLastUsedForType: contentType error: error
    <cCall: 'g_app_info_set_as_last_used_for_type' returning: #boolean
	args: #( #self #string #cObject )>! !

!GAppInfo class methodsFor: 'C call-outs'!
getAll
    <cCall: 'g_app_info_get_all' returning: #{GList}
	args: #( )>! !

!GAppInfo class methodsFor: 'C call-outs'!
getAllForType: contentType
    <cCall: 'g_app_info_get_all_for_type' returning: #{GList}
	args: #( #string )>! !

!GAppInfo class methodsFor: 'C call-outs'!
getRecommendedForType: contentType
    <cCall: 'g_app_info_get_recommended_for_type' returning: #{GList}
	args: #( #string )>! !

!GAppInfo class methodsFor: 'C call-outs'!
getFallbackForType: contentType
    <cCall: 'g_app_info_get_fallback_for_type' returning: #{GList}
	args: #( #string )>! !

!GAppInfo class methodsFor: 'C call-outs'!
resetTypeAssociations: contentType
    <cCall: 'g_app_info_reset_type_associations' returning: #void
	args: #( #string )>! !

!GAppInfo class methodsFor: 'C call-outs'!
getDefaultForType: contentType mustSupportUris: mustSupportUris
    <cCall: 'g_app_info_get_default_for_type' returning: #{GAppInfo}
	args: #( #string #boolean )>! !

!GAppInfo class methodsFor: 'C call-outs'!
getDefaultForUriScheme: uriScheme
    <cCall: 'g_app_info_get_default_for_uri_scheme' returning: #{GAppInfo}
	args: #( #string )>! !

!GAppInfo class methodsFor: 'C call-outs'!
launchDefaultForUri: uri launchContext: launchContext error: error
    <cCall: 'g_app_info_launch_default_for_uri' returning: #boolean
	args: #( #string #cObject #cObject )>! !

!GAppLaunchContext class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_app_launch_context_get_type' returning: #long
	args: #( )>! !

GLib registerType: GAppLaunchContext!

!GAppLaunchContext class methodsFor: 'C call-outs'!
new
    <cCall: 'g_app_launch_context_new' returning: #{GAppLaunchContext}
	args: #( )>! !

!GAppLaunchContext methodsFor: 'C call-outs'!
setenv: variable value: value
    <cCall: 'g_app_launch_context_setenv' returning: #void
	args: #( #self #string #string )>! !

!GAppLaunchContext methodsFor: 'C call-outs'!
unsetenv: variable
    <cCall: 'g_app_launch_context_unsetenv' returning: #void
	args: #( #self #string )>! !

!GAppLaunchContext methodsFor: 'C call-outs'!
getEnvironment
    <cCall: 'g_app_launch_context_get_environment' returning: #string
	args: #( #self )>! !

!GAppLaunchContext methodsFor: 'C call-outs'!
getDisplay: info files: files
    <cCall: 'g_app_launch_context_get_display' returning: #string
	args: #( #self #cObject #cObject )>! !

!GAppLaunchContext methodsFor: 'C call-outs'!
getStartupNotifyId: info files: files
    <cCall: 'g_app_launch_context_get_startup_notify_id' returning: #string
	args: #( #self #cObject #cObject )>! !

!GAppLaunchContext methodsFor: 'C call-outs'!
launchFailed: startupNotifyId
    <cCall: 'g_app_launch_context_launch_failed' returning: #void
	args: #( #self #cObject )>! !

!GAppInfoMonitor class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_app_info_monitor_get_type' returning: #long
	args: #( )>! !

GLib registerType: GAppInfoMonitor!

!GAppInfoMonitor class methodsFor: 'C call-outs'!
get
    <cCall: 'g_app_info_monitor_get' returning: #{GAppInfoMonitor}
	args: #( )>! !

!GApplication class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_application_get_type' returning: #long
	args: #( )>! !

GLib registerType: GApplication!

!GApplication class methodsFor: 'C call-outs'!
idIsValid: applicationId
    <cCall: 'g_application_id_is_valid' returning: #boolean
	args: #( #string )>! !

!GApplication class methodsFor: 'C call-outs'!
new: applicationId flags: flags
    <cCall: 'g_application_new' returning: #{GApplication}
	args: #( #string #int )>! !

!GApplication methodsFor: 'C call-outs'!
setApplicationId: applicationId
    <cCall: 'g_application_set_application_id' returning: #void
	args: #( #self #string )>! !

!GApplication methodsFor: 'C call-outs'!
getDbusConnection
    <cCall: 'g_application_get_dbus_connection' returning: #{GDBusConnection}
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
getInactivityTimeout
    <cCall: 'g_application_get_inactivity_timeout' returning: #int
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
setInactivityTimeout: inactivityTimeout
    <cCall: 'g_application_set_inactivity_timeout' returning: #void
	args: #( #self #int )>! !

!GApplication methodsFor: 'C call-outs'!
getFlags
    <cCall: 'g_application_get_flags' returning: #int
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
setFlags: flags
    <cCall: 'g_application_set_flags' returning: #void
	args: #( #self #int )>! !

!GApplication methodsFor: 'C call-outs'!
setResourceBasePath: resourcePath
    <cCall: 'g_application_set_resource_base_path' returning: #void
	args: #( #self #string )>! !

!GApplication methodsFor: 'C call-outs'!
setActionGroup: actionGroup
    <cCall: 'g_application_set_action_group' returning: #void
	args: #( #self #cObject )>! !

!GApplication methodsFor: 'C call-outs'!
addMainOptionEntries: entries
    <cCall: 'g_application_add_main_option_entries' returning: #void
	args: #( #self #cObject )>! !

!GApplication methodsFor: 'C call-outs'!
addMainOption: longName shortName: shortName flags: flags arg: arg description: description argDescription: argDescription
    <cCall: 'g_application_add_main_option' returning: #void
	args: #( #self #string #char #int #int #string #string )>! !

!GApplication methodsFor: 'C call-outs'!
addOptionGroup: group
    <cCall: 'g_application_add_option_group' returning: #void
	args: #( #self #cObject )>! !

!GApplication methodsFor: 'C call-outs'!
getIsRegistered
    <cCall: 'g_application_get_is_registered' returning: #boolean
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
getIsRemote
    <cCall: 'g_application_get_is_remote' returning: #boolean
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
register: cancellable error: error
    <cCall: 'g_application_register' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GApplication methodsFor: 'C call-outs'!
hold
    <cCall: 'g_application_hold' returning: #void
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
release
    <cCall: 'g_application_release' returning: #void
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
activate
    <cCall: 'g_application_activate' returning: #void
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
open: files nFiles: nFiles hint: hint
    <cCall: 'g_application_open' returning: #void
	args: #( #self #cObject #int #string )>! !

!GApplication methodsFor: 'C call-outs'!
run: argc argv: argv
    <cCall: 'g_application_run' returning: #int
	args: #( #self #int #cObject )>! !

!GApplication methodsFor: 'C call-outs'!
quit
    <cCall: 'g_application_quit' returning: #void
	args: #( #self )>! !

!GApplication class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'g_application_get_default' returning: #{GApplication}
	args: #( )>! !

!GApplication methodsFor: 'C call-outs'!
setDefault
    <cCall: 'g_application_set_default' returning: #void
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
markBusy
    <cCall: 'g_application_mark_busy' returning: #void
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
unmarkBusy
    <cCall: 'g_application_unmark_busy' returning: #void
	args: #( #self )>! !

!GApplication methodsFor: 'C call-outs'!
sendNotification: id notification: notification
    <cCall: 'g_application_send_notification' returning: #void
	args: #( #self #string #cObject )>! !

!GApplication methodsFor: 'C call-outs'!
withdrawNotification: id
    <cCall: 'g_application_withdraw_notification' returning: #void
	args: #( #self #string )>! !

!GApplicationCommandLine class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_application_command_line_get_type' returning: #long
	args: #( )>! !

GLib registerType: GApplicationCommandLine!

!GApplicationCommandLine methodsFor: 'C call-outs'!
getArguments: argc
    <cCall: 'g_application_command_line_get_arguments' returning: #string
	args: #( #self #cObject )>! !

!GApplicationCommandLine methodsFor: 'C call-outs'!
getOptionsDict
    <cCall: 'g_application_command_line_get_options_dict' returning: #{GVariantDict}
	args: #( #self )>! !

!GApplicationCommandLine methodsFor: 'C call-outs'!
getStdin
    <cCall: 'g_application_command_line_get_stdin' returning: #{GInputStream}
	args: #( #self )>! !

!GApplicationCommandLine methodsFor: 'C call-outs'!
getIsRemote
    <cCall: 'g_application_command_line_get_is_remote' returning: #boolean
	args: #( #self )>! !

!GApplicationCommandLine methodsFor: 'C call-outs'!
print: format varargs: varargs
    <cCall: 'g_application_command_line_print' returning: #void
	args: #( #self #string #variadic )>! !

!GApplicationCommandLine methodsFor: 'C call-outs'!
printerr: format varargs: varargs
    <cCall: 'g_application_command_line_printerr' returning: #void
	args: #( #self #string #variadic )>! !

!GApplicationCommandLine methodsFor: 'C call-outs'!
getExitStatus
    <cCall: 'g_application_command_line_get_exit_status' returning: #int
	args: #( #self )>! !

!GApplicationCommandLine methodsFor: 'C call-outs'!
setExitStatus: exitStatus
    <cCall: 'g_application_command_line_set_exit_status' returning: #void
	args: #( #self #int )>! !

!GApplicationCommandLine methodsFor: 'C call-outs'!
getPlatformData
    <cCall: 'g_application_command_line_get_platform_data' returning: #{GVariant}
	args: #( #self )>! !

!GApplicationCommandLine methodsFor: 'C call-outs'!
createFileForArg: arg
    <cCall: 'g_application_command_line_create_file_for_arg' returning: #{GFile}
	args: #( #self #string )>! !

!GInitable class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_initable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GInitable!

!GInitable methodsFor: 'C call-outs'!
init: cancellable error: error
    <cCall: 'g_initable_init' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GInitable class methodsFor: 'C call-outs'!
new: objectType cancellable: cancellable error: error varargs: varargs
    <cCall: 'g_initable_new' returning: #{GInitable}
	args: #( #long #cObject #cObject #variadic )>! !

!GInitable class methodsFor: 'C call-outs'!
newv: objectType nParameters: nParameters parameters: parameters cancellable: cancellable error: error
    <cCall: 'g_initable_newv' returning: #{GInitable}
	args: #( #long #int #cObject #cObject #cObject )>! !

!GAsyncInitable class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_async_initable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GAsyncInitable!

!GAsyncInitable methodsFor: 'C call-outs'!
initAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_async_initable_init_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GAsyncInitable methodsFor: 'C call-outs'!
initFinish: res error: error
    <cCall: 'g_async_initable_init_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GAsyncInitable class methodsFor: 'C call-outs'!
newAsync: objectType ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData varargs: varargs
    <cCall: 'g_async_initable_new_async' returning: #{GAsyncInitable}
	args: #( #long #int #cObject #int #cObject #variadic )>! !

!GAsyncInitable class methodsFor: 'C call-outs'!
newvAsync: objectType nParameters: nParameters parameters: parameters ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_async_initable_newv_async' returning: #{GAsyncInitable}
	args: #( #long #int #cObject #int #cObject #int #cObject )>! !

!GAsyncInitable methodsFor: 'C call-outs'!
newFinish: res error: error
    <cCall: 'g_async_initable_new_finish' returning: #{GAsyncInitable}
	args: #( #self #cObject #cObject )>! !

!GAsyncResult class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_async_result_get_type' returning: #long
	args: #( )>! !

GLib registerType: GAsyncResult!

!GAsyncResult methodsFor: 'C call-outs'!
getUserData
    <cCall: 'g_async_result_get_user_data' returning: #cObject
	args: #( #self )>! !

!GAsyncResult methodsFor: 'C call-outs'!
getSourceObject
    <cCall: 'g_async_result_get_source_object' returning: #{GObject}
	args: #( #self )>! !

!GAsyncResult methodsFor: 'C call-outs'!
legacyPropagateError: error
    <cCall: 'g_async_result_legacy_propagate_error' returning: #boolean
	args: #( #self #cObject )>! !

!GAsyncResult methodsFor: 'C call-outs'!
isTagged: sourceTag
    <cCall: 'g_async_result_is_tagged' returning: #boolean
	args: #( #self #cObject )>! !

!GInputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_input_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GInputStream!

!GInputStream methodsFor: 'C call-outs'!
read
    <cCall: 'g_input_stream_read' returning: #int
	args: #( )>! !

!GInputStream methodsFor: 'C call-outs'!
readAll
    <cCall: 'g_input_stream_read_all' returning: #boolean
	args: #( )>! !

!GInputStream methodsFor: 'C call-outs'!
readBytes: count cancellable: cancellable error: error
    <cCall: 'g_input_stream_read_bytes' returning: #{GBytes}
	args: #( #self #int #cObject #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
skip: count cancellable: cancellable error: error
    <cCall: 'g_input_stream_skip' returning: #int
	args: #( #self #int #cObject #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
close: cancellable error: error
    <cCall: 'g_input_stream_close' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
readAsync
    <cCall: 'g_input_stream_read_async' returning: #void
	args: #( )>! !

!GInputStream methodsFor: 'C call-outs'!
readFinish: result error: error
    <cCall: 'g_input_stream_read_finish' returning: #int
	args: #( #self #cObject #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
readBytesAsync: count ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_input_stream_read_bytes_async' returning: #void
	args: #( #self #int #int #cObject #int #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
readBytesFinish: result error: error
    <cCall: 'g_input_stream_read_bytes_finish' returning: #{GBytes}
	args: #( #self #cObject #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
skipAsync: count ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_input_stream_skip_async' returning: #void
	args: #( #self #int #int #cObject #int #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
skipFinish: result error: error
    <cCall: 'g_input_stream_skip_finish' returning: #int
	args: #( #self #cObject #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
closeAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_input_stream_close_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
closeFinish: result error: error
    <cCall: 'g_input_stream_close_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
isClosed
    <cCall: 'g_input_stream_is_closed' returning: #boolean
	args: #( #self )>! !

!GInputStream methodsFor: 'C call-outs'!
hasPending
    <cCall: 'g_input_stream_has_pending' returning: #boolean
	args: #( #self )>! !

!GInputStream methodsFor: 'C call-outs'!
setPending: error
    <cCall: 'g_input_stream_set_pending' returning: #boolean
	args: #( #self #cObject )>! !

!GInputStream methodsFor: 'C call-outs'!
clearPending
    <cCall: 'g_input_stream_clear_pending' returning: #void
	args: #( #self )>! !

!GFilterInputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_filter_input_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFilterInputStream!

!GFilterInputStream methodsFor: 'C call-outs'!
getBaseStream
    <cCall: 'g_filter_input_stream_get_base_stream' returning: #{GInputStream}
	args: #( #self )>! !

!GFilterInputStream methodsFor: 'C call-outs'!
getCloseBaseStream
    <cCall: 'g_filter_input_stream_get_close_base_stream' returning: #boolean
	args: #( #self )>! !

!GFilterInputStream methodsFor: 'C call-outs'!
setCloseBaseStream: closeBase
    <cCall: 'g_filter_input_stream_set_close_base_stream' returning: #void
	args: #( #self #boolean )>! !

!GBufferedInputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_buffered_input_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GBufferedInputStream!

!GBufferedInputStream class methodsFor: 'C call-outs'!
new: baseStream
    <cCall: 'g_buffered_input_stream_new' returning: #{GBufferedInputStream}
	args: #( #cObject )>! !

!GBufferedInputStream class methodsFor: 'C call-outs'!
newSized: baseStream size: size
    <cCall: 'g_buffered_input_stream_new_sized' returning: #{GBufferedInputStream}
	args: #( #cObject #int )>! !

!GBufferedInputStream methodsFor: 'C call-outs'!
getBufferSize
    <cCall: 'g_buffered_input_stream_get_buffer_size' returning: #int
	args: #( #self )>! !

!GBufferedInputStream methodsFor: 'C call-outs'!
setBufferSize: size
    <cCall: 'g_buffered_input_stream_set_buffer_size' returning: #void
	args: #( #self #int )>! !

!GBufferedInputStream methodsFor: 'C call-outs'!
getAvailable
    <cCall: 'g_buffered_input_stream_get_available' returning: #int
	args: #( #self )>! !

!GBufferedInputStream methodsFor: 'C call-outs'!
peek
    <cCall: 'g_buffered_input_stream_peek' returning: #int
	args: #( )>! !

!GBufferedInputStream methodsFor: 'C call-outs'!
fill: count cancellable: cancellable error: error
    <cCall: 'g_buffered_input_stream_fill' returning: #int
	args: #( #self #int #cObject #cObject )>! !

!GBufferedInputStream methodsFor: 'C call-outs'!
fillAsync: count ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_buffered_input_stream_fill_async' returning: #void
	args: #( #self #int #int #cObject #int #cObject )>! !

!GBufferedInputStream methodsFor: 'C call-outs'!
fillFinish: result error: error
    <cCall: 'g_buffered_input_stream_fill_finish' returning: #int
	args: #( #self #cObject #cObject )>! !

!GBufferedInputStream methodsFor: 'C call-outs'!
readByte: cancellable error: error
    <cCall: 'g_buffered_input_stream_read_byte' returning: #int
	args: #( #self #cObject #cObject )>! !

!GOutputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_output_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GOutputStream!

!GOutputStream methodsFor: 'C call-outs'!
write
    <cCall: 'g_output_stream_write' returning: #int
	args: #( )>! !

!GOutputStream methodsFor: 'C call-outs'!
writeAll
    <cCall: 'g_output_stream_write_all' returning: #boolean
	args: #( )>! !

!GOutputStream methodsFor: 'C call-outs'!
printf: bytesWritten cancellable: cancellable error: error format: format varargs: varargs
    <cCall: 'g_output_stream_printf' returning: #boolean
	args: #( #self #cObject #cObject #cObject #string #variadic )>! !

!GOutputStream methodsFor: 'C call-outs'!
writeBytes: bytes cancellable: cancellable error: error
    <cCall: 'g_output_stream_write_bytes' returning: #int
	args: #( #self #cObject #cObject #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
splice: source flags: flags cancellable: cancellable error: error
    <cCall: 'g_output_stream_splice' returning: #int
	args: #( #self #cObject #int #cObject #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
flush: cancellable error: error
    <cCall: 'g_output_stream_flush' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
close: cancellable error: error
    <cCall: 'g_output_stream_close' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
writeAsync
    <cCall: 'g_output_stream_write_async' returning: #void
	args: #( )>! !

!GOutputStream methodsFor: 'C call-outs'!
writeFinish: result error: error
    <cCall: 'g_output_stream_write_finish' returning: #int
	args: #( #self #cObject #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
writeBytesAsync: bytes ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_output_stream_write_bytes_async' returning: #void
	args: #( #self #cObject #int #cObject #int #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
writeBytesFinish: result error: error
    <cCall: 'g_output_stream_write_bytes_finish' returning: #int
	args: #( #self #cObject #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
spliceAsync: source flags: flags ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_output_stream_splice_async' returning: #void
	args: #( #self #cObject #int #int #cObject #int #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
spliceFinish: result error: error
    <cCall: 'g_output_stream_splice_finish' returning: #int
	args: #( #self #cObject #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
flushAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_output_stream_flush_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
flushFinish: result error: error
    <cCall: 'g_output_stream_flush_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
closeAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_output_stream_close_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
closeFinish: result error: error
    <cCall: 'g_output_stream_close_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
isClosed
    <cCall: 'g_output_stream_is_closed' returning: #boolean
	args: #( #self )>! !

!GOutputStream methodsFor: 'C call-outs'!
isClosing
    <cCall: 'g_output_stream_is_closing' returning: #boolean
	args: #( #self )>! !

!GOutputStream methodsFor: 'C call-outs'!
hasPending
    <cCall: 'g_output_stream_has_pending' returning: #boolean
	args: #( #self )>! !

!GOutputStream methodsFor: 'C call-outs'!
setPending: error
    <cCall: 'g_output_stream_set_pending' returning: #boolean
	args: #( #self #cObject )>! !

!GOutputStream methodsFor: 'C call-outs'!
clearPending
    <cCall: 'g_output_stream_clear_pending' returning: #void
	args: #( #self )>! !

!GFilterOutputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_filter_output_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFilterOutputStream!

!GFilterOutputStream methodsFor: 'C call-outs'!
getBaseStream
    <cCall: 'g_filter_output_stream_get_base_stream' returning: #{GOutputStream}
	args: #( #self )>! !

!GFilterOutputStream methodsFor: 'C call-outs'!
getCloseBaseStream
    <cCall: 'g_filter_output_stream_get_close_base_stream' returning: #boolean
	args: #( #self )>! !

!GFilterOutputStream methodsFor: 'C call-outs'!
setCloseBaseStream: closeBase
    <cCall: 'g_filter_output_stream_set_close_base_stream' returning: #void
	args: #( #self #boolean )>! !

!GBufferedOutputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_buffered_output_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GBufferedOutputStream!

!GBufferedOutputStream class methodsFor: 'C call-outs'!
new: baseStream
    <cCall: 'g_buffered_output_stream_new' returning: #{GBufferedOutputStream}
	args: #( #cObject )>! !

!GBufferedOutputStream class methodsFor: 'C call-outs'!
newSized: baseStream size: size
    <cCall: 'g_buffered_output_stream_new_sized' returning: #{GBufferedOutputStream}
	args: #( #cObject #int )>! !

!GBufferedOutputStream methodsFor: 'C call-outs'!
getBufferSize
    <cCall: 'g_buffered_output_stream_get_buffer_size' returning: #int
	args: #( #self )>! !

!GBufferedOutputStream methodsFor: 'C call-outs'!
setBufferSize: size
    <cCall: 'g_buffered_output_stream_set_buffer_size' returning: #void
	args: #( #self #int )>! !

!GBufferedOutputStream methodsFor: 'C call-outs'!
getAutoGrow
    <cCall: 'g_buffered_output_stream_get_auto_grow' returning: #boolean
	args: #( #self )>! !

!GBufferedOutputStream methodsFor: 'C call-outs'!
setAutoGrow: autoGrow
    <cCall: 'g_buffered_output_stream_set_auto_grow' returning: #void
	args: #( #self #boolean )>! !

!GBytesIcon class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_bytes_icon_get_type' returning: #long
	args: #( )>! !

GLib registerType: GBytesIcon!

!GBytesIcon class methodsFor: 'C call-outs'!
new: bytes
    <cCall: 'g_bytes_icon_new' returning: #{GBytesIcon}
	args: #( #cObject )>! !

!GBytesIcon methodsFor: 'C call-outs'!
getBytes
    <cCall: 'g_bytes_icon_get_bytes' returning: #{GBytes}
	args: #( #self )>! !

!GCancellable class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_cancellable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GCancellable!

!GCancellable class methodsFor: 'C call-outs'!
new
    <cCall: 'g_cancellable_new' returning: #{GCancellable}
	args: #( )>! !

!GCancellable methodsFor: 'C call-outs'!
isCancelled
    <cCall: 'g_cancellable_is_cancelled' returning: #boolean
	args: #( #self )>! !

!GCancellable methodsFor: 'C call-outs'!
setErrorIfCancelled: error
    <cCall: 'g_cancellable_set_error_if_cancelled' returning: #boolean
	args: #( #self #cObject )>! !

!GCancellable methodsFor: 'C call-outs'!
getFd
    <cCall: 'g_cancellable_get_fd' returning: #int
	args: #( #self )>! !

!GCancellable methodsFor: 'C call-outs'!
makePollfd: pollfd
    <cCall: 'g_cancellable_make_pollfd' returning: #boolean
	args: #( #self #cObject )>! !

!GCancellable methodsFor: 'C call-outs'!
releaseFd
    <cCall: 'g_cancellable_release_fd' returning: #void
	args: #( #self )>! !

!GCancellable class methodsFor: 'C call-outs'!
getCurrent
    <cCall: 'g_cancellable_get_current' returning: #{GCancellable}
	args: #( )>! !

!GCancellable methodsFor: 'C call-outs'!
pushCurrent
    <cCall: 'g_cancellable_push_current' returning: #void
	args: #( #self )>! !

!GCancellable methodsFor: 'C call-outs'!
popCurrent
    <cCall: 'g_cancellable_pop_current' returning: #void
	args: #( #self )>! !

!GCancellable methodsFor: 'C call-outs'!
reset
    <cCall: 'g_cancellable_reset' returning: #void
	args: #( #self )>! !

!GCancellable methodsFor: 'C call-outs'!
disconnect: handlerId
    <cCall: 'g_cancellable_disconnect' returning: #void
	args: #( #self #long )>! !

!GCancellable methodsFor: 'C call-outs'!
cancel
    <cCall: 'g_cancellable_cancel' returning: #void
	args: #( #self )>! !

!GConverter class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_converter_get_type' returning: #long
	args: #( )>! !

GLib registerType: GConverter!

!GConverter methodsFor: 'C call-outs'!
convert
    <cCall: 'g_converter_convert' returning: #int
	args: #( )>! !

!GConverter methodsFor: 'C call-outs'!
reset
    <cCall: 'g_converter_reset' returning: #void
	args: #( #self )>! !

!GCharsetConverter class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_charset_converter_get_type' returning: #long
	args: #( )>! !

GLib registerType: GCharsetConverter!

!GCharsetConverter class methodsFor: 'C call-outs'!
new: toCharset fromCharset: fromCharset error: error
    <cCall: 'g_charset_converter_new' returning: #{GCharsetConverter}
	args: #( #string #string #cObject )>! !

!GCharsetConverter methodsFor: 'C call-outs'!
setUseFallback: useFallback
    <cCall: 'g_charset_converter_set_use_fallback' returning: #void
	args: #( #self #boolean )>! !

!GCharsetConverter methodsFor: 'C call-outs'!
getUseFallback
    <cCall: 'g_charset_converter_get_use_fallback' returning: #boolean
	args: #( #self )>! !

!GCharsetConverter methodsFor: 'C call-outs'!
getNumFallbacks
    <cCall: 'g_charset_converter_get_num_fallbacks' returning: #int
	args: #( #self )>! !

!GContent class methodsFor: 'C call-outs'!
typeEquals: type1 type2: type2
    <cCall: 'g_content_type_equals' returning: #boolean
	args: #( #string #string )>! !

!GContent class methodsFor: 'C call-outs'!
typeIsA: type supertype: supertype
    <cCall: 'g_content_type_is_a' returning: #boolean
	args: #( #string #string )>! !

!GContent class methodsFor: 'C call-outs'!
typeIsUnknown: type
    <cCall: 'g_content_type_is_unknown' returning: #boolean
	args: #( #string )>! !

!GContent class methodsFor: 'C call-outs'!
typeGetDescription: type
    <cCall: 'g_content_type_get_description' returning: #string
	args: #( #string )>! !

!GContent class methodsFor: 'C call-outs'!
typeGetMimeType: type
    <cCall: 'g_content_type_get_mime_type' returning: #string
	args: #( #string )>! !

!GContent class methodsFor: 'C call-outs'!
typeGetIcon: type
    <cCall: 'g_content_type_get_icon' returning: #{GIcon}
	args: #( #string )>! !

!GContent class methodsFor: 'C call-outs'!
typeGetSymbolicIcon: type
    <cCall: 'g_content_type_get_symbolic_icon' returning: #{GIcon}
	args: #( #string )>! !

!GContent class methodsFor: 'C call-outs'!
typeGetGenericIconName: type
    <cCall: 'g_content_type_get_generic_icon_name' returning: #string
	args: #( #string )>! !

!GContent class methodsFor: 'C call-outs'!
typeCanBeExecutable: type
    <cCall: 'g_content_type_can_be_executable' returning: #boolean
	args: #( #string )>! !

!GContent class methodsFor: 'C call-outs'!
typeFromMimeType: mimeType
    <cCall: 'g_content_type_from_mime_type' returning: #string
	args: #( #string )>! !

!GContent class methodsFor: 'C call-outs'!
typeGuess: filename data: data dataSize: dataSize resultUncertain: resultUncertain
    <cCall: 'g_content_type_guess' returning: #string
	args: #( #string #cObject #int #cObject )>! !

!GContent class methodsFor: 'C call-outs'!
typeGuessForTree: root
    <cCall: 'g_content_type_guess_for_tree' returning: #string
	args: #( #cObject )>! !

!GContent class methodsFor: 'C call-outs'!
typesGetRegistered
    <cCall: 'g_content_types_get_registered' returning: #{GList}
	args: #( )>! !

!GConverterInputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_converter_input_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GConverterInputStream!

!GConverterInputStream class methodsFor: 'C call-outs'!
new: baseStream converter: converter
    <cCall: 'g_converter_input_stream_new' returning: #{GConverterInputStream}
	args: #( #cObject #cObject )>! !

!GConverterInputStream methodsFor: 'C call-outs'!
getConverter
    <cCall: 'g_converter_input_stream_get_converter' returning: #{GConverter}
	args: #( #self )>! !

!GConverterOutputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_converter_output_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GConverterOutputStream!

!GConverterOutputStream class methodsFor: 'C call-outs'!
new: baseStream converter: converter
    <cCall: 'g_converter_output_stream_new' returning: #{GConverterOutputStream}
	args: #( #cObject #cObject )>! !

!GConverterOutputStream methodsFor: 'C call-outs'!
getConverter
    <cCall: 'g_converter_output_stream_get_converter' returning: #{GConverter}
	args: #( #self )>! !

!GCredentials class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_credentials_get_type' returning: #long
	args: #( )>! !

GLib registerType: GCredentials!

!GCredentials class methodsFor: 'C call-outs'!
new
    <cCall: 'g_credentials_new' returning: #{GCredentials}
	args: #( )>! !

!GCredentials methodsFor: 'C call-outs'!
toString
    <cCall: 'g_credentials_to_string' returning: #string
	args: #( #self )>! !

!GCredentials methodsFor: 'C call-outs'!
getNative: nativeType
    <cCall: 'g_credentials_get_native' returning: #cObject
	args: #( #self #int )>! !

!GCredentials methodsFor: 'C call-outs'!
setNative: nativeType native: native
    <cCall: 'g_credentials_set_native' returning: #void
	args: #( #self #int #cObject )>! !

!GCredentials methodsFor: 'C call-outs'!
isSameUser: otherCredentials error: error
    <cCall: 'g_credentials_is_same_user' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GCredentials methodsFor: 'C call-outs'!
setUnixUser: uid error: error
    <cCall: 'g_credentials_set_unix_user' returning: #boolean
	args: #( #self #int #cObject )>! !

!GDataInputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_data_input_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDataInputStream!

!GDataInputStream class methodsFor: 'C call-outs'!
new: baseStream
    <cCall: 'g_data_input_stream_new' returning: #{GDataInputStream}
	args: #( #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
setByteOrder: order
    <cCall: 'g_data_input_stream_set_byte_order' returning: #void
	args: #( #self #int )>! !

!GDataInputStream methodsFor: 'C call-outs'!
getByteOrder
    <cCall: 'g_data_input_stream_get_byte_order' returning: #int
	args: #( #self )>! !

!GDataInputStream methodsFor: 'C call-outs'!
setNewlineType: type
    <cCall: 'g_data_input_stream_set_newline_type' returning: #void
	args: #( #self #int )>! !

!GDataInputStream methodsFor: 'C call-outs'!
getNewlineType
    <cCall: 'g_data_input_stream_get_newline_type' returning: #int
	args: #( #self )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readByte: cancellable error: error
    <cCall: 'g_data_input_stream_read_byte' returning: #int
	args: #( #self #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readInt16: cancellable error: error
    <cCall: 'g_data_input_stream_read_int16' returning: #int
	args: #( #self #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readUint16: cancellable error: error
    <cCall: 'g_data_input_stream_read_uint16' returning: #int
	args: #( #self #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readInt32: cancellable error: error
    <cCall: 'g_data_input_stream_read_int32' returning: #int
	args: #( #self #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readUint32: cancellable error: error
    <cCall: 'g_data_input_stream_read_uint32' returning: #int
	args: #( #self #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readInt64: cancellable error: error
    <cCall: 'g_data_input_stream_read_int64' returning: #int
	args: #( #self #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readUint64: cancellable error: error
    <cCall: 'g_data_input_stream_read_uint64' returning: #int
	args: #( #self #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readLine: length cancellable: cancellable error: error
    <cCall: 'g_data_input_stream_read_line' returning: #string
	args: #( #self #cObject #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readLineUtf8: length cancellable: cancellable error: error
    <cCall: 'g_data_input_stream_read_line_utf8' returning: #string
	args: #( #self #cObject #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readLineAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_data_input_stream_read_line_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readLineFinish: result length: length error: error
    <cCall: 'g_data_input_stream_read_line_finish' returning: #string
	args: #( #self #cObject #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readLineFinishUtf8: result length: length error: error
    <cCall: 'g_data_input_stream_read_line_finish_utf8' returning: #string
	args: #( #self #cObject #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readUntil: stopChars length: length cancellable: cancellable error: error
    <cCall: 'g_data_input_stream_read_until' returning: #string
	args: #( #self #string #cObject #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readUntilAsync: stopChars ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_data_input_stream_read_until_async' returning: #void
	args: #( #self #string #int #cObject #int #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readUntilFinish: result length: length error: error
    <cCall: 'g_data_input_stream_read_until_finish' returning: #string
	args: #( #self #cObject #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readUpto: stopChars stopCharsLen: stopCharsLen length: length cancellable: cancellable error: error
    <cCall: 'g_data_input_stream_read_upto' returning: #string
	args: #( #self #string #int #cObject #cObject #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readUptoAsync: stopChars stopCharsLen: stopCharsLen ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_data_input_stream_read_upto_async' returning: #void
	args: #( #self #string #int #int #cObject #int #cObject )>! !

!GDataInputStream methodsFor: 'C call-outs'!
readUptoFinish: result length: length error: error
    <cCall: 'g_data_input_stream_read_upto_finish' returning: #string
	args: #( #self #cObject #cObject #cObject )>! !

!GDataOutputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_data_output_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDataOutputStream!

!GDataOutputStream class methodsFor: 'C call-outs'!
new: baseStream
    <cCall: 'g_data_output_stream_new' returning: #{GDataOutputStream}
	args: #( #cObject )>! !

!GDataOutputStream methodsFor: 'C call-outs'!
setByteOrder: order
    <cCall: 'g_data_output_stream_set_byte_order' returning: #void
	args: #( #self #int )>! !

!GDataOutputStream methodsFor: 'C call-outs'!
getByteOrder
    <cCall: 'g_data_output_stream_get_byte_order' returning: #int
	args: #( #self )>! !

!GDataOutputStream methodsFor: 'C call-outs'!
putByte: data cancellable: cancellable error: error
    <cCall: 'g_data_output_stream_put_byte' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GDataOutputStream methodsFor: 'C call-outs'!
putInt16: data cancellable: cancellable error: error
    <cCall: 'g_data_output_stream_put_int16' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GDataOutputStream methodsFor: 'C call-outs'!
putUint16: data cancellable: cancellable error: error
    <cCall: 'g_data_output_stream_put_uint16' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GDataOutputStream methodsFor: 'C call-outs'!
putInt32: data cancellable: cancellable error: error
    <cCall: 'g_data_output_stream_put_int32' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GDataOutputStream methodsFor: 'C call-outs'!
putUint32: data cancellable: cancellable error: error
    <cCall: 'g_data_output_stream_put_uint32' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GDataOutputStream methodsFor: 'C call-outs'!
putInt64: data cancellable: cancellable error: error
    <cCall: 'g_data_output_stream_put_int64' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GDataOutputStream methodsFor: 'C call-outs'!
putUint64: data cancellable: cancellable error: error
    <cCall: 'g_data_output_stream_put_uint64' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GDataOutputStream methodsFor: 'C call-outs'!
putString: str cancellable: cancellable error: error
    <cCall: 'g_data_output_stream_put_string' returning: #boolean
	args: #( #self #string #cObject #cObject )>! !

!GDbus class methodsFor: 'C call-outs'!
addressEscapeValue: string
    <cCall: 'g_dbus_address_escape_value' returning: #string
	args: #( #string )>! !

!GDbus class methodsFor: 'C call-outs'!
isAddress: string
    <cCall: 'g_dbus_is_address' returning: #boolean
	args: #( #string )>! !

!GDbus class methodsFor: 'C call-outs'!
isSupportedAddress: string error: error
    <cCall: 'g_dbus_is_supported_address' returning: #boolean
	args: #( #string #cObject )>! !

!GDbus class methodsFor: 'C call-outs'!
addressGetStream: address cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_address_get_stream' returning: #void
	args: #( #string #cObject #int #cObject )>! !

!GDbus class methodsFor: 'C call-outs'!
addressGetStreamFinish: res outGuid: outGuid error: error
    <cCall: 'g_dbus_address_get_stream_finish' returning: #{GIOStream}
	args: #( #cObject #cObject #cObject )>! !

!GDbus class methodsFor: 'C call-outs'!
addressGetStreamSync: address outGuid: outGuid cancellable: cancellable error: error
    <cCall: 'g_dbus_address_get_stream_sync' returning: #{GIOStream}
	args: #( #string #cObject #cObject #cObject )>! !

!GDbus class methodsFor: 'C call-outs'!
addressGetForBusSync: busType cancellable: cancellable error: error
    <cCall: 'g_dbus_address_get_for_bus_sync' returning: #string
	args: #( #int #cObject #cObject )>! !

!GDBusAuthObserver class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_auth_observer_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusAuthObserver!

!GDBusAuthObserver class methodsFor: 'C call-outs'!
new
    <cCall: 'g_dbus_auth_observer_new' returning: #{GDBusAuthObserver}
	args: #( )>! !

!GDBusAuthObserver methodsFor: 'C call-outs'!
authorizeAuthenticatedPeer: stream credentials: credentials
    <cCall: 'g_dbus_auth_observer_authorize_authenticated_peer' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GDBusAuthObserver methodsFor: 'C call-outs'!
allowMechanism: mechanism
    <cCall: 'g_dbus_auth_observer_allow_mechanism' returning: #boolean
	args: #( #self #string )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_connection_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusConnection!

!GDBusConnection class methodsFor: 'C call-outs'!
get: busType cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_bus_get' returning: #void
	args: #( #int #cObject #int #cObject )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
getFinish: res error: error
    <cCall: 'g_bus_get_finish' returning: #{GDBusConnection}
	args: #( #cObject #cObject )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
getSync: busType cancellable: cancellable error: error
    <cCall: 'g_bus_get_sync' returning: #{GDBusConnection}
	args: #( #int #cObject #cObject )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
new: stream guid: guid flags: flags observer: observer cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_connection_new' returning: #{GDBusConnection}
	args: #( #cObject #string #int #cObject #cObject #int #cObject )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
newFinish: res error: error
    <cCall: 'g_dbus_connection_new_finish' returning: #{GDBusConnection}
	args: #( #cObject #cObject )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
newSync: stream guid: guid flags: flags observer: observer cancellable: cancellable error: error
    <cCall: 'g_dbus_connection_new_sync' returning: #{GDBusConnection}
	args: #( #cObject #string #int #cObject #cObject #cObject )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
newForAddress: address flags: flags observer: observer cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_connection_new_for_address' returning: #{GDBusConnection}
	args: #( #string #int #cObject #cObject #int #cObject )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
newForAddressFinish: res error: error
    <cCall: 'g_dbus_connection_new_for_address_finish' returning: #{GDBusConnection}
	args: #( #cObject #cObject )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
newForAddressSync: address flags: flags observer: observer cancellable: cancellable error: error
    <cCall: 'g_dbus_connection_new_for_address_sync' returning: #{GDBusConnection}
	args: #( #string #int #cObject #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
startMessageProcessing
    <cCall: 'g_dbus_connection_start_message_processing' returning: #void
	args: #( #self )>! !

!GDBusConnection methodsFor: 'C call-outs'!
isClosed
    <cCall: 'g_dbus_connection_is_closed' returning: #boolean
	args: #( #self )>! !

!GDBusConnection methodsFor: 'C call-outs'!
getStream
    <cCall: 'g_dbus_connection_get_stream' returning: #{GIOStream}
	args: #( #self )>! !

!GDBusConnection methodsFor: 'C call-outs'!
getPeerCredentials
    <cCall: 'g_dbus_connection_get_peer_credentials' returning: #{GCredentials}
	args: #( #self )>! !

!GDBusConnection methodsFor: 'C call-outs'!
getLastSerial
    <cCall: 'g_dbus_connection_get_last_serial' returning: #int
	args: #( #self )>! !

!GDBusConnection methodsFor: 'C call-outs'!
getExitOnClose
    <cCall: 'g_dbus_connection_get_exit_on_close' returning: #boolean
	args: #( #self )>! !

!GDBusConnection methodsFor: 'C call-outs'!
setExitOnClose: exitOnClose
    <cCall: 'g_dbus_connection_set_exit_on_close' returning: #void
	args: #( #self #boolean )>! !

!GDBusConnection methodsFor: 'C call-outs'!
getCapabilities
    <cCall: 'g_dbus_connection_get_capabilities' returning: #int
	args: #( #self )>! !

!GDBusConnection methodsFor: 'C call-outs'!
close: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_connection_close' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
closeFinish: res error: error
    <cCall: 'g_dbus_connection_close_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
closeSync: cancellable error: error
    <cCall: 'g_dbus_connection_close_sync' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
flush: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_connection_flush' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
flushFinish: res error: error
    <cCall: 'g_dbus_connection_flush_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
flushSync: cancellable error: error
    <cCall: 'g_dbus_connection_flush_sync' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
sendMessage: message flags: flags outSerial: outSerial error: error
    <cCall: 'g_dbus_connection_send_message' returning: #boolean
	args: #( #self #cObject #int #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
sendMessageWithReply: message flags: flags timeoutMsec: timeoutMsec outSerial: outSerial cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_connection_send_message_with_reply' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #int #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
sendMessageWithReplyFinish: res error: error
    <cCall: 'g_dbus_connection_send_message_with_reply_finish' returning: #{GDBusMessage}
	args: #( #self #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
sendMessageWithReplySync: message flags: flags timeoutMsec: timeoutMsec outSerial: outSerial cancellable: cancellable error: error
    <cCall: 'g_dbus_connection_send_message_with_reply_sync' returning: #{GDBusMessage}
	args: #( #self #cObject #int #int #cObject #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
emitSignal: destinationBusName objectPath: objectPath interfaceName: interfaceName signalName: signalName parameters: parameters error: error
    <cCall: 'g_dbus_connection_emit_signal' returning: #boolean
	args: #( #self #string #string #string #string #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
call: busName objectPath: objectPath interfaceName: interfaceName methodName: methodName parameters: parameters replyType: replyType flags: flags timeoutMsec: timeoutMsec cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_connection_call' returning: #void
	args: #( #self #string #string #string #string #cObject #cObject #int #int #cObject #int #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
callFinish: res error: error
    <cCall: 'g_dbus_connection_call_finish' returning: #{GVariant}
	args: #( #self #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
callSync: busName objectPath: objectPath interfaceName: interfaceName methodName: methodName parameters: parameters replyType: replyType flags: flags timeoutMsec: timeoutMsec cancellable: cancellable error: error
    <cCall: 'g_dbus_connection_call_sync' returning: #{GVariant}
	args: #( #self #string #string #string #string #cObject #cObject #int #int #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
callWithUnixFdList: busName objectPath: objectPath interfaceName: interfaceName methodName: methodName parameters: parameters replyType: replyType flags: flags timeoutMsec: timeoutMsec fdList: fdList cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_connection_call_with_unix_fd_list' returning: #void
	args: #( #self #string #string #string #string #cObject #cObject #int #int #cObject #cObject #int #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
callWithUnixFdListFinish: outFdList res: res error: error
    <cCall: 'g_dbus_connection_call_with_unix_fd_list_finish' returning: #{GVariant}
	args: #( #self #cObject #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
callWithUnixFdListSync: busName objectPath: objectPath interfaceName: interfaceName methodName: methodName parameters: parameters replyType: replyType flags: flags timeoutMsec: timeoutMsec fdList: fdList outFdList: outFdList cancellable: cancellable error: error
    <cCall: 'g_dbus_connection_call_with_unix_fd_list_sync' returning: #{GVariant}
	args: #( #self #string #string #string #string #cObject #cObject #int #int #cObject #cObject #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
registerObject: objectPath interfaceInfo: interfaceInfo vtable: vtable userData: userData userDataFreeFunc: userDataFreeFunc error: error
    <cCall: 'g_dbus_connection_register_object' returning: #int
	args: #( #self #string #cObject #cObject #cObject #int #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
unregisterObject: registrationId
    <cCall: 'g_dbus_connection_unregister_object' returning: #boolean
	args: #( #self #int )>! !

!GDBusConnection methodsFor: 'C call-outs'!
registerSubtree: objectPath vtable: vtable flags: flags userData: userData userDataFreeFunc: userDataFreeFunc error: error
    <cCall: 'g_dbus_connection_register_subtree' returning: #int
	args: #( #self #string #cObject #int #cObject #int #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
unregisterSubtree: registrationId
    <cCall: 'g_dbus_connection_unregister_subtree' returning: #boolean
	args: #( #self #int )>! !

!GDBusConnection methodsFor: 'C call-outs'!
signalSubscribe: sender interfaceName: interfaceName member: member objectPath: objectPath arg0: arg0 flags: flags callback: callback userData: userData userDataFreeFunc: userDataFreeFunc
    <cCall: 'g_dbus_connection_signal_subscribe' returning: #int
	args: #( #self #string #string #string #string #string #int #int #cObject #int )>! !

!GDBusConnection methodsFor: 'C call-outs'!
signalUnsubscribe: subscriptionId
    <cCall: 'g_dbus_connection_signal_unsubscribe' returning: #void
	args: #( #self #int )>! !

!GDBusConnection methodsFor: 'C call-outs'!
addFilter: filterFunction userData: userData userDataFreeFunc: userDataFreeFunc
    <cCall: 'g_dbus_connection_add_filter' returning: #int
	args: #( #self #int #cObject #int )>! !

!GDBusConnection methodsFor: 'C call-outs'!
removeFilter: filterId
    <cCall: 'g_dbus_connection_remove_filter' returning: #void
	args: #( #self #int )>! !

!GDbus class methodsFor: 'C call-outs'!
errorIsRemoteError: error
    <cCall: 'g_dbus_error_is_remote_error' returning: #boolean
	args: #( #cObject )>! !

!GDbus class methodsFor: 'C call-outs'!
errorGetRemoteError: error
    <cCall: 'g_dbus_error_get_remote_error' returning: #string
	args: #( #cObject )>! !

!GDbus class methodsFor: 'C call-outs'!
errorStripRemoteError: error
    <cCall: 'g_dbus_error_strip_remote_error' returning: #boolean
	args: #( #cObject )>! !

!GDbus class methodsFor: 'C call-outs'!
errorRegisterError: errorDomain errorCode: errorCode dbusErrorName: dbusErrorName
    <cCall: 'g_dbus_error_register_error' returning: #boolean
	args: #( #int #int #string )>! !

!GDbus class methodsFor: 'C call-outs'!
errorUnregisterError: errorDomain errorCode: errorCode dbusErrorName: dbusErrorName
    <cCall: 'g_dbus_error_unregister_error' returning: #boolean
	args: #( #int #int #string )>! !

!GDbus class methodsFor: 'C call-outs'!
errorRegisterErrorDomain: errorDomainQuarkName quarkVolatile: quarkVolatile entries: entries numEntries: numEntries
    <cCall: 'g_dbus_error_register_error_domain' returning: #void
	args: #( #string #cObject #cObject #int )>! !

!GDbus class methodsFor: 'C call-outs'!
errorNewForDbusError: dbusErrorName dbusErrorMessage: dbusErrorMessage
    <cCall: 'g_dbus_error_new_for_dbus_error' returning: #{GError}
	args: #( #string #string )>! !

!GDbus class methodsFor: 'C call-outs'!
errorSetDbusError: error dbusErrorName: dbusErrorName dbusErrorMessage: dbusErrorMessage format: format varargs: varargs
    <cCall: 'g_dbus_error_set_dbus_error' returning: #void
	args: #( #cObject #string #string #string #variadic )>! !

!GDbus class methodsFor: 'C call-outs'!
errorEncodeGerror: error
    <cCall: 'g_dbus_error_encode_gerror' returning: #string
	args: #( #cObject )>! !

!GDBusInterfaceInfo methodsFor: 'C call-outs'!
lookupMethod: name
    <cCall: 'g_dbus_interface_info_lookup_method' returning: #{GDBusMethodInfo}
	args: #( #self #string )>! !

!GDBusInterfaceInfo methodsFor: 'C call-outs'!
lookupSignal: name
    <cCall: 'g_dbus_interface_info_lookup_signal' returning: #{GDBusSignalInfo}
	args: #( #self #string )>! !

!GDBusInterfaceInfo methodsFor: 'C call-outs'!
lookupProperty: name
    <cCall: 'g_dbus_interface_info_lookup_property' returning: #{GDBusPropertyInfo}
	args: #( #self #string )>! !

!GDBusInterfaceInfo methodsFor: 'C call-outs'!
cacheBuild
    <cCall: 'g_dbus_interface_info_cache_build' returning: #void
	args: #( #self )>! !

!GDBusInterfaceInfo methodsFor: 'C call-outs'!
cacheRelease
    <cCall: 'g_dbus_interface_info_cache_release' returning: #void
	args: #( #self )>! !

!GDBusInterfaceInfo methodsFor: 'C call-outs'!
generateXml: indent stringBuilder: stringBuilder
    <cCall: 'g_dbus_interface_info_generate_xml' returning: #void
	args: #( #self #int #cObject )>! !

!GDBusNodeInfo class methodsFor: 'C call-outs'!
newForXml: xmlData error: error
    <cCall: 'g_dbus_node_info_new_for_xml' returning: #{GDBusNodeInfo}
	args: #( #string #cObject )>! !

!GDBusNodeInfo methodsFor: 'C call-outs'!
lookupInterface: name
    <cCall: 'g_dbus_node_info_lookup_interface' returning: #{GDBusInterfaceInfo}
	args: #( #self #string )>! !

!GDBusNodeInfo methodsFor: 'C call-outs'!
generateXml: indent stringBuilder: stringBuilder
    <cCall: 'g_dbus_node_info_generate_xml' returning: #void
	args: #( #self #int #cObject )>! !

!GDBusNodeInfo methodsFor: 'C call-outs'!
ref
    <cCall: 'g_dbus_node_info_ref' returning: #{GDBusNodeInfo}
	args: #( #self )>! !

!GDBusInterfaceInfo methodsFor: 'C call-outs'!
ref
    <cCall: 'g_dbus_interface_info_ref' returning: #{GDBusInterfaceInfo}
	args: #( #self )>! !

!GDBusMethodInfo methodsFor: 'C call-outs'!
ref
    <cCall: 'g_dbus_method_info_ref' returning: #{GDBusMethodInfo}
	args: #( #self )>! !

!GDBusSignalInfo methodsFor: 'C call-outs'!
ref
    <cCall: 'g_dbus_signal_info_ref' returning: #{GDBusSignalInfo}
	args: #( #self )>! !

!GDBusPropertyInfo methodsFor: 'C call-outs'!
ref
    <cCall: 'g_dbus_property_info_ref' returning: #{GDBusPropertyInfo}
	args: #( #self )>! !

!GDBusArgInfo methodsFor: 'C call-outs'!
ref
    <cCall: 'g_dbus_arg_info_ref' returning: #{GDBusArgInfo}
	args: #( #self )>! !

!GDBusAnnotationInfo methodsFor: 'C call-outs'!
ref
    <cCall: 'g_dbus_annotation_info_ref' returning: #{GDBusAnnotationInfo}
	args: #( #self )>! !

!GDBusNodeInfo methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_dbus_node_info_unref' returning: #void
	args: #( #self )>! !

!GDBusInterfaceInfo methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_dbus_interface_info_unref' returning: #void
	args: #( #self )>! !

!GDBusMethodInfo methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_dbus_method_info_unref' returning: #void
	args: #( #self )>! !

!GDBusSignalInfo methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_dbus_signal_info_unref' returning: #void
	args: #( #self )>! !

!GDBusPropertyInfo methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_dbus_property_info_unref' returning: #void
	args: #( #self )>! !

!GDBusArgInfo methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_dbus_arg_info_unref' returning: #void
	args: #( #self )>! !

!GDBusAnnotationInfo methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_dbus_annotation_info_unref' returning: #void
	args: #( #self )>! !

!GDBusNodeInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_node_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusNodeInfo!

!GDBusInterfaceInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_interface_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusInterfaceInfo!

!GDBusMethodInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_method_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusMethodInfo!

!GDBusSignalInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_signal_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusSignalInfo!

!GDBusPropertyInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_property_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusPropertyInfo!

!GDBusArgInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_arg_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusArgInfo!

!GDBusAnnotationInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_annotation_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusAnnotationInfo!

!GDBusMessage class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_message_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusMessage!

!GDBusMessage class methodsFor: 'C call-outs'!
new
    <cCall: 'g_dbus_message_new' returning: #{GDBusMessage}
	args: #( )>! !

!GDBusMessage class methodsFor: 'C call-outs'!
newSignal: path interface: interface signal: signal
    <cCall: 'g_dbus_message_new_signal' returning: #{GDBusMessage}
	args: #( #string #string #string )>! !

!GDBusMessage class methodsFor: 'C call-outs'!
newMethodCall: name path: path interface: interface method: method
    <cCall: 'g_dbus_message_new_method_call' returning: #{GDBusMessage}
	args: #( #string #string #string #string )>! !

!GDBusMessage methodsFor: 'C call-outs'!
newMethodReply
    <cCall: 'g_dbus_message_new_method_reply' returning: #{GDBusMessage}
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
newMethodError: errorName errorMessageFormat: errorMessageFormat varargs: varargs
    <cCall: 'g_dbus_message_new_method_error' returning: #{GDBusMessage}
	args: #( #self #string #string #variadic )>! !

!GDBusMessage methodsFor: 'C call-outs'!
newMethodErrorLiteral: errorName errorMessage: errorMessage
    <cCall: 'g_dbus_message_new_method_error_literal' returning: #{GDBusMessage}
	args: #( #self #string #string )>! !

!GDBusMessage methodsFor: 'C call-outs'!
print: indent
    <cCall: 'g_dbus_message_print' returning: #string
	args: #( #self #int )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getLocked
    <cCall: 'g_dbus_message_get_locked' returning: #boolean
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
lock
    <cCall: 'g_dbus_message_lock' returning: #void
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
copy: error
    <cCall: 'g_dbus_message_copy' returning: #{GDBusMessage}
	args: #( #self #cObject )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getByteOrder
    <cCall: 'g_dbus_message_get_byte_order' returning: #int
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setByteOrder: byteOrder
    <cCall: 'g_dbus_message_set_byte_order' returning: #void
	args: #( #self #int )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getMessageType
    <cCall: 'g_dbus_message_get_message_type' returning: #int
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setMessageType: type
    <cCall: 'g_dbus_message_set_message_type' returning: #void
	args: #( #self #int )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getFlags
    <cCall: 'g_dbus_message_get_flags' returning: #int
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setFlags: flags
    <cCall: 'g_dbus_message_set_flags' returning: #void
	args: #( #self #int )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getSerial
    <cCall: 'g_dbus_message_get_serial' returning: #int
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setSerial: serial
    <cCall: 'g_dbus_message_set_serial' returning: #void
	args: #( #self #int )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getHeader: headerField
    <cCall: 'g_dbus_message_get_header' returning: #{GVariant}
	args: #( #self #int )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setHeader: headerField value: value
    <cCall: 'g_dbus_message_set_header' returning: #void
	args: #( #self #int #cObject )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getHeaderFields
    <cCall: 'g_dbus_message_get_header_fields' returning: CInt type
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getBody
    <cCall: 'g_dbus_message_get_body' returning: #{GVariant}
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setBody: body
    <cCall: 'g_dbus_message_set_body' returning: #void
	args: #( #self #cObject )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getUnixFdList
    <cCall: 'g_dbus_message_get_unix_fd_list' returning: #{GUnixFDList}
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setUnixFdList: fdList
    <cCall: 'g_dbus_message_set_unix_fd_list' returning: #void
	args: #( #self #cObject )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getReplySerial
    <cCall: 'g_dbus_message_get_reply_serial' returning: #int
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setReplySerial: value
    <cCall: 'g_dbus_message_set_reply_serial' returning: #void
	args: #( #self #int )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setInterface: value
    <cCall: 'g_dbus_message_set_interface' returning: #void
	args: #( #self #string )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setMember: value
    <cCall: 'g_dbus_message_set_member' returning: #void
	args: #( #self #string )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setPath: value
    <cCall: 'g_dbus_message_set_path' returning: #void
	args: #( #self #string )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setSender: value
    <cCall: 'g_dbus_message_set_sender' returning: #void
	args: #( #self #string )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setDestination: value
    <cCall: 'g_dbus_message_set_destination' returning: #void
	args: #( #self #string )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setErrorName: value
    <cCall: 'g_dbus_message_set_error_name' returning: #void
	args: #( #self #string )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setSignature: value
    <cCall: 'g_dbus_message_set_signature' returning: #void
	args: #( #self #string )>! !

!GDBusMessage methodsFor: 'C call-outs'!
getNumUnixFds
    <cCall: 'g_dbus_message_get_num_unix_fds' returning: #int
	args: #( #self )>! !

!GDBusMessage methodsFor: 'C call-outs'!
setNumUnixFds: value
    <cCall: 'g_dbus_message_set_num_unix_fds' returning: #void
	args: #( #self #int )>! !

!GDBusMessage class methodsFor: 'C call-outs'!
newFromBlob: blob blobLen: blobLen capabilities: capabilities error: error
    <cCall: 'g_dbus_message_new_from_blob' returning: #{GDBusMessage}
	args: #( #cObject #int #int #cObject )>! !

!GDBusMessage class methodsFor: 'C call-outs'!
bytesNeeded: blob blobLen: blobLen error: error
    <cCall: 'g_dbus_message_bytes_needed' returning: #int
	args: #( #cObject #int #cObject )>! !

!GDBusMessage methodsFor: 'C call-outs'!
toBlob: outSize capabilities: capabilities error: error
    <cCall: 'g_dbus_message_to_blob' returning: CInt type
	args: #( #self #cObject #int #cObject )>! !

!GDBusMessage methodsFor: 'C call-outs'!
toGerror: error
    <cCall: 'g_dbus_message_to_gerror' returning: #boolean
	args: #( #self #cObject )>! !

!GDBusMethodInvocation class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_method_invocation_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusMethodInvocation!

!GDBusMethodInvocation methodsFor: 'C call-outs'!
getConnection
    <cCall: 'g_dbus_method_invocation_get_connection' returning: #{GDBusConnection}
	args: #( #self )>! !

!GDBusMethodInvocation methodsFor: 'C call-outs'!
getMessage
    <cCall: 'g_dbus_method_invocation_get_message' returning: #{GDBusMessage}
	args: #( #self )>! !

!GDBusMethodInvocation methodsFor: 'C call-outs'!
getParameters
    <cCall: 'g_dbus_method_invocation_get_parameters' returning: #{GVariant}
	args: #( #self )>! !

!GDBusMethodInvocation methodsFor: 'C call-outs'!
getUserData
    <cCall: 'g_dbus_method_invocation_get_user_data' returning: #cObject
	args: #( #self )>! !

!GDBusMethodInvocation methodsFor: 'C call-outs'!
returnValue: parameters
    <cCall: 'g_dbus_method_invocation_return_value' returning: #void
	args: #( #self #cObject )>! !

!GDBusMethodInvocation methodsFor: 'C call-outs'!
returnValueWithUnixFdList: parameters fdList: fdList
    <cCall: 'g_dbus_method_invocation_return_value_with_unix_fd_list' returning: #void
	args: #( #self #cObject #cObject )>! !

!GDBusMethodInvocation methodsFor: 'C call-outs'!
returnError: domain code: code format: format varargs: varargs
    <cCall: 'g_dbus_method_invocation_return_error' returning: #void
	args: #( #self #int #int #string #variadic )>! !

!GDBusMethodInvocation methodsFor: 'C call-outs'!
returnErrorLiteral: domain code: code message: message
    <cCall: 'g_dbus_method_invocation_return_error_literal' returning: #void
	args: #( #self #int #int #string )>! !

!GDBusMethodInvocation methodsFor: 'C call-outs'!
returnGerror: error
    <cCall: 'g_dbus_method_invocation_return_gerror' returning: #void
	args: #( #self #cObject )>! !

!GDBusMethodInvocation methodsFor: 'C call-outs'!
takeError: error
    <cCall: 'g_dbus_method_invocation_take_error' returning: #void
	args: #( #self #cObject )>! !

!GDBusMethodInvocation methodsFor: 'C call-outs'!
returnDbusError: errorName errorMessage: errorMessage
    <cCall: 'g_dbus_method_invocation_return_dbus_error' returning: #void
	args: #( #self #string #string )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
ownName: busType name: name flags: flags busAcquiredHandler: busAcquiredHandler nameAcquiredHandler: nameAcquiredHandler nameLostHandler: nameLostHandler userData: userData userDataFreeFunc: userDataFreeFunc
    <cCall: 'g_bus_own_name' returning: #int
	args: #( #int #string #int #int #int #int #cObject #int )>! !

!GDBusConnection methodsFor: 'C call-outs'!
ownNameOnConnection: name flags: flags nameAcquiredHandler: nameAcquiredHandler nameLostHandler: nameLostHandler userData: userData userDataFreeFunc: userDataFreeFunc
    <cCall: 'g_bus_own_name_on_connection' returning: #int
	args: #( #self #string #int #int #int #cObject #int )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
unownName: ownerId
    <cCall: 'g_bus_unown_name' returning: #void
	args: #( #int )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
watchName: busType name: name flags: flags nameAppearedHandler: nameAppearedHandler nameVanishedHandler: nameVanishedHandler userData: userData userDataFreeFunc: userDataFreeFunc
    <cCall: 'g_bus_watch_name' returning: #int
	args: #( #int #string #int #int #int #cObject #int )>! !

!GDBusConnection methodsFor: 'C call-outs'!
watchNameOnConnection: name flags: flags nameAppearedHandler: nameAppearedHandler nameVanishedHandler: nameVanishedHandler userData: userData userDataFreeFunc: userDataFreeFunc
    <cCall: 'g_bus_watch_name_on_connection' returning: #int
	args: #( #self #string #int #int #int #cObject #int )>! !

!GDBusConnection class methodsFor: 'C call-outs'!
unwatchName: watcherId
    <cCall: 'g_bus_unwatch_name' returning: #void
	args: #( #int )>! !

!GDBusProxy class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_proxy_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusProxy!

!GDBusProxy class methodsFor: 'C call-outs'!
new: connection flags: flags info: info name: name objectPath: objectPath interfaceName: interfaceName cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_proxy_new' returning: #{GDBusProxy}
	args: #( #cObject #int #cObject #string #string #string #cObject #int #cObject )>! !

!GDBusProxy class methodsFor: 'C call-outs'!
newFinish: res error: error
    <cCall: 'g_dbus_proxy_new_finish' returning: #{GDBusProxy}
	args: #( #cObject #cObject )>! !

!GDBusProxy class methodsFor: 'C call-outs'!
newSync: connection flags: flags info: info name: name objectPath: objectPath interfaceName: interfaceName cancellable: cancellable error: error
    <cCall: 'g_dbus_proxy_new_sync' returning: #{GDBusProxy}
	args: #( #cObject #int #cObject #string #string #string #cObject #cObject )>! !

!GDBusProxy class methodsFor: 'C call-outs'!
newForBus: busType flags: flags info: info name: name objectPath: objectPath interfaceName: interfaceName cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_proxy_new_for_bus' returning: #{GDBusProxy}
	args: #( #int #int #cObject #string #string #string #cObject #int #cObject )>! !

!GDBusProxy class methodsFor: 'C call-outs'!
newForBusFinish: res error: error
    <cCall: 'g_dbus_proxy_new_for_bus_finish' returning: #{GDBusProxy}
	args: #( #cObject #cObject )>! !

!GDBusProxy class methodsFor: 'C call-outs'!
newForBusSync: busType flags: flags info: info name: name objectPath: objectPath interfaceName: interfaceName cancellable: cancellable error: error
    <cCall: 'g_dbus_proxy_new_for_bus_sync' returning: #{GDBusProxy}
	args: #( #int #int #cObject #string #string #string #cObject #cObject )>! !

!GDBusProxy methodsFor: 'C call-outs'!
getConnection
    <cCall: 'g_dbus_proxy_get_connection' returning: #{GDBusConnection}
	args: #( #self )>! !

!GDBusProxy methodsFor: 'C call-outs'!
getFlags
    <cCall: 'g_dbus_proxy_get_flags' returning: #int
	args: #( #self )>! !

!GDBusProxy methodsFor: 'C call-outs'!
getNameOwner
    <cCall: 'g_dbus_proxy_get_name_owner' returning: #string
	args: #( #self )>! !

!GDBusProxy methodsFor: 'C call-outs'!
getDefaultTimeout
    <cCall: 'g_dbus_proxy_get_default_timeout' returning: #int
	args: #( #self )>! !

!GDBusProxy methodsFor: 'C call-outs'!
setDefaultTimeout: timeoutMsec
    <cCall: 'g_dbus_proxy_set_default_timeout' returning: #void
	args: #( #self #int )>! !

!GDBusProxy methodsFor: 'C call-outs'!
getInterfaceInfo
    <cCall: 'g_dbus_proxy_get_interface_info' returning: #{GDBusInterfaceInfo}
	args: #( #self )>! !

!GDBusProxy methodsFor: 'C call-outs'!
setInterfaceInfo: info
    <cCall: 'g_dbus_proxy_set_interface_info' returning: #void
	args: #( #self #cObject )>! !

!GDBusProxy methodsFor: 'C call-outs'!
getCachedProperty: propertyName
    <cCall: 'g_dbus_proxy_get_cached_property' returning: #{GVariant}
	args: #( #self #string )>! !

!GDBusProxy methodsFor: 'C call-outs'!
setCachedProperty: propertyName value: value
    <cCall: 'g_dbus_proxy_set_cached_property' returning: #void
	args: #( #self #string #cObject )>! !

!GDBusProxy methodsFor: 'C call-outs'!
getCachedPropertyNames
    <cCall: 'g_dbus_proxy_get_cached_property_names' returning: #string
	args: #( #self )>! !

!GDBusProxy methodsFor: 'C call-outs'!
call: methodName parameters: parameters flags: flags timeoutMsec: timeoutMsec cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_proxy_call' returning: #void
	args: #( #self #string #cObject #int #int #cObject #int #cObject )>! !

!GDBusProxy methodsFor: 'C call-outs'!
callFinish: res error: error
    <cCall: 'g_dbus_proxy_call_finish' returning: #{GVariant}
	args: #( #self #cObject #cObject )>! !

!GDBusProxy methodsFor: 'C call-outs'!
callSync: methodName parameters: parameters flags: flags timeoutMsec: timeoutMsec cancellable: cancellable error: error
    <cCall: 'g_dbus_proxy_call_sync' returning: #{GVariant}
	args: #( #self #string #cObject #int #int #cObject #cObject )>! !

!GDBusProxy methodsFor: 'C call-outs'!
callWithUnixFdList: methodName parameters: parameters flags: flags timeoutMsec: timeoutMsec fdList: fdList cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_proxy_call_with_unix_fd_list' returning: #void
	args: #( #self #string #cObject #int #int #cObject #cObject #int #cObject )>! !

!GDBusProxy methodsFor: 'C call-outs'!
callWithUnixFdListFinish: outFdList res: res error: error
    <cCall: 'g_dbus_proxy_call_with_unix_fd_list_finish' returning: #{GVariant}
	args: #( #self #cObject #cObject #cObject )>! !

!GDBusProxy methodsFor: 'C call-outs'!
callWithUnixFdListSync: methodName parameters: parameters flags: flags timeoutMsec: timeoutMsec fdList: fdList outFdList: outFdList cancellable: cancellable error: error
    <cCall: 'g_dbus_proxy_call_with_unix_fd_list_sync' returning: #{GVariant}
	args: #( #self #string #cObject #int #int #cObject #cObject #cObject #cObject )>! !

!GDBusServer class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_server_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusServer!

!GDBusServer class methodsFor: 'C call-outs'!
newSync: address flags: flags guid: guid observer: observer cancellable: cancellable error: error
    <cCall: 'g_dbus_server_new_sync' returning: #{GDBusServer}
	args: #( #string #int #string #cObject #cObject #cObject )>! !

!GDBusServer methodsFor: 'C call-outs'!
getFlags
    <cCall: 'g_dbus_server_get_flags' returning: #int
	args: #( #self )>! !

!GDBusServer methodsFor: 'C call-outs'!
start
    <cCall: 'g_dbus_server_start' returning: #void
	args: #( #self )>! !

!GDBusServer methodsFor: 'C call-outs'!
stop
    <cCall: 'g_dbus_server_stop' returning: #void
	args: #( #self )>! !

!GDBusServer methodsFor: 'C call-outs'!
isActive
    <cCall: 'g_dbus_server_is_active' returning: #boolean
	args: #( #self )>! !

!GDbus class methodsFor: 'C call-outs'!
isGuid: string
    <cCall: 'g_dbus_is_guid' returning: #boolean
	args: #( #string )>! !

!GDbus class methodsFor: 'C call-outs'!
generateGuid
    <cCall: 'g_dbus_generate_guid' returning: #string
	args: #( )>! !

!GDbus class methodsFor: 'C call-outs'!
isName: string
    <cCall: 'g_dbus_is_name' returning: #boolean
	args: #( #string )>! !

!GDbus class methodsFor: 'C call-outs'!
isUniqueName: string
    <cCall: 'g_dbus_is_unique_name' returning: #boolean
	args: #( #string )>! !

!GDbus class methodsFor: 'C call-outs'!
isMemberName: string
    <cCall: 'g_dbus_is_member_name' returning: #boolean
	args: #( #string )>! !

!GDbus class methodsFor: 'C call-outs'!
isInterfaceName: string
    <cCall: 'g_dbus_is_interface_name' returning: #boolean
	args: #( #string )>! !

!GDrive class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_drive_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDrive!

!GDrive methodsFor: 'C call-outs'!
getName
    <cCall: 'g_drive_get_name' returning: #string
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
getIcon
    <cCall: 'g_drive_get_icon' returning: #{GIcon}
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
getSymbolicIcon
    <cCall: 'g_drive_get_symbolic_icon' returning: #{GIcon}
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
hasVolumes
    <cCall: 'g_drive_has_volumes' returning: #boolean
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
getVolumes
    <cCall: 'g_drive_get_volumes' returning: #{GList}
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
isMediaRemovable
    <cCall: 'g_drive_is_media_removable' returning: #boolean
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
hasMedia
    <cCall: 'g_drive_has_media' returning: #boolean
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
isMediaCheckAutomatic
    <cCall: 'g_drive_is_media_check_automatic' returning: #boolean
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
canPollForMedia
    <cCall: 'g_drive_can_poll_for_media' returning: #boolean
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
canEject
    <cCall: 'g_drive_can_eject' returning: #boolean
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
eject: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_drive_eject' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GDrive methodsFor: 'C call-outs'!
ejectFinish: result error: error
    <cCall: 'g_drive_eject_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GDrive methodsFor: 'C call-outs'!
pollForMedia: cancellable callback: callback userData: userData
    <cCall: 'g_drive_poll_for_media' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GDrive methodsFor: 'C call-outs'!
pollForMediaFinish: result error: error
    <cCall: 'g_drive_poll_for_media_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GDrive methodsFor: 'C call-outs'!
getIdentifier: kind
    <cCall: 'g_drive_get_identifier' returning: #string
	args: #( #self #string )>! !

!GDrive methodsFor: 'C call-outs'!
enumerateIdentifiers
    <cCall: 'g_drive_enumerate_identifiers' returning: #string
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
getStartStopType
    <cCall: 'g_drive_get_start_stop_type' returning: #int
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
canStart
    <cCall: 'g_drive_can_start' returning: #boolean
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
canStartDegraded
    <cCall: 'g_drive_can_start_degraded' returning: #boolean
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
start: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_drive_start' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GDrive methodsFor: 'C call-outs'!
startFinish: result error: error
    <cCall: 'g_drive_start_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GDrive methodsFor: 'C call-outs'!
canStop
    <cCall: 'g_drive_can_stop' returning: #boolean
	args: #( #self )>! !

!GDrive methodsFor: 'C call-outs'!
stop: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_drive_stop' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GDrive methodsFor: 'C call-outs'!
stopFinish: result error: error
    <cCall: 'g_drive_stop_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GDrive methodsFor: 'C call-outs'!
ejectWithOperation: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_drive_eject_with_operation' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GDrive methodsFor: 'C call-outs'!
ejectWithOperationFinish: result error: error
    <cCall: 'g_drive_eject_with_operation_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GIcon class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_icon_get_type' returning: #long
	args: #( )>! !

GLib registerType: GIcon!

!GIcon class methodsFor: 'C call-outs'!
hash: icon
    <cCall: 'g_icon_hash' returning: #int
	args: #( #cObject )>! !

!GIcon methodsFor: 'C call-outs'!
equal: icon2
    <cCall: 'g_icon_equal' returning: #boolean
	args: #( #self #cObject )>! !

!GIcon methodsFor: 'C call-outs'!
toString
    <cCall: 'g_icon_to_string' returning: #string
	args: #( #self )>! !

!GIcon class methodsFor: 'C call-outs'!
newForString: str error: error
    <cCall: 'g_icon_new_for_string' returning: #{GIcon}
	args: #( #string #cObject )>! !

!GIcon methodsFor: 'C call-outs'!
serialize
    <cCall: 'g_icon_serialize' returning: #{GVariant}
	args: #( #self )>! !

!GIcon class methodsFor: 'C call-outs'!
deserialize: value
    <cCall: 'g_icon_deserialize' returning: #{GIcon}
	args: #( #cObject )>! !

!GEmblem class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_emblem_get_type' returning: #long
	args: #( )>! !

GLib registerType: GEmblem!

!GEmblem class methodsFor: 'C call-outs'!
new: icon
    <cCall: 'g_emblem_new' returning: #{GEmblem}
	args: #( #cObject )>! !

!GEmblem class methodsFor: 'C call-outs'!
newWithOrigin: icon origin: origin
    <cCall: 'g_emblem_new_with_origin' returning: #{GEmblem}
	args: #( #cObject #int )>! !

!GEmblem methodsFor: 'C call-outs'!
getIcon
    <cCall: 'g_emblem_get_icon' returning: #{GIcon}
	args: #( #self )>! !

!GEmblem methodsFor: 'C call-outs'!
getOrigin
    <cCall: 'g_emblem_get_origin' returning: #int
	args: #( #self )>! !

!GEmblemedIcon class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_emblemed_icon_get_type' returning: #long
	args: #( )>! !

GLib registerType: GEmblemedIcon!

!GEmblemedIcon class methodsFor: 'C call-outs'!
new: icon emblem: emblem
    <cCall: 'g_emblemed_icon_new' returning: #{GEmblemedIcon}
	args: #( #cObject #cObject )>! !

!GEmblemedIcon methodsFor: 'C call-outs'!
getIcon
    <cCall: 'g_emblemed_icon_get_icon' returning: #{GIcon}
	args: #( #self )>! !

!GEmblemedIcon methodsFor: 'C call-outs'!
getEmblems
    <cCall: 'g_emblemed_icon_get_emblems' returning: #{GList}
	args: #( #self )>! !

!GEmblemedIcon methodsFor: 'C call-outs'!
addEmblem: emblem
    <cCall: 'g_emblemed_icon_add_emblem' returning: #void
	args: #( #self #cObject )>! !

!GEmblemedIcon methodsFor: 'C call-outs'!
clearEmblems
    <cCall: 'g_emblemed_icon_clear_emblems' returning: #void
	args: #( #self )>! !

!GFileAttributeInfoList class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_file_attribute_info_list_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFileAttributeInfoList!

!GFileAttributeInfoList class methodsFor: 'C call-outs'!
new
    <cCall: 'g_file_attribute_info_list_new' returning: #{GFileAttributeInfoList}
	args: #( )>! !

!GFileAttributeInfoList methodsFor: 'C call-outs'!
ref
    <cCall: 'g_file_attribute_info_list_ref' returning: #{GFileAttributeInfoList}
	args: #( #self )>! !

!GFileAttributeInfoList methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_file_attribute_info_list_unref' returning: #void
	args: #( #self )>! !

!GFileAttributeInfoList methodsFor: 'C call-outs'!
dup
    <cCall: 'g_file_attribute_info_list_dup' returning: #{GFileAttributeInfoList}
	args: #( #self )>! !

!GFileAttributeInfoList methodsFor: 'C call-outs'!
add: name type: type flags: flags
    <cCall: 'g_file_attribute_info_list_add' returning: #void
	args: #( #self #string #int #int )>! !

!GFileEnumerator class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_file_enumerator_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFileEnumerator!

!GFileEnumerator methodsFor: 'C call-outs'!
nextFile: cancellable error: error
    <cCall: 'g_file_enumerator_next_file' returning: #{GFileInfo}
	args: #( #self #cObject #cObject )>! !

!GFileEnumerator methodsFor: 'C call-outs'!
close: cancellable error: error
    <cCall: 'g_file_enumerator_close' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFileEnumerator methodsFor: 'C call-outs'!
nextFilesAsync: numFiles ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_enumerator_next_files_async' returning: #void
	args: #( #self #int #int #cObject #int #cObject )>! !

!GFileEnumerator methodsFor: 'C call-outs'!
nextFilesFinish: result error: error
    <cCall: 'g_file_enumerator_next_files_finish' returning: #{GList}
	args: #( #self #cObject #cObject )>! !

!GFileEnumerator methodsFor: 'C call-outs'!
closeAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_enumerator_close_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GFileEnumerator methodsFor: 'C call-outs'!
closeFinish: result error: error
    <cCall: 'g_file_enumerator_close_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFileEnumerator methodsFor: 'C call-outs'!
isClosed
    <cCall: 'g_file_enumerator_is_closed' returning: #boolean
	args: #( #self )>! !

!GFileEnumerator methodsFor: 'C call-outs'!
hasPending
    <cCall: 'g_file_enumerator_has_pending' returning: #boolean
	args: #( #self )>! !

!GFileEnumerator methodsFor: 'C call-outs'!
setPending: pending
    <cCall: 'g_file_enumerator_set_pending' returning: #void
	args: #( #self #boolean )>! !

!GFileEnumerator methodsFor: 'C call-outs'!
getContainer
    <cCall: 'g_file_enumerator_get_container' returning: #{GFile}
	args: #( #self )>! !

!GFileEnumerator methodsFor: 'C call-outs'!
getChild: info
    <cCall: 'g_file_enumerator_get_child' returning: #{GFile}
	args: #( #self #cObject )>! !

!GFile class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_file_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFile!

!GFile class methodsFor: 'C call-outs'!
newForPath: path
    <cCall: 'g_file_new_for_path' returning: #{GFile}
	args: #( #string )>! !

!GFile class methodsFor: 'C call-outs'!
newForUri: uri
    <cCall: 'g_file_new_for_uri' returning: #{GFile}
	args: #( #string )>! !

!GFile class methodsFor: 'C call-outs'!
newForCommandlineArg: arg
    <cCall: 'g_file_new_for_commandline_arg' returning: #{GFile}
	args: #( #string )>! !

!GFile class methodsFor: 'C call-outs'!
newForCommandlineArgAndCwd: arg cwd: cwd
    <cCall: 'g_file_new_for_commandline_arg_and_cwd' returning: #{GFile}
	args: #( #string #string )>! !

!GFile class methodsFor: 'C call-outs'!
newTmp: tmpl iostream: iostream error: error
    <cCall: 'g_file_new_tmp' returning: #{GFile}
	args: #( #string #cObject #cObject )>! !

!GFile class methodsFor: 'C call-outs'!
parseName: parseName
    <cCall: 'g_file_parse_name' returning: #{GFile}
	args: #( #string )>! !

!GFile methodsFor: 'C call-outs'!
dup
    <cCall: 'g_file_dup' returning: #{GFile}
	args: #( #self )>! !

!GFile class methodsFor: 'C call-outs'!
hash: file
    <cCall: 'g_file_hash' returning: #int
	args: #( #cObject )>! !

!GFile methodsFor: 'C call-outs'!
equal: file2
    <cCall: 'g_file_equal' returning: #boolean
	args: #( #self #cObject )>! !

!GFile methodsFor: 'C call-outs'!
getBasename
    <cCall: 'g_file_get_basename' returning: #string
	args: #( #self )>! !

!GFile methodsFor: 'C call-outs'!
getPath
    <cCall: 'g_file_get_path' returning: #string
	args: #( #self )>! !

!GFile methodsFor: 'C call-outs'!
getUri
    <cCall: 'g_file_get_uri' returning: #string
	args: #( #self )>! !

!GFile methodsFor: 'C call-outs'!
getParseName
    <cCall: 'g_file_get_parse_name' returning: #string
	args: #( #self )>! !

!GFile methodsFor: 'C call-outs'!
getParent
    <cCall: 'g_file_get_parent' returning: #{GFile}
	args: #( #self )>! !

!GFile methodsFor: 'C call-outs'!
hasParent: parent
    <cCall: 'g_file_has_parent' returning: #boolean
	args: #( #self #cObject )>! !

!GFile methodsFor: 'C call-outs'!
getChild: name
    <cCall: 'g_file_get_child' returning: #{GFile}
	args: #( #self #string )>! !

!GFile methodsFor: 'C call-outs'!
getChildForDisplayName: displayName error: error
    <cCall: 'g_file_get_child_for_display_name' returning: #{GFile}
	args: #( #self #string #cObject )>! !

!GFile methodsFor: 'C call-outs'!
hasPrefix: prefix
    <cCall: 'g_file_has_prefix' returning: #boolean
	args: #( #self #cObject )>! !

!GFile methodsFor: 'C call-outs'!
getRelativePath: descendant
    <cCall: 'g_file_get_relative_path' returning: #string
	args: #( #self #cObject )>! !

!GFile methodsFor: 'C call-outs'!
resolveRelativePath: relativePath
    <cCall: 'g_file_resolve_relative_path' returning: #{GFile}
	args: #( #self #string )>! !

!GFile methodsFor: 'C call-outs'!
isNative
    <cCall: 'g_file_is_native' returning: #boolean
	args: #( #self )>! !

!GFile methodsFor: 'C call-outs'!
hasUriScheme: uriScheme
    <cCall: 'g_file_has_uri_scheme' returning: #boolean
	args: #( #self #string )>! !

!GFile methodsFor: 'C call-outs'!
getUriScheme
    <cCall: 'g_file_get_uri_scheme' returning: #string
	args: #( #self )>! !

!GFile methodsFor: 'C call-outs'!
read: cancellable error: error
    <cCall: 'g_file_read' returning: #{GFileInputStream}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
readAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_read_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
readFinish: res error: error
    <cCall: 'g_file_read_finish' returning: #{GFileInputStream}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
appendTo: flags cancellable: cancellable error: error
    <cCall: 'g_file_append_to' returning: #{GFileOutputStream}
	args: #( #self #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
create: flags cancellable: cancellable error: error
    <cCall: 'g_file_create' returning: #{GFileOutputStream}
	args: #( #self #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
replace: etag makeBackup: makeBackup flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_replace' returning: #{GFileOutputStream}
	args: #( #self #string #boolean #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
appendToAsync: flags ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_append_to_async' returning: #void
	args: #( #self #int #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
appendToFinish: res error: error
    <cCall: 'g_file_append_to_finish' returning: #{GFileOutputStream}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
createAsync: flags ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_create_async' returning: #void
	args: #( #self #int #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
createFinish: res error: error
    <cCall: 'g_file_create_finish' returning: #{GFileOutputStream}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
replaceAsync: etag makeBackup: makeBackup flags: flags ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_replace_async' returning: #void
	args: #( #self #string #boolean #int #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
replaceFinish: res error: error
    <cCall: 'g_file_replace_finish' returning: #{GFileOutputStream}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
openReadwrite: cancellable error: error
    <cCall: 'g_file_open_readwrite' returning: #{GFileIOStream}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
openReadwriteAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_open_readwrite_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
openReadwriteFinish: res error: error
    <cCall: 'g_file_open_readwrite_finish' returning: #{GFileIOStream}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
createReadwrite: flags cancellable: cancellable error: error
    <cCall: 'g_file_create_readwrite' returning: #{GFileIOStream}
	args: #( #self #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
createReadwriteAsync: flags ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_create_readwrite_async' returning: #void
	args: #( #self #int #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
createReadwriteFinish: res error: error
    <cCall: 'g_file_create_readwrite_finish' returning: #{GFileIOStream}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
replaceReadwrite: etag makeBackup: makeBackup flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_replace_readwrite' returning: #{GFileIOStream}
	args: #( #self #string #boolean #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
replaceReadwriteAsync: etag makeBackup: makeBackup flags: flags ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_replace_readwrite_async' returning: #void
	args: #( #self #string #boolean #int #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
replaceReadwriteFinish: res error: error
    <cCall: 'g_file_replace_readwrite_finish' returning: #{GFileIOStream}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
queryExists: cancellable
    <cCall: 'g_file_query_exists' returning: #boolean
	args: #( #self #cObject )>! !

!GFile methodsFor: 'C call-outs'!
queryFileType: flags cancellable: cancellable
    <cCall: 'g_file_query_file_type' returning: #int
	args: #( #self #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
queryInfo: attributes flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_query_info' returning: #{GFileInfo}
	args: #( #self #string #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
queryInfoAsync: attributes flags: flags ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_query_info_async' returning: #void
	args: #( #self #string #int #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
queryInfoFinish: res error: error
    <cCall: 'g_file_query_info_finish' returning: #{GFileInfo}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
queryFilesystemInfo: attributes cancellable: cancellable error: error
    <cCall: 'g_file_query_filesystem_info' returning: #{GFileInfo}
	args: #( #self #string #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
queryFilesystemInfoAsync: attributes ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_query_filesystem_info_async' returning: #void
	args: #( #self #string #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
queryFilesystemInfoFinish: res error: error
    <cCall: 'g_file_query_filesystem_info_finish' returning: #{GFileInfo}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
findEnclosingMount: cancellable error: error
    <cCall: 'g_file_find_enclosing_mount' returning: #{GMount}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
findEnclosingMountAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_find_enclosing_mount_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
findEnclosingMountFinish: res error: error
    <cCall: 'g_file_find_enclosing_mount_finish' returning: #{GMount}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
enumerateChildren: attributes flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_enumerate_children' returning: #{GFileEnumerator}
	args: #( #self #string #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
enumerateChildrenAsync: attributes flags: flags ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_enumerate_children_async' returning: #void
	args: #( #self #string #int #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
enumerateChildrenFinish: res error: error
    <cCall: 'g_file_enumerate_children_finish' returning: #{GFileEnumerator}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setDisplayName: displayName cancellable: cancellable error: error
    <cCall: 'g_file_set_display_name' returning: #{GFile}
	args: #( #self #string #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setDisplayNameAsync: displayName ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_set_display_name_async' returning: #void
	args: #( #self #string #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setDisplayNameFinish: res error: error
    <cCall: 'g_file_set_display_name_finish' returning: #{GFile}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
delete: cancellable error: error
    <cCall: 'g_file_delete' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
deleteAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_delete_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
deleteFinish: result error: error
    <cCall: 'g_file_delete_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
trash: cancellable error: error
    <cCall: 'g_file_trash' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
trashAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_trash_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
trashFinish: result error: error
    <cCall: 'g_file_trash_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
copy: destination flags: flags cancellable: cancellable progressCallback: progressCallback progressCallbackData: progressCallbackData error: error
    <cCall: 'g_file_copy' returning: #boolean
	args: #( #self #cObject #int #cObject #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
copyAsync: destination flags: flags ioPriority: ioPriority cancellable: cancellable progressCallback: progressCallback progressCallbackData: progressCallbackData callback: callback userData: userData
    <cCall: 'g_file_copy_async' returning: #void
	args: #( #self #cObject #int #int #cObject #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
copyFinish: res error: error
    <cCall: 'g_file_copy_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
move: destination flags: flags cancellable: cancellable progressCallback: progressCallback progressCallbackData: progressCallbackData error: error
    <cCall: 'g_file_move' returning: #boolean
	args: #( #self #cObject #int #cObject #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
makeDirectory: cancellable error: error
    <cCall: 'g_file_make_directory' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
makeDirectoryAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_make_directory_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
makeDirectoryFinish: result error: error
    <cCall: 'g_file_make_directory_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
makeDirectoryWithParents: cancellable error: error
    <cCall: 'g_file_make_directory_with_parents' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
makeSymbolicLink: symlinkValue cancellable: cancellable error: error
    <cCall: 'g_file_make_symbolic_link' returning: #boolean
	args: #( #self #string #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
querySettableAttributes: cancellable error: error
    <cCall: 'g_file_query_settable_attributes' returning: #{GFileAttributeInfoList}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
queryWritableNamespaces: cancellable error: error
    <cCall: 'g_file_query_writable_namespaces' returning: #{GFileAttributeInfoList}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setAttribute: attribute type: type valueP: valueP flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_set_attribute' returning: #boolean
	args: #( #self #string #int #cObject #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setAttributesFromInfo: info flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_set_attributes_from_info' returning: #boolean
	args: #( #self #cObject #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setAttributesAsync: info flags: flags ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_set_attributes_async' returning: #void
	args: #( #self #cObject #int #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setAttributesFinish: result info: info error: error
    <cCall: 'g_file_set_attributes_finish' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setAttributeString: attribute value: value flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_set_attribute_string' returning: #boolean
	args: #( #self #string #string #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setAttributeByteString: attribute value: value flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_set_attribute_byte_string' returning: #boolean
	args: #( #self #string #string #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setAttributeUint32: attribute value: value flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_set_attribute_uint32' returning: #boolean
	args: #( #self #string #int #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setAttributeInt32: attribute value: value flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_set_attribute_int32' returning: #boolean
	args: #( #self #string #int #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setAttributeUint64: attribute value: value flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_set_attribute_uint64' returning: #boolean
	args: #( #self #string #int #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
setAttributeInt64: attribute value: value flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_set_attribute_int64' returning: #boolean
	args: #( #self #string #int #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
mountEnclosingVolume: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_mount_enclosing_volume' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
mountEnclosingVolumeFinish: result error: error
    <cCall: 'g_file_mount_enclosing_volume_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
mountMountable: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_mount_mountable' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
mountMountableFinish: result error: error
    <cCall: 'g_file_mount_mountable_finish' returning: #{GFile}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
unmountMountable: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_unmount_mountable' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
unmountMountableFinish: result error: error
    <cCall: 'g_file_unmount_mountable_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
unmountMountableWithOperation: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_unmount_mountable_with_operation' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
unmountMountableWithOperationFinish: result error: error
    <cCall: 'g_file_unmount_mountable_with_operation_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
ejectMountable: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_eject_mountable' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
ejectMountableFinish: result error: error
    <cCall: 'g_file_eject_mountable_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
ejectMountableWithOperation: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_eject_mountable_with_operation' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
ejectMountableWithOperationFinish: result error: error
    <cCall: 'g_file_eject_mountable_with_operation_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
copyAttributes: destination flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_copy_attributes' returning: #boolean
	args: #( #self #cObject #int #cObject #cObject )>! !

!GFileMonitor class methodsFor: 'C call-outs'!
directory: file flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_monitor_directory' returning: #{GFileMonitor}
	args: #( #cObject #int #cObject #cObject )>! !

!GFileMonitor class methodsFor: 'C call-outs'!
file: file flags: flags cancellable: cancellable error: error
    <cCall: 'g_file_monitor_file' returning: #{GFileMonitor}
	args: #( #cObject #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
monitor: flags cancellable: cancellable error: error
    <cCall: 'g_file_monitor' returning: #{GFileMonitor}
	args: #( #self #int #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
measureDiskUsage: flags cancellable: cancellable progressCallback: progressCallback progressData: progressData diskUsage: diskUsage numDirs: numDirs numFiles: numFiles error: error
    <cCall: 'g_file_measure_disk_usage' returning: #boolean
	args: #( #self #int #cObject #int #cObject #cObject #cObject #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
measureDiskUsageAsync: flags ioPriority: ioPriority cancellable: cancellable progressCallback: progressCallback progressData: progressData callback: callback userData: userData
    <cCall: 'g_file_measure_disk_usage_async' returning: #void
	args: #( #self #int #int #cObject #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
measureDiskUsageFinish: result diskUsage: diskUsage numDirs: numDirs numFiles: numFiles error: error
    <cCall: 'g_file_measure_disk_usage_finish' returning: #boolean
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
startMountable: flags startOperation: startOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_start_mountable' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
startMountableFinish: result error: error
    <cCall: 'g_file_start_mountable_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
stopMountable: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_stop_mountable' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
stopMountableFinish: result error: error
    <cCall: 'g_file_stop_mountable_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
pollMountable: cancellable callback: callback userData: userData
    <cCall: 'g_file_poll_mountable' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
pollMountableFinish: result error: error
    <cCall: 'g_file_poll_mountable_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
queryDefaultHandler: cancellable error: error
    <cCall: 'g_file_query_default_handler' returning: #{GAppInfo}
	args: #( #self #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
loadContents: cancellable contents: contents length: length etagOut: etagOut error: error
    <cCall: 'g_file_load_contents' returning: #boolean
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
loadContentsAsync: cancellable callback: callback userData: userData
    <cCall: 'g_file_load_contents_async' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
loadContentsFinish: res contents: contents length: length etagOut: etagOut error: error
    <cCall: 'g_file_load_contents_finish' returning: #boolean
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
loadPartialContentsAsync: cancellable readMoreCallback: readMoreCallback callback: callback userData: userData
    <cCall: 'g_file_load_partial_contents_async' returning: #void
	args: #( #self #cObject #int #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
loadPartialContentsFinish: res contents: contents length: length etagOut: etagOut error: error
    <cCall: 'g_file_load_partial_contents_finish' returning: #boolean
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
replaceContents: contents length: length etag: etag makeBackup: makeBackup flags: flags newEtag: newEtag cancellable: cancellable error: error
    <cCall: 'g_file_replace_contents' returning: #boolean
	args: #( #self #string #int #string #boolean #int #cObject #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
replaceContentsAsync: contents length: length etag: etag makeBackup: makeBackup flags: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_replace_contents_async' returning: #void
	args: #( #self #string #int #string #boolean #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
replaceContentsBytesAsync: contents etag: etag makeBackup: makeBackup flags: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_replace_contents_bytes_async' returning: #void
	args: #( #self #cObject #string #boolean #int #cObject #int #cObject )>! !

!GFile methodsFor: 'C call-outs'!
replaceContentsFinish: res newEtag: newEtag error: error
    <cCall: 'g_file_replace_contents_finish' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GFile methodsFor: 'C call-outs'!
supportsThreadContexts
    <cCall: 'g_file_supports_thread_contexts' returning: #boolean
	args: #( #self )>! !

!GFileIcon class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_file_icon_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFileIcon!

!GFileIcon class methodsFor: 'C call-outs'!
new: file
    <cCall: 'g_file_icon_new' returning: #{GFileIcon}
	args: #( #cObject )>! !

!GFileIcon methodsFor: 'C call-outs'!
getFile
    <cCall: 'g_file_icon_get_file' returning: #{GFile}
	args: #( #self )>! !

!GFileInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_file_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFileInfo!

!GFileInfo class methodsFor: 'C call-outs'!
new
    <cCall: 'g_file_info_new' returning: #{GFileInfo}
	args: #( )>! !

!GFileInfo methodsFor: 'C call-outs'!
dup
    <cCall: 'g_file_info_dup' returning: #{GFileInfo}
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
copyInto: destInfo
    <cCall: 'g_file_info_copy_into' returning: #void
	args: #( #self #cObject )>! !

!GFileInfo methodsFor: 'C call-outs'!
hasAttribute: attribute
    <cCall: 'g_file_info_has_attribute' returning: #boolean
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
hasNamespace: nameSpace
    <cCall: 'g_file_info_has_namespace' returning: #boolean
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
listAttributes: nameSpace
    <cCall: 'g_file_info_list_attributes' returning: #string
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeData: attribute type: type valuePp: valuePp status: status
    <cCall: 'g_file_info_get_attribute_data' returning: #boolean
	args: #( #self #string #cObject #cObject #cObject )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeType: attribute
    <cCall: 'g_file_info_get_attribute_type' returning: #int
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
removeAttribute: attribute
    <cCall: 'g_file_info_remove_attribute' returning: #void
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeStatus: attribute
    <cCall: 'g_file_info_get_attribute_status' returning: #int
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeStatus: attribute status: status
    <cCall: 'g_file_info_set_attribute_status' returning: #boolean
	args: #( #self #string #int )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeAsString: attribute
    <cCall: 'g_file_info_get_attribute_as_string' returning: #string
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeBoolean: attribute
    <cCall: 'g_file_info_get_attribute_boolean' returning: #boolean
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeUint32: attribute
    <cCall: 'g_file_info_get_attribute_uint32' returning: #int
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeInt32: attribute
    <cCall: 'g_file_info_get_attribute_int32' returning: #int
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeUint64: attribute
    <cCall: 'g_file_info_get_attribute_uint64' returning: #int
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeInt64: attribute
    <cCall: 'g_file_info_get_attribute_int64' returning: #int
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeObject: attribute
    <cCall: 'g_file_info_get_attribute_object' returning: #{GObject}
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
getAttributeStringv: attribute
    <cCall: 'g_file_info_get_attribute_stringv' returning: #string
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttribute: attribute type: type valueP: valueP
    <cCall: 'g_file_info_set_attribute' returning: #void
	args: #( #self #string #int #cObject )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeString: attribute attrValue: attrValue
    <cCall: 'g_file_info_set_attribute_string' returning: #void
	args: #( #self #string #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeByteString: attribute attrValue: attrValue
    <cCall: 'g_file_info_set_attribute_byte_string' returning: #void
	args: #( #self #string #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeBoolean: attribute attrValue: attrValue
    <cCall: 'g_file_info_set_attribute_boolean' returning: #void
	args: #( #self #string #boolean )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeUint32: attribute attrValue: attrValue
    <cCall: 'g_file_info_set_attribute_uint32' returning: #void
	args: #( #self #string #int )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeInt32: attribute attrValue: attrValue
    <cCall: 'g_file_info_set_attribute_int32' returning: #void
	args: #( #self #string #int )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeUint64: attribute attrValue: attrValue
    <cCall: 'g_file_info_set_attribute_uint64' returning: #void
	args: #( #self #string #int )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeInt64: attribute attrValue: attrValue
    <cCall: 'g_file_info_set_attribute_int64' returning: #void
	args: #( #self #string #int )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeObject: attribute attrValue: attrValue
    <cCall: 'g_file_info_set_attribute_object' returning: #void
	args: #( #self #string #cObject )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeStringv: attribute attrValue: attrValue
    <cCall: 'g_file_info_set_attribute_stringv' returning: #void
	args: #( #self #string #cObject )>! !

!GFileInfo methodsFor: 'C call-outs'!
clearStatus
    <cCall: 'g_file_info_clear_status' returning: #void
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
getDeletionDate
    <cCall: 'g_file_info_get_deletion_date' returning: #{GDateTime}
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
getFileType
    <cCall: 'g_file_info_get_file_type' returning: #int
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
getIsHidden
    <cCall: 'g_file_info_get_is_hidden' returning: #boolean
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
getIsBackup
    <cCall: 'g_file_info_get_is_backup' returning: #boolean
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
getIsSymlink
    <cCall: 'g_file_info_get_is_symlink' returning: #boolean
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
getIcon
    <cCall: 'g_file_info_get_icon' returning: #{GIcon}
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
getSymbolicIcon
    <cCall: 'g_file_info_get_symbolic_icon' returning: #{GIcon}
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
getSize
    <cCall: 'g_file_info_get_size' returning: #int
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
getModificationTime: result
    <cCall: 'g_file_info_get_modification_time' returning: #void
	args: #( #self #cObject )>! !

!GFileInfo methodsFor: 'C call-outs'!
getSortOrder
    <cCall: 'g_file_info_get_sort_order' returning: #int
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
setAttributeMask: mask
    <cCall: 'g_file_info_set_attribute_mask' returning: #void
	args: #( #self #cObject )>! !

!GFileInfo methodsFor: 'C call-outs'!
unsetAttributeMask
    <cCall: 'g_file_info_unset_attribute_mask' returning: #void
	args: #( #self )>! !

!GFileInfo methodsFor: 'C call-outs'!
setFileType: type
    <cCall: 'g_file_info_set_file_type' returning: #void
	args: #( #self #int )>! !

!GFileInfo methodsFor: 'C call-outs'!
setIsHidden: isHidden
    <cCall: 'g_file_info_set_is_hidden' returning: #void
	args: #( #self #boolean )>! !

!GFileInfo methodsFor: 'C call-outs'!
setIsSymlink: isSymlink
    <cCall: 'g_file_info_set_is_symlink' returning: #void
	args: #( #self #boolean )>! !

!GFileInfo methodsFor: 'C call-outs'!
setName: name
    <cCall: 'g_file_info_set_name' returning: #void
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
setDisplayName: displayName
    <cCall: 'g_file_info_set_display_name' returning: #void
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
setEditName: editName
    <cCall: 'g_file_info_set_edit_name' returning: #void
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
setIcon: icon
    <cCall: 'g_file_info_set_icon' returning: #void
	args: #( #self #cObject )>! !

!GFileInfo methodsFor: 'C call-outs'!
setSymbolicIcon: icon
    <cCall: 'g_file_info_set_symbolic_icon' returning: #void
	args: #( #self #cObject )>! !

!GFileInfo methodsFor: 'C call-outs'!
setContentType: contentType
    <cCall: 'g_file_info_set_content_type' returning: #void
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
setSize: size
    <cCall: 'g_file_info_set_size' returning: #void
	args: #( #self #int )>! !

!GFileInfo methodsFor: 'C call-outs'!
setModificationTime: mtime
    <cCall: 'g_file_info_set_modification_time' returning: #void
	args: #( #self #cObject )>! !

!GFileInfo methodsFor: 'C call-outs'!
setSymlinkTarget: symlinkTarget
    <cCall: 'g_file_info_set_symlink_target' returning: #void
	args: #( #self #string )>! !

!GFileInfo methodsFor: 'C call-outs'!
setSortOrder: sortOrder
    <cCall: 'g_file_info_set_sort_order' returning: #void
	args: #( #self #int )>! !

!GFileAttributeMatcher class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_file_attribute_matcher_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFileAttributeMatcher!

!GFileAttributeMatcher class methodsFor: 'C call-outs'!
new: attributes
    <cCall: 'g_file_attribute_matcher_new' returning: #{GFileAttributeMatcher}
	args: #( #string )>! !

!GFileAttributeMatcher methodsFor: 'C call-outs'!
ref
    <cCall: 'g_file_attribute_matcher_ref' returning: #{GFileAttributeMatcher}
	args: #( #self )>! !

!GFileAttributeMatcher methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_file_attribute_matcher_unref' returning: #void
	args: #( #self )>! !

!GFileAttributeMatcher methodsFor: 'C call-outs'!
subtract: subtract
    <cCall: 'g_file_attribute_matcher_subtract' returning: #{GFileAttributeMatcher}
	args: #( #self #cObject )>! !

!GFileAttributeMatcher methodsFor: 'C call-outs'!
matches: attribute
    <cCall: 'g_file_attribute_matcher_matches' returning: #boolean
	args: #( #self #string )>! !

!GFileAttributeMatcher methodsFor: 'C call-outs'!
matchesOnly: attribute
    <cCall: 'g_file_attribute_matcher_matches_only' returning: #boolean
	args: #( #self #string )>! !

!GFileAttributeMatcher methodsFor: 'C call-outs'!
enumerateNamespace: ns
    <cCall: 'g_file_attribute_matcher_enumerate_namespace' returning: #boolean
	args: #( #self #string )>! !

!GFileAttributeMatcher methodsFor: 'C call-outs'!
toString
    <cCall: 'g_file_attribute_matcher_to_string' returning: #string
	args: #( #self )>! !

!GFileInputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_file_input_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFileInputStream!

!GFileInputStream methodsFor: 'C call-outs'!
queryInfo: attributes cancellable: cancellable error: error
    <cCall: 'g_file_input_stream_query_info' returning: #{GFileInfo}
	args: #( #self #string #cObject #cObject )>! !

!GFileInputStream methodsFor: 'C call-outs'!
queryInfoAsync: attributes ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_input_stream_query_info_async' returning: #void
	args: #( #self #string #int #cObject #int #cObject )>! !

!GFileInputStream methodsFor: 'C call-outs'!
queryInfoFinish: result error: error
    <cCall: 'g_file_input_stream_query_info_finish' returning: #{GFileInfo}
	args: #( #self #cObject #cObject )>! !

!GIOStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_io_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GIOStream!

!GIOStream methodsFor: 'C call-outs'!
getInputStream
    <cCall: 'g_io_stream_get_input_stream' returning: #{GInputStream}
	args: #( #self )>! !

!GIOStream methodsFor: 'C call-outs'!
getOutputStream
    <cCall: 'g_io_stream_get_output_stream' returning: #{GOutputStream}
	args: #( #self )>! !

!GIOStream methodsFor: 'C call-outs'!
spliceAsync: stream2 flags: flags ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_io_stream_splice_async' returning: #void
	args: #( #self #cObject #int #int #cObject #int #cObject )>! !

!GIOStream class methodsFor: 'C call-outs'!
spliceFinish: result error: error
    <cCall: 'g_io_stream_splice_finish' returning: #boolean
	args: #( #cObject #cObject )>! !

!GIOStream methodsFor: 'C call-outs'!
close: cancellable error: error
    <cCall: 'g_io_stream_close' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GIOStream methodsFor: 'C call-outs'!
closeAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_io_stream_close_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GIOStream methodsFor: 'C call-outs'!
closeFinish: result error: error
    <cCall: 'g_io_stream_close_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GIOStream methodsFor: 'C call-outs'!
isClosed
    <cCall: 'g_io_stream_is_closed' returning: #boolean
	args: #( #self )>! !

!GIOStream methodsFor: 'C call-outs'!
hasPending
    <cCall: 'g_io_stream_has_pending' returning: #boolean
	args: #( #self )>! !

!GIOStream methodsFor: 'C call-outs'!
setPending: error
    <cCall: 'g_io_stream_set_pending' returning: #boolean
	args: #( #self #cObject )>! !

!GIOStream methodsFor: 'C call-outs'!
clearPending
    <cCall: 'g_io_stream_clear_pending' returning: #void
	args: #( #self )>! !

!GFileIOStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_file_io_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFileIOStream!

!GFileIOStream methodsFor: 'C call-outs'!
queryInfo: attributes cancellable: cancellable error: error
    <cCall: 'g_file_io_stream_query_info' returning: #{GFileInfo}
	args: #( #self #string #cObject #cObject )>! !

!GFileIOStream methodsFor: 'C call-outs'!
queryInfoAsync: attributes ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_io_stream_query_info_async' returning: #void
	args: #( #self #string #int #cObject #int #cObject )>! !

!GFileIOStream methodsFor: 'C call-outs'!
queryInfoFinish: result error: error
    <cCall: 'g_file_io_stream_query_info_finish' returning: #{GFileInfo}
	args: #( #self #cObject #cObject )>! !

!GFileIOStream methodsFor: 'C call-outs'!
getEtag
    <cCall: 'g_file_io_stream_get_etag' returning: #string
	args: #( #self )>! !

!GFileMonitor class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_file_monitor_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFileMonitor!

!GFileMonitor methodsFor: 'C call-outs'!
cancel
    <cCall: 'g_file_monitor_cancel' returning: #boolean
	args: #( #self )>! !

!GFileMonitor methodsFor: 'C call-outs'!
isCancelled
    <cCall: 'g_file_monitor_is_cancelled' returning: #boolean
	args: #( #self )>! !

!GFileMonitor methodsFor: 'C call-outs'!
setRateLimit: limitMsecs
    <cCall: 'g_file_monitor_set_rate_limit' returning: #void
	args: #( #self #int )>! !

!GFileMonitor methodsFor: 'C call-outs'!
emitEvent: child otherFile: otherFile eventType: eventType
    <cCall: 'g_file_monitor_emit_event' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GFilenameCompleter class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_filename_completer_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFilenameCompleter!

!GFilenameCompleter class methodsFor: 'C call-outs'!
new
    <cCall: 'g_filename_completer_new' returning: #{GFilenameCompleter}
	args: #( )>! !

!GFilenameCompleter methodsFor: 'C call-outs'!
getCompletionSuffix: initialText
    <cCall: 'g_filename_completer_get_completion_suffix' returning: #string
	args: #( #self #string )>! !

!GFilenameCompleter methodsFor: 'C call-outs'!
getCompletions: initialText
    <cCall: 'g_filename_completer_get_completions' returning: #string
	args: #( #self #string )>! !

!GFilenameCompleter methodsFor: 'C call-outs'!
setDirsOnly: dirsOnly
    <cCall: 'g_filename_completer_set_dirs_only' returning: #void
	args: #( #self #boolean )>! !

!GFileOutputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_file_output_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GFileOutputStream!

!GFileOutputStream methodsFor: 'C call-outs'!
queryInfo: attributes cancellable: cancellable error: error
    <cCall: 'g_file_output_stream_query_info' returning: #{GFileInfo}
	args: #( #self #string #cObject #cObject )>! !

!GFileOutputStream methodsFor: 'C call-outs'!
queryInfoAsync: attributes ioPriority: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_file_output_stream_query_info_async' returning: #void
	args: #( #self #string #int #cObject #int #cObject )>! !

!GFileOutputStream methodsFor: 'C call-outs'!
queryInfoFinish: result error: error
    <cCall: 'g_file_output_stream_query_info_finish' returning: #{GFileInfo}
	args: #( #self #cObject #cObject )>! !

!GFileOutputStream methodsFor: 'C call-outs'!
getEtag
    <cCall: 'g_file_output_stream_get_etag' returning: #string
	args: #( #self )>! !

!GInetAddress class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_inet_address_get_type' returning: #long
	args: #( )>! !

GLib registerType: GInetAddress!

!GInetAddress class methodsFor: 'C call-outs'!
newFromString: string
    <cCall: 'g_inet_address_new_from_string' returning: #{GInetAddress}
	args: #( #string )>! !

!GInetAddress class methodsFor: 'C call-outs'!
newFromBytes: bytes family: family
    <cCall: 'g_inet_address_new_from_bytes' returning: #{GInetAddress}
	args: #( #cObject #int )>! !

!GInetAddress class methodsFor: 'C call-outs'!
newLoopback: family
    <cCall: 'g_inet_address_new_loopback' returning: #{GInetAddress}
	args: #( #int )>! !

!GInetAddress class methodsFor: 'C call-outs'!
newAny: family
    <cCall: 'g_inet_address_new_any' returning: #{GInetAddress}
	args: #( #int )>! !

!GInetAddress methodsFor: 'C call-outs'!
equal: otherAddress
    <cCall: 'g_inet_address_equal' returning: #boolean
	args: #( #self #cObject )>! !

!GInetAddress methodsFor: 'C call-outs'!
toString
    <cCall: 'g_inet_address_to_string' returning: #string
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getNativeSize
    <cCall: 'g_inet_address_get_native_size' returning: #int
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getFamily
    <cCall: 'g_inet_address_get_family' returning: #int
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getIsAny
    <cCall: 'g_inet_address_get_is_any' returning: #boolean
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getIsLoopback
    <cCall: 'g_inet_address_get_is_loopback' returning: #boolean
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getIsLinkLocal
    <cCall: 'g_inet_address_get_is_link_local' returning: #boolean
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getIsSiteLocal
    <cCall: 'g_inet_address_get_is_site_local' returning: #boolean
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getIsMulticast
    <cCall: 'g_inet_address_get_is_multicast' returning: #boolean
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getIsMcGlobal
    <cCall: 'g_inet_address_get_is_mc_global' returning: #boolean
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getIsMcLinkLocal
    <cCall: 'g_inet_address_get_is_mc_link_local' returning: #boolean
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getIsMcNodeLocal
    <cCall: 'g_inet_address_get_is_mc_node_local' returning: #boolean
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getIsMcOrgLocal
    <cCall: 'g_inet_address_get_is_mc_org_local' returning: #boolean
	args: #( #self )>! !

!GInetAddress methodsFor: 'C call-outs'!
getIsMcSiteLocal
    <cCall: 'g_inet_address_get_is_mc_site_local' returning: #boolean
	args: #( #self )>! !

!GInetAddressMask class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_inet_address_mask_get_type' returning: #long
	args: #( )>! !

GLib registerType: GInetAddressMask!

!GInetAddressMask class methodsFor: 'C call-outs'!
new: addr length: length error: error
    <cCall: 'g_inet_address_mask_new' returning: #{GInetAddressMask}
	args: #( #cObject #int #cObject )>! !

!GInetAddressMask class methodsFor: 'C call-outs'!
newFromString: maskString error: error
    <cCall: 'g_inet_address_mask_new_from_string' returning: #{GInetAddressMask}
	args: #( #string #cObject )>! !

!GInetAddressMask methodsFor: 'C call-outs'!
toString
    <cCall: 'g_inet_address_mask_to_string' returning: #string
	args: #( #self )>! !

!GInetAddressMask methodsFor: 'C call-outs'!
getFamily
    <cCall: 'g_inet_address_mask_get_family' returning: #int
	args: #( #self )>! !

!GInetAddressMask methodsFor: 'C call-outs'!
getAddress
    <cCall: 'g_inet_address_mask_get_address' returning: #{GInetAddress}
	args: #( #self )>! !

!GInetAddressMask methodsFor: 'C call-outs'!
getLength
    <cCall: 'g_inet_address_mask_get_length' returning: #int
	args: #( #self )>! !

!GInetAddressMask methodsFor: 'C call-outs'!
matches: address
    <cCall: 'g_inet_address_mask_matches' returning: #boolean
	args: #( #self #cObject )>! !

!GInetAddressMask methodsFor: 'C call-outs'!
equal: mask2
    <cCall: 'g_inet_address_mask_equal' returning: #boolean
	args: #( #self #cObject )>! !

!GSocketAddress class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_socket_address_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSocketAddress!

!GSocketAddress methodsFor: 'C call-outs'!
getFamily
    <cCall: 'g_socket_address_get_family' returning: #int
	args: #( #self )>! !

!GSocketAddress class methodsFor: 'C call-outs'!
newFromNative: native len: len
    <cCall: 'g_socket_address_new_from_native' returning: #{GSocketAddress}
	args: #( #cObject #int )>! !

!GSocketAddress methodsFor: 'C call-outs'!
toNative: dest destlen: destlen error: error
    <cCall: 'g_socket_address_to_native' returning: #boolean
	args: #( #self #cObject #int #cObject )>! !

!GSocketAddress methodsFor: 'C call-outs'!
getNativeSize
    <cCall: 'g_socket_address_get_native_size' returning: #int
	args: #( #self )>! !

!GInetSocketAddress class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_inet_socket_address_get_type' returning: #long
	args: #( )>! !

GLib registerType: GInetSocketAddress!

!GInetSocketAddress class methodsFor: 'C call-outs'!
new: address port: port
    <cCall: 'g_inet_socket_address_new' returning: #{GInetSocketAddress}
	args: #( #cObject #int )>! !

!GInetSocketAddress class methodsFor: 'C call-outs'!
newFromString: address port: port
    <cCall: 'g_inet_socket_address_new_from_string' returning: #{GInetSocketAddress}
	args: #( #string #int )>! !

!GInetSocketAddress methodsFor: 'C call-outs'!
getAddress
    <cCall: 'g_inet_socket_address_get_address' returning: #{GInetAddress}
	args: #( #self )>! !

!GInetSocketAddress methodsFor: 'C call-outs'!
getPort
    <cCall: 'g_inet_socket_address_get_port' returning: #int
	args: #( #self )>! !

!GInetSocketAddress methodsFor: 'C call-outs'!
getFlowinfo
    <cCall: 'g_inet_socket_address_get_flowinfo' returning: #int
	args: #( #self )>! !

!GInetSocketAddress methodsFor: 'C call-outs'!
getScopeId
    <cCall: 'g_inet_socket_address_get_scope_id' returning: #int
	args: #( #self )>! !

!GModule class methodsFor: 'C call-outs'!
supported
    <cCall: 'g_module_supported' returning: #boolean
	args: #( )>! !

!GModule class methodsFor: 'C call-outs'!
open: fileName flags: flags
    <cCall: 'g_module_open' returning: #{GModule}
	args: #( #string #int )>! !

!GModule methodsFor: 'C call-outs'!
close
    <cCall: 'g_module_close' returning: #boolean
	args: #( #self )>! !

!GModule methodsFor: 'C call-outs'!
makeResident
    <cCall: 'g_module_make_resident' returning: #void
	args: #( #self )>! !

!GModule methodsFor: 'C call-outs'!
symbol: symbolName symbol: symbol
    <cCall: 'g_module_symbol' returning: #boolean
	args: #( #self #string #cObject )>! !

!GModule class methodsFor: 'C call-outs'!
buildPath: directory moduleName: moduleName
    <cCall: 'g_module_build_path' returning: #string
	args: #( #string #string )>! !

!GModule class methodsFor: 'C call-outs'!
openUtf8: fileName flags: flags
    <cCall: 'g_module_open_utf8' returning: #{GModule}
	args: #( #string #int )>! !

!GIOModuleScope class methodsFor: 'C call-outs'!
new: flags
    <cCall: 'g_io_module_scope_new' returning: #{GIOModuleScope}
	args: #( #int )>! !

!GIOModuleScope methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'g_io_module_scope_free' returning: #void
	args: #( #self )>! !

!GIOModuleScope methodsFor: 'C call-outs'!
block: basename
    <cCall: 'g_io_module_scope_block' returning: #void
	args: #( #self #string )>! !

!GIOModule class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_io_module_get_type' returning: #long
	args: #( )>! !

GLib registerType: GIOModule!

!GIOModule class methodsFor: 'C call-outs'!
new: filename
    <cCall: 'g_io_module_new' returning: #{GIOModule}
	args: #( #string )>! !

!GIOExtensionPoint class methodsFor: 'C call-outs'!
register: name
    <cCall: 'g_io_extension_point_register' returning: #{GIOExtensionPoint}
	args: #( #string )>! !

!GIOExtensionPoint class methodsFor: 'C call-outs'!
lookup: name
    <cCall: 'g_io_extension_point_lookup' returning: #{GIOExtensionPoint}
	args: #( #string )>! !

!GIOExtensionPoint methodsFor: 'C call-outs'!
setRequiredType: type
    <cCall: 'g_io_extension_point_set_required_type' returning: #void
	args: #( #self #long )>! !

!GIOExtensionPoint methodsFor: 'C call-outs'!
getRequiredType
    <cCall: 'g_io_extension_point_get_required_type' returning: #long
	args: #( #self )>! !

!GIOExtensionPoint methodsFor: 'C call-outs'!
getExtensions
    <cCall: 'g_io_extension_point_get_extensions' returning: #{GList}
	args: #( #self )>! !

!GIOExtensionPoint methodsFor: 'C call-outs'!
getExtensionByName: name
    <cCall: 'g_io_extension_point_get_extension_by_name' returning: #{GIOExtension}
	args: #( #self #string )>! !

!GIOExtensionPoint class methodsFor: 'C call-outs'!
implement: extensionPointName type: type extensionName: extensionName priority: priority
    <cCall: 'g_io_extension_point_implement' returning: #{GIOExtension}
	args: #( #string #long #string #int )>! !

!GIOExtension methodsFor: 'C call-outs'!
getType
    <cCall: 'g_io_extension_get_type' returning: #long
	args: #( #self )>! !

!GIOExtension methodsFor: 'C call-outs'!
getPriority
    <cCall: 'g_io_extension_get_priority' returning: #int
	args: #( #self )>! !

!GIOModule methodsFor: 'C call-outs'!
load
    <cCall: 'g_io_module_load' returning: #void
	args: #( #self )>! !

!GIOModule methodsFor: 'C call-outs'!
unload
    <cCall: 'g_io_module_unload' returning: #void
	args: #( #self )>! !

!GIOModule class methodsFor: 'C call-outs'!
query
    <cCall: 'g_io_module_query' returning: #string
	args: #( )>! !

!GIOSchedulerJob methodsFor: 'C call-outs'!
sendToMainloop: func userData: userData notify: notify
    <cCall: 'g_io_scheduler_job_send_to_mainloop' returning: #boolean
	args: #( #self #cObject #cObject #int )>! !

!GIOSchedulerJob methodsFor: 'C call-outs'!
sendToMainloopAsync: func userData: userData notify: notify
    <cCall: 'g_io_scheduler_job_send_to_mainloop_async' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GLoadableIcon class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_loadable_icon_get_type' returning: #long
	args: #( )>! !

GLib registerType: GLoadableIcon!

!GLoadableIcon methodsFor: 'C call-outs'!
load: size type: type cancellable: cancellable error: error
    <cCall: 'g_loadable_icon_load' returning: #{GInputStream}
	args: #( #self #int #cObject #cObject #cObject )>! !

!GLoadableIcon methodsFor: 'C call-outs'!
loadAsync: size cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_loadable_icon_load_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GLoadableIcon methodsFor: 'C call-outs'!
loadFinish: res type: type error: error
    <cCall: 'g_loadable_icon_load_finish' returning: #{GInputStream}
	args: #( #self #cObject #cObject #cObject )>! !

!GMemoryInputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_memory_input_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMemoryInputStream!

!GMemoryInputStream class methodsFor: 'C call-outs'!
new
    <cCall: 'g_memory_input_stream_new' returning: #{GMemoryInputStream}
	args: #( )>! !

!GMemoryInputStream class methodsFor: 'C call-outs'!
newFromData
    <cCall: 'g_memory_input_stream_new_from_data' returning: #{GMemoryInputStream}
	args: #( )>! !

!GMemoryInputStream class methodsFor: 'C call-outs'!
newFromBytes: bytes
    <cCall: 'g_memory_input_stream_new_from_bytes' returning: #{GMemoryInputStream}
	args: #( #cObject )>! !

!GMemoryInputStream methodsFor: 'C call-outs'!
addData
    <cCall: 'g_memory_input_stream_add_data' returning: #void
	args: #( )>! !

!GMemoryInputStream methodsFor: 'C call-outs'!
addBytes: bytes
    <cCall: 'g_memory_input_stream_add_bytes' returning: #void
	args: #( #self #cObject )>! !

!GMemoryOutputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_memory_output_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMemoryOutputStream!

!GMemoryOutputStream class methodsFor: 'C call-outs'!
new: data size: size reallocFunction: reallocFunction destroyFunction: destroyFunction
    <cCall: 'g_memory_output_stream_new' returning: #{GMemoryOutputStream}
	args: #( #cObject #int #cObject #int )>! !

!GMemoryOutputStream class methodsFor: 'C call-outs'!
newResizable
    <cCall: 'g_memory_output_stream_new_resizable' returning: #{GMemoryOutputStream}
	args: #( )>! !

!GMemoryOutputStream methodsFor: 'C call-outs'!
getData
    <cCall: 'g_memory_output_stream_get_data' returning: #cObject
	args: #( #self )>! !

!GMemoryOutputStream methodsFor: 'C call-outs'!
getSize
    <cCall: 'g_memory_output_stream_get_size' returning: #int
	args: #( #self )>! !

!GMemoryOutputStream methodsFor: 'C call-outs'!
getDataSize
    <cCall: 'g_memory_output_stream_get_data_size' returning: #int
	args: #( #self )>! !

!GMemoryOutputStream methodsFor: 'C call-outs'!
stealData
    <cCall: 'g_memory_output_stream_steal_data' returning: #cObject
	args: #( #self )>! !

!GMemoryOutputStream methodsFor: 'C call-outs'!
stealAsBytes
    <cCall: 'g_memory_output_stream_steal_as_bytes' returning: #{GBytes}
	args: #( #self )>! !

!GMount class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_mount_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMount!

!GMount methodsFor: 'C call-outs'!
getRoot
    <cCall: 'g_mount_get_root' returning: #{GFile}
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
getDefaultLocation
    <cCall: 'g_mount_get_default_location' returning: #{GFile}
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
getName
    <cCall: 'g_mount_get_name' returning: #string
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
getIcon
    <cCall: 'g_mount_get_icon' returning: #{GIcon}
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
getSymbolicIcon
    <cCall: 'g_mount_get_symbolic_icon' returning: #{GIcon}
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
getUuid
    <cCall: 'g_mount_get_uuid' returning: #string
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
getVolume
    <cCall: 'g_mount_get_volume' returning: #{GVolume}
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
getDrive
    <cCall: 'g_mount_get_drive' returning: #{GDrive}
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
canUnmount
    <cCall: 'g_mount_can_unmount' returning: #boolean
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
canEject
    <cCall: 'g_mount_can_eject' returning: #boolean
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
unmount: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_mount_unmount' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GMount methodsFor: 'C call-outs'!
unmountFinish: result error: error
    <cCall: 'g_mount_unmount_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GMount methodsFor: 'C call-outs'!
eject: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_mount_eject' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GMount methodsFor: 'C call-outs'!
ejectFinish: result error: error
    <cCall: 'g_mount_eject_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GMount methodsFor: 'C call-outs'!
remount: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_mount_remount' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GMount methodsFor: 'C call-outs'!
remountFinish: result error: error
    <cCall: 'g_mount_remount_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GMount methodsFor: 'C call-outs'!
guessContentType: forceRescan cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_mount_guess_content_type' returning: #void
	args: #( #self #boolean #cObject #int #cObject )>! !

!GMount methodsFor: 'C call-outs'!
guessContentTypeFinish: result error: error
    <cCall: 'g_mount_guess_content_type_finish' returning: #string
	args: #( #self #cObject #cObject )>! !

!GMount methodsFor: 'C call-outs'!
guessContentTypeSync: forceRescan cancellable: cancellable error: error
    <cCall: 'g_mount_guess_content_type_sync' returning: #string
	args: #( #self #boolean #cObject #cObject )>! !

!GMount methodsFor: 'C call-outs'!
isShadowed
    <cCall: 'g_mount_is_shadowed' returning: #boolean
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
shadow
    <cCall: 'g_mount_shadow' returning: #void
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
unshadow
    <cCall: 'g_mount_unshadow' returning: #void
	args: #( #self )>! !

!GMount methodsFor: 'C call-outs'!
unmountWithOperation: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_mount_unmount_with_operation' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GMount methodsFor: 'C call-outs'!
unmountWithOperationFinish: result error: error
    <cCall: 'g_mount_unmount_with_operation_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GMount methodsFor: 'C call-outs'!
ejectWithOperation: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_mount_eject_with_operation' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GMount methodsFor: 'C call-outs'!
ejectWithOperationFinish: result error: error
    <cCall: 'g_mount_eject_with_operation_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GMountOperation class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_mount_operation_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMountOperation!

!GMountOperation class methodsFor: 'C call-outs'!
new
    <cCall: 'g_mount_operation_new' returning: #{GMountOperation}
	args: #( )>! !

!GMountOperation methodsFor: 'C call-outs'!
setUsername: username
    <cCall: 'g_mount_operation_set_username' returning: #void
	args: #( #self #string )>! !

!GMountOperation methodsFor: 'C call-outs'!
setPassword: password
    <cCall: 'g_mount_operation_set_password' returning: #void
	args: #( #self #string )>! !

!GMountOperation methodsFor: 'C call-outs'!
getAnonymous
    <cCall: 'g_mount_operation_get_anonymous' returning: #boolean
	args: #( #self )>! !

!GMountOperation methodsFor: 'C call-outs'!
setAnonymous: anonymous
    <cCall: 'g_mount_operation_set_anonymous' returning: #void
	args: #( #self #boolean )>! !

!GMountOperation methodsFor: 'C call-outs'!
setDomain: domain
    <cCall: 'g_mount_operation_set_domain' returning: #void
	args: #( #self #string )>! !

!GMountOperation methodsFor: 'C call-outs'!
getPasswordSave
    <cCall: 'g_mount_operation_get_password_save' returning: #int
	args: #( #self )>! !

!GMountOperation methodsFor: 'C call-outs'!
setPasswordSave: save
    <cCall: 'g_mount_operation_set_password_save' returning: #void
	args: #( #self #int )>! !

!GMountOperation methodsFor: 'C call-outs'!
getChoice
    <cCall: 'g_mount_operation_get_choice' returning: #int
	args: #( #self )>! !

!GMountOperation methodsFor: 'C call-outs'!
setChoice: choice
    <cCall: 'g_mount_operation_set_choice' returning: #void
	args: #( #self #int )>! !

!GMountOperation methodsFor: 'C call-outs'!
reply: result
    <cCall: 'g_mount_operation_reply' returning: #void
	args: #( #self #int )>! !

!GVolumeMonitor class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_volume_monitor_get_type' returning: #long
	args: #( )>! !

GLib registerType: GVolumeMonitor!

!GVolumeMonitor class methodsFor: 'C call-outs'!
get
    <cCall: 'g_volume_monitor_get' returning: #{GVolumeMonitor}
	args: #( )>! !

!GVolumeMonitor methodsFor: 'C call-outs'!
getConnectedDrives
    <cCall: 'g_volume_monitor_get_connected_drives' returning: #{GList}
	args: #( #self )>! !

!GVolumeMonitor methodsFor: 'C call-outs'!
getVolumes
    <cCall: 'g_volume_monitor_get_volumes' returning: #{GList}
	args: #( #self )>! !

!GVolumeMonitor methodsFor: 'C call-outs'!
getMounts
    <cCall: 'g_volume_monitor_get_mounts' returning: #{GList}
	args: #( #self )>! !

!GVolumeMonitor methodsFor: 'C call-outs'!
getVolumeForUuid: uuid
    <cCall: 'g_volume_monitor_get_volume_for_uuid' returning: #{GVolume}
	args: #( #self #string )>! !

!GVolumeMonitor methodsFor: 'C call-outs'!
getMountForUuid: uuid
    <cCall: 'g_volume_monitor_get_mount_for_uuid' returning: #{GMount}
	args: #( #self #string )>! !

!GVolumeMonitor class methodsFor: 'C call-outs'!
adoptOrphanMount: mount
    <cCall: 'g_volume_monitor_adopt_orphan_mount' returning: #{GVolume}
	args: #( #cObject )>! !

!GNativeVolumeMonitor class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_native_volume_monitor_get_type' returning: #long
	args: #( )>! !

GLib registerType: GNativeVolumeMonitor!

!GNetworkAddress class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_network_address_get_type' returning: #long
	args: #( )>! !

GLib registerType: GNetworkAddress!

!GNetworkAddress class methodsFor: 'C call-outs'!
new: hostname port: port
    <cCall: 'g_network_address_new' returning: #{GNetworkAddress}
	args: #( #string #int )>! !

!GNetworkAddress class methodsFor: 'C call-outs'!
parse: hostAndPort defaultPort: defaultPort error: error
    <cCall: 'g_network_address_parse' returning: #{GSocketConnectable}
	args: #( #string #int #cObject )>! !

!GNetworkAddress class methodsFor: 'C call-outs'!
parseUri: uri defaultPort: defaultPort error: error
    <cCall: 'g_network_address_parse_uri' returning: #{GSocketConnectable}
	args: #( #string #int #cObject )>! !

!GNetworkAddress methodsFor: 'C call-outs'!
getPort
    <cCall: 'g_network_address_get_port' returning: #int
	args: #( #self )>! !

!GNetworkMonitor class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_network_monitor_get_type' returning: #long
	args: #( )>! !

GLib registerType: GNetworkMonitor!

!GNetworkMonitor class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'g_network_monitor_get_default' returning: #{GNetworkMonitor}
	args: #( )>! !

!GNetworkMonitor methodsFor: 'C call-outs'!
getNetworkAvailable
    <cCall: 'g_network_monitor_get_network_available' returning: #boolean
	args: #( #self )>! !

!GNetworkMonitor methodsFor: 'C call-outs'!
canReach: connectable cancellable: cancellable error: error
    <cCall: 'g_network_monitor_can_reach' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GNetworkMonitor methodsFor: 'C call-outs'!
canReachAsync: connectable cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_network_monitor_can_reach_async' returning: #void
	args: #( #self #cObject #cObject #int #cObject )>! !

!GNetworkMonitor methodsFor: 'C call-outs'!
canReachFinish: result error: error
    <cCall: 'g_network_monitor_can_reach_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GNetworkService class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_network_service_get_type' returning: #long
	args: #( )>! !

GLib registerType: GNetworkService!

!GNetworkService class methodsFor: 'C call-outs'!
new: service protocol: protocol domain: domain
    <cCall: 'g_network_service_new' returning: #{GNetworkService}
	args: #( #string #string #string )>! !

!GNetworkService methodsFor: 'C call-outs'!
setScheme: scheme
    <cCall: 'g_network_service_set_scheme' returning: #void
	args: #( #self #string )>! !

!GPermission class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_permission_get_type' returning: #long
	args: #( )>! !

GLib registerType: GPermission!

!GPermission methodsFor: 'C call-outs'!
acquire: cancellable error: error
    <cCall: 'g_permission_acquire' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GPermission methodsFor: 'C call-outs'!
acquireAsync: cancellable callback: callback userData: userData
    <cCall: 'g_permission_acquire_async' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GPermission methodsFor: 'C call-outs'!
acquireFinish: result error: error
    <cCall: 'g_permission_acquire_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GPermission methodsFor: 'C call-outs'!
release: cancellable error: error
    <cCall: 'g_permission_release' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GPermission methodsFor: 'C call-outs'!
releaseAsync: cancellable callback: callback userData: userData
    <cCall: 'g_permission_release_async' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GPermission methodsFor: 'C call-outs'!
releaseFinish: result error: error
    <cCall: 'g_permission_release_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GPermission methodsFor: 'C call-outs'!
getAllowed
    <cCall: 'g_permission_get_allowed' returning: #boolean
	args: #( #self )>! !

!GPermission methodsFor: 'C call-outs'!
getCanAcquire
    <cCall: 'g_permission_get_can_acquire' returning: #boolean
	args: #( #self )>! !

!GPermission methodsFor: 'C call-outs'!
getCanRelease
    <cCall: 'g_permission_get_can_release' returning: #boolean
	args: #( #self )>! !

!GPermission methodsFor: 'C call-outs'!
implUpdate: allowed canAcquire: canAcquire canRelease: canRelease
    <cCall: 'g_permission_impl_update' returning: #void
	args: #( #self #boolean #boolean #boolean )>! !

!GPollableInputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_pollable_input_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GPollableInputStream!

!GPollableInputStream methodsFor: 'C call-outs'!
canPoll
    <cCall: 'g_pollable_input_stream_can_poll' returning: #boolean
	args: #( #self )>! !

!GPollableInputStream methodsFor: 'C call-outs'!
isReadable
    <cCall: 'g_pollable_input_stream_is_readable' returning: #boolean
	args: #( #self )>! !

!GPollableInputStream methodsFor: 'C call-outs'!
readNonblocking
    <cCall: 'g_pollable_input_stream_read_nonblocking' returning: #int
	args: #( )>! !

!GPollableOutputStream class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_pollable_output_stream_get_type' returning: #long
	args: #( )>! !

GLib registerType: GPollableOutputStream!

!GPollableOutputStream methodsFor: 'C call-outs'!
canPoll
    <cCall: 'g_pollable_output_stream_can_poll' returning: #boolean
	args: #( #self )>! !

!GPollableOutputStream methodsFor: 'C call-outs'!
isWritable
    <cCall: 'g_pollable_output_stream_is_writable' returning: #boolean
	args: #( #self )>! !

!GPollableOutputStream methodsFor: 'C call-outs'!
writeNonblocking
    <cCall: 'g_pollable_output_stream_write_nonblocking' returning: #int
	args: #( )>! !

!GPollable class methodsFor: 'C call-outs'!
streamRead: stream
    <cCall: 'g_pollable_stream_read' returning: #int
	args: #( )>! !

!GPollable class methodsFor: 'C call-outs'!
streamWrite: stream
    <cCall: 'g_pollable_stream_write' returning: #int
	args: #( )>! !

!GPollable class methodsFor: 'C call-outs'!
streamWriteAll: stream
    <cCall: 'g_pollable_stream_write_all' returning: #boolean
	args: #( )>! !

!GPropertyAction class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_property_action_get_type' returning: #long
	args: #( )>! !

GLib registerType: GPropertyAction!

!GPropertyAction class methodsFor: 'C call-outs'!
new: name object: object propertyName: propertyName
    <cCall: 'g_property_action_new' returning: #{GPropertyAction}
	args: #( #string #cObject #string )>! !

!GProxy class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_proxy_get_type' returning: #long
	args: #( )>! !

GLib registerType: GProxy!

!GProxy class methodsFor: 'C call-outs'!
getDefaultForProtocol: protocol
    <cCall: 'g_proxy_get_default_for_protocol' returning: #{GProxy}
	args: #( #string )>! !

!GProxy methodsFor: 'C call-outs'!
connect: connection proxyAddress: proxyAddress cancellable: cancellable error: error
    <cCall: 'g_proxy_connect' returning: #{GIOStream}
	args: #( #self #cObject #cObject #cObject #cObject )>! !

!GProxy methodsFor: 'C call-outs'!
connectAsync: connection proxyAddress: proxyAddress cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_proxy_connect_async' returning: #void
	args: #( #self #cObject #cObject #cObject #int #cObject )>! !

!GProxy methodsFor: 'C call-outs'!
connectFinish: result error: error
    <cCall: 'g_proxy_connect_finish' returning: #{GIOStream}
	args: #( #self #cObject #cObject )>! !

!GProxy methodsFor: 'C call-outs'!
supportsHostname
    <cCall: 'g_proxy_supports_hostname' returning: #boolean
	args: #( #self )>! !

!GProxyAddress class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_proxy_address_get_type' returning: #long
	args: #( )>! !

GLib registerType: GProxyAddress!

!GProxyAddress class methodsFor: 'C call-outs'!
new: inetaddr port: port protocol: protocol destHostname: destHostname destPort: destPort username: username password: password
    <cCall: 'g_proxy_address_new' returning: #{GProxyAddress}
	args: #( #cObject #int #string #string #int #string #string )>! !

!GProxyAddress methodsFor: 'C call-outs'!
getDestinationPort
    <cCall: 'g_proxy_address_get_destination_port' returning: #int
	args: #( #self )>! !

!GSocketAddressEnumerator class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_socket_address_enumerator_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSocketAddressEnumerator!

!GSocketAddressEnumerator methodsFor: 'C call-outs'!
next: cancellable error: error
    <cCall: 'g_socket_address_enumerator_next' returning: #{GSocketAddress}
	args: #( #self #cObject #cObject )>! !

!GSocketAddressEnumerator methodsFor: 'C call-outs'!
nextAsync: cancellable callback: callback userData: userData
    <cCall: 'g_socket_address_enumerator_next_async' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GSocketAddressEnumerator methodsFor: 'C call-outs'!
nextFinish: result error: error
    <cCall: 'g_socket_address_enumerator_next_finish' returning: #{GSocketAddress}
	args: #( #self #cObject #cObject )>! !

!GProxyAddressEnumerator class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_proxy_address_enumerator_get_type' returning: #long
	args: #( )>! !

GLib registerType: GProxyAddressEnumerator!

!GProxyResolver class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_proxy_resolver_get_type' returning: #long
	args: #( )>! !

GLib registerType: GProxyResolver!

!GProxyResolver class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'g_proxy_resolver_get_default' returning: #{GProxyResolver}
	args: #( )>! !

!GProxyResolver methodsFor: 'C call-outs'!
isSupported
    <cCall: 'g_proxy_resolver_is_supported' returning: #boolean
	args: #( #self )>! !

!GProxyResolver methodsFor: 'C call-outs'!
lookup: uri cancellable: cancellable error: error
    <cCall: 'g_proxy_resolver_lookup' returning: #string
	args: #( #self #string #cObject #cObject )>! !

!GProxyResolver methodsFor: 'C call-outs'!
lookupAsync: uri cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_proxy_resolver_lookup_async' returning: #void
	args: #( #self #string #cObject #int #cObject )>! !

!GProxyResolver methodsFor: 'C call-outs'!
lookupFinish: result error: error
    <cCall: 'g_proxy_resolver_lookup_finish' returning: #string
	args: #( #self #cObject #cObject )>! !

!GResolver class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_resolver_get_type' returning: #long
	args: #( )>! !

GLib registerType: GResolver!

!GResolver class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'g_resolver_get_default' returning: #{GResolver}
	args: #( )>! !

!GResolver methodsFor: 'C call-outs'!
setDefault
    <cCall: 'g_resolver_set_default' returning: #void
	args: #( #self )>! !

!GResolver methodsFor: 'C call-outs'!
lookupByName: hostname cancellable: cancellable error: error
    <cCall: 'g_resolver_lookup_by_name' returning: #{GList}
	args: #( #self #string #cObject #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupByNameAsync: hostname cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_resolver_lookup_by_name_async' returning: #void
	args: #( #self #string #cObject #int #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupByNameFinish: result error: error
    <cCall: 'g_resolver_lookup_by_name_finish' returning: #{GList}
	args: #( #self #cObject #cObject )>! !

!GResolver class methodsFor: 'C call-outs'!
freeAddresses: addresses
    <cCall: 'g_resolver_free_addresses' returning: #void
	args: #( #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupByAddress: address cancellable: cancellable error: error
    <cCall: 'g_resolver_lookup_by_address' returning: #string
	args: #( #self #cObject #cObject #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupByAddressAsync: address cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_resolver_lookup_by_address_async' returning: #void
	args: #( #self #cObject #cObject #int #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupByAddressFinish: result error: error
    <cCall: 'g_resolver_lookup_by_address_finish' returning: #string
	args: #( #self #cObject #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupService: service protocol: protocol domain: domain cancellable: cancellable error: error
    <cCall: 'g_resolver_lookup_service' returning: #{GList}
	args: #( #self #string #string #string #cObject #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupServiceAsync: service protocol: protocol domain: domain cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_resolver_lookup_service_async' returning: #void
	args: #( #self #string #string #string #cObject #int #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupServiceFinish: result error: error
    <cCall: 'g_resolver_lookup_service_finish' returning: #{GList}
	args: #( #self #cObject #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupRecords: rrname recordType: recordType cancellable: cancellable error: error
    <cCall: 'g_resolver_lookup_records' returning: #{GList}
	args: #( #self #string #int #cObject #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupRecordsAsync: rrname recordType: recordType cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_resolver_lookup_records_async' returning: #void
	args: #( #self #string #int #cObject #int #cObject )>! !

!GResolver methodsFor: 'C call-outs'!
lookupRecordsFinish: result error: error
    <cCall: 'g_resolver_lookup_records_finish' returning: #{GList}
	args: #( #self #cObject #cObject )>! !

!GResolver class methodsFor: 'C call-outs'!
freeTargets: targets
    <cCall: 'g_resolver_free_targets' returning: #void
	args: #( #cObject )>! !

!GResource class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_resource_get_type' returning: #long
	args: #( )>! !

GLib registerType: GResource!

!GResource class methodsFor: 'C call-outs'!
newFromData: data error: error
    <cCall: 'g_resource_new_from_data' returning: #{GResource}
	args: #( #cObject #cObject )>! !

!GResource methodsFor: 'C call-outs'!
ref
    <cCall: 'g_resource_ref' returning: #{GResource}
	args: #( #self )>! !

!GResource methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_resource_unref' returning: #void
	args: #( #self )>! !

!GResource class methodsFor: 'C call-outs'!
load: filename error: error
    <cCall: 'g_resource_load' returning: #{GResource}
	args: #( #string #cObject )>! !

!GResource methodsFor: 'C call-outs'!
openStream: path lookupFlags: lookupFlags error: error
    <cCall: 'g_resource_open_stream' returning: #{GInputStream}
	args: #( #self #string #int #cObject )>! !

!GResource methodsFor: 'C call-outs'!
lookupData: path lookupFlags: lookupFlags error: error
    <cCall: 'g_resource_lookup_data' returning: #{GBytes}
	args: #( #self #string #int #cObject )>! !

!GResource methodsFor: 'C call-outs'!
enumerateChildren: path lookupFlags: lookupFlags error: error
    <cCall: 'g_resource_enumerate_children' returning: #string
	args: #( #self #string #int #cObject )>! !

!GResource methodsFor: 'C call-outs'!
getInfo: path lookupFlags: lookupFlags size: size flags: flags error: error
    <cCall: 'g_resource_get_info' returning: #boolean
	args: #( #self #string #int #cObject #cObject #cObject )>! !

!GResources class methodsFor: 'C call-outs'!
register: resource
    <cCall: 'g_resources_register' returning: #void
	args: #( #cObject )>! !

!GResources class methodsFor: 'C call-outs'!
unregister: resource
    <cCall: 'g_resources_unregister' returning: #void
	args: #( #cObject )>! !

!GResources class methodsFor: 'C call-outs'!
openStream: path lookupFlags: lookupFlags error: error
    <cCall: 'g_resources_open_stream' returning: #{GInputStream}
	args: #( #string #int #cObject )>! !

!GResources class methodsFor: 'C call-outs'!
lookupData: path lookupFlags: lookupFlags error: error
    <cCall: 'g_resources_lookup_data' returning: #{GBytes}
	args: #( #string #int #cObject )>! !

!GResources class methodsFor: 'C call-outs'!
enumerateChildren: path lookupFlags: lookupFlags error: error
    <cCall: 'g_resources_enumerate_children' returning: #string
	args: #( #string #int #cObject )>! !

!GResources class methodsFor: 'C call-outs'!
getInfo: path lookupFlags: lookupFlags size: size flags: flags error: error
    <cCall: 'g_resources_get_info' returning: #boolean
	args: #( #string #int #cObject #cObject #cObject )>! !

!GStaticResource methodsFor: 'C call-outs'!
init
    <cCall: 'g_static_resource_init' returning: #void
	args: #( #self )>! !

!GStaticResource methodsFor: 'C call-outs'!
fini
    <cCall: 'g_static_resource_fini' returning: #void
	args: #( #self )>! !

!GStaticResource methodsFor: 'C call-outs'!
getResource
    <cCall: 'g_static_resource_get_resource' returning: #{GResource}
	args: #( #self )>! !

!GSeekable class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_seekable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSeekable!

!GSeekable methodsFor: 'C call-outs'!
tell
    <cCall: 'g_seekable_tell' returning: #int
	args: #( #self )>! !

!GSeekable methodsFor: 'C call-outs'!
canSeek
    <cCall: 'g_seekable_can_seek' returning: #boolean
	args: #( #self )>! !

!GSeekable methodsFor: 'C call-outs'!
seek: offset type: type cancellable: cancellable error: error
    <cCall: 'g_seekable_seek' returning: #boolean
	args: #( #self #int #int #cObject #cObject )>! !

!GSeekable methodsFor: 'C call-outs'!
canTruncate
    <cCall: 'g_seekable_can_truncate' returning: #boolean
	args: #( #self )>! !

!GSeekable methodsFor: 'C call-outs'!
truncate: offset cancellable: cancellable error: error
    <cCall: 'g_seekable_truncate' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GSettingsSchemaSource class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_settings_schema_source_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSettingsSchemaSource!

!GSettingsSchemaSource class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'g_settings_schema_source_get_default' returning: #{GSettingsSchemaSource}
	args: #( )>! !

!GSettingsSchemaSource methodsFor: 'C call-outs'!
ref
    <cCall: 'g_settings_schema_source_ref' returning: #{GSettingsSchemaSource}
	args: #( #self )>! !

!GSettingsSchemaSource methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_settings_schema_source_unref' returning: #void
	args: #( #self )>! !

!GSettingsSchemaSource class methodsFor: 'C call-outs'!
newFromDirectory: directory parent: parent trusted: trusted error: error
    <cCall: 'g_settings_schema_source_new_from_directory' returning: #{GSettingsSchemaSource}
	args: #( #string #cObject #boolean #cObject )>! !

!GSettingsSchemaSource methodsFor: 'C call-outs'!
lookup: schemaId recursive: recursive
    <cCall: 'g_settings_schema_source_lookup' returning: #{GSettingsSchema}
	args: #( #self #string #boolean )>! !

!GSettingsSchemaSource methodsFor: 'C call-outs'!
listSchemas: recursive nonRelocatable: nonRelocatable relocatable: relocatable
    <cCall: 'g_settings_schema_source_list_schemas' returning: #void
	args: #( #self #boolean #cObject #cObject )>! !

!GSettingsSchema class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_settings_schema_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSettingsSchema!

!GSettingsSchema methodsFor: 'C call-outs'!
ref
    <cCall: 'g_settings_schema_ref' returning: #{GSettingsSchema}
	args: #( #self )>! !

!GSettingsSchema methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_settings_schema_unref' returning: #void
	args: #( #self )>! !

!GSettingsSchema methodsFor: 'C call-outs'!
getKey: name
    <cCall: 'g_settings_schema_get_key' returning: #{GSettingsSchemaKey}
	args: #( #self #string )>! !

!GSettingsSchema methodsFor: 'C call-outs'!
hasKey: name
    <cCall: 'g_settings_schema_has_key' returning: #boolean
	args: #( #self #string )>! !

!GSettingsSchemaKey class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_settings_schema_key_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSettingsSchemaKey!

!GSettingsSchemaKey methodsFor: 'C call-outs'!
ref
    <cCall: 'g_settings_schema_key_ref' returning: #{GSettingsSchemaKey}
	args: #( #self )>! !

!GSettingsSchemaKey methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'g_settings_schema_key_unref' returning: #void
	args: #( #self )>! !

!GSettingsSchemaKey methodsFor: 'C call-outs'!
getDefaultValue
    <cCall: 'g_settings_schema_key_get_default_value' returning: #{GVariant}
	args: #( #self )>! !

!GSettingsSchemaKey methodsFor: 'C call-outs'!
getRange
    <cCall: 'g_settings_schema_key_get_range' returning: #{GVariant}
	args: #( #self )>! !

!GSettingsSchemaKey methodsFor: 'C call-outs'!
rangeCheck: value
    <cCall: 'g_settings_schema_key_range_check' returning: #boolean
	args: #( #self #cObject )>! !

!GSettings class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_settings_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSettings!

!GSettings class methodsFor: 'C call-outs'!
new: schemaId
    <cCall: 'g_settings_new' returning: #{GSettings}
	args: #( #string )>! !

!GSettings class methodsFor: 'C call-outs'!
newWithPath: schemaId path: path
    <cCall: 'g_settings_new_with_path' returning: #{GSettings}
	args: #( #string #string )>! !

!GSettings class methodsFor: 'C call-outs'!
newWithBackend: schemaId backend: backend
    <cCall: 'g_settings_new_with_backend' returning: #{GSettings}
	args: #( #string #cObject )>! !

!GSettings class methodsFor: 'C call-outs'!
newWithBackendAndPath: schemaId backend: backend path: path
    <cCall: 'g_settings_new_with_backend_and_path' returning: #{GSettings}
	args: #( #string #cObject #string )>! !

!GSettings class methodsFor: 'C call-outs'!
newFull: schema backend: backend path: path
    <cCall: 'g_settings_new_full' returning: #{GSettings}
	args: #( #cObject #cObject #string )>! !

!GSettings methodsFor: 'C call-outs'!
listChildren
    <cCall: 'g_settings_list_children' returning: #string
	args: #( #self )>! !

!GSettings methodsFor: 'C call-outs'!
listKeys
    <cCall: 'g_settings_list_keys' returning: #string
	args: #( #self )>! !

!GSettings methodsFor: 'C call-outs'!
getRange: key
    <cCall: 'g_settings_get_range' returning: #{GVariant}
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
rangeCheck: key value: value
    <cCall: 'g_settings_range_check' returning: #boolean
	args: #( #self #string #cObject )>! !

!GSettings methodsFor: 'C call-outs'!
setValue: key value: value
    <cCall: 'g_settings_set_value' returning: #boolean
	args: #( #self #string #cObject )>! !

!GSettings methodsFor: 'C call-outs'!
getValue: key
    <cCall: 'g_settings_get_value' returning: #{GVariant}
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
getUserValue: key
    <cCall: 'g_settings_get_user_value' returning: #{GVariant}
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
getDefaultValue: key
    <cCall: 'g_settings_get_default_value' returning: #{GVariant}
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
set: key format: format varargs: varargs
    <cCall: 'g_settings_set' returning: #boolean
	args: #( #self #string #string #variadic )>! !

!GSettings methodsFor: 'C call-outs'!
get: key format: format varargs: varargs
    <cCall: 'g_settings_get' returning: #void
	args: #( #self #string #string #variadic )>! !

!GSettings methodsFor: 'C call-outs'!
reset: key
    <cCall: 'g_settings_reset' returning: #void
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
getInt: key
    <cCall: 'g_settings_get_int' returning: #int
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
setInt: key value: value
    <cCall: 'g_settings_set_int' returning: #boolean
	args: #( #self #string #int )>! !

!GSettings methodsFor: 'C call-outs'!
getUint: key
    <cCall: 'g_settings_get_uint' returning: #int
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
setUint: key value: value
    <cCall: 'g_settings_set_uint' returning: #boolean
	args: #( #self #string #int )>! !

!GSettings methodsFor: 'C call-outs'!
getString: key
    <cCall: 'g_settings_get_string' returning: #string
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
setString: key value: value
    <cCall: 'g_settings_set_string' returning: #boolean
	args: #( #self #string #string )>! !

!GSettings methodsFor: 'C call-outs'!
getBoolean: key
    <cCall: 'g_settings_get_boolean' returning: #boolean
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
setBoolean: key value: value
    <cCall: 'g_settings_set_boolean' returning: #boolean
	args: #( #self #string #boolean )>! !

!GSettings methodsFor: 'C call-outs'!
getDouble: key
    <cCall: 'g_settings_get_double' returning: #double
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
setDouble: key value: value
    <cCall: 'g_settings_set_double' returning: #boolean
	args: #( #self #string #double )>! !

!GSettings methodsFor: 'C call-outs'!
getStrv: key
    <cCall: 'g_settings_get_strv' returning: #string
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
setStrv: key value: value
    <cCall: 'g_settings_set_strv' returning: #boolean
	args: #( #self #string #cObject )>! !

!GSettings methodsFor: 'C call-outs'!
getEnum: key
    <cCall: 'g_settings_get_enum' returning: #int
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
setEnum: key value: value
    <cCall: 'g_settings_set_enum' returning: #boolean
	args: #( #self #string #int )>! !

!GSettings methodsFor: 'C call-outs'!
getFlags: key
    <cCall: 'g_settings_get_flags' returning: #int
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
setFlags: key value: value
    <cCall: 'g_settings_set_flags' returning: #boolean
	args: #( #self #string #int )>! !

!GSettings methodsFor: 'C call-outs'!
getChild: name
    <cCall: 'g_settings_get_child' returning: #{GSettings}
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
isWritable: name
    <cCall: 'g_settings_is_writable' returning: #boolean
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
delay
    <cCall: 'g_settings_delay' returning: #void
	args: #( #self )>! !

!GSettings methodsFor: 'C call-outs'!
apply
    <cCall: 'g_settings_apply' returning: #void
	args: #( #self )>! !

!GSettings methodsFor: 'C call-outs'!
revert
    <cCall: 'g_settings_revert' returning: #void
	args: #( #self )>! !

!GSettings methodsFor: 'C call-outs'!
getHasUnapplied
    <cCall: 'g_settings_get_has_unapplied' returning: #boolean
	args: #( #self )>! !

!GSettings class methodsFor: 'C call-outs'!
sync
    <cCall: 'g_settings_sync' returning: #void
	args: #( )>! !

!GSettings methodsFor: 'C call-outs'!
bind: key object: object property: property flags: flags
    <cCall: 'g_settings_bind' returning: #void
	args: #( #self #string #cObject #string #int )>! !

!GSettings methodsFor: 'C call-outs'!
bindWithMapping: key object: object property: property flags: flags getMapping: getMapping setMapping: setMapping userData: userData destroy: destroy
    <cCall: 'g_settings_bind_with_mapping' returning: #void
	args: #( #self #string #cObject #string #int #int #int #cObject #int )>! !

!GSettings methodsFor: 'C call-outs'!
bindWritable: key object: object property: property inverted: inverted
    <cCall: 'g_settings_bind_writable' returning: #void
	args: #( #self #string #cObject #string #boolean )>! !

!GSettings class methodsFor: 'C call-outs'!
unbind: object property: property
    <cCall: 'g_settings_unbind' returning: #void
	args: #( #cObject #string )>! !

!GSettings methodsFor: 'C call-outs'!
createAction: key
    <cCall: 'g_settings_create_action' returning: #{GAction}
	args: #( #self #string )>! !

!GSettings methodsFor: 'C call-outs'!
getMapped: key mapping: mapping userData: userData
    <cCall: 'g_settings_get_mapped' returning: #cObject
	args: #( #self #string #int #cObject )>! !

!GSimpleAction class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_simple_action_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSimpleAction!

!GSimpleAction class methodsFor: 'C call-outs'!
new: name parameterType: parameterType
    <cCall: 'g_simple_action_new' returning: #{GSimpleAction}
	args: #( #string #cObject )>! !

!GSimpleAction class methodsFor: 'C call-outs'!
newStateful: name parameterType: parameterType state: state
    <cCall: 'g_simple_action_new_stateful' returning: #{GSimpleAction}
	args: #( #string #cObject #cObject )>! !

!GSimpleAction methodsFor: 'C call-outs'!
setEnabled: enabled
    <cCall: 'g_simple_action_set_enabled' returning: #void
	args: #( #self #boolean )>! !

!GSimpleAction methodsFor: 'C call-outs'!
setState: value
    <cCall: 'g_simple_action_set_state' returning: #void
	args: #( #self #cObject )>! !

!GSimpleActionGroup class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_simple_action_group_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSimpleActionGroup!

!GSimpleActionGroup class methodsFor: 'C call-outs'!
new
    <cCall: 'g_simple_action_group_new' returning: #{GSimpleActionGroup}
	args: #( )>! !

!GSimpleActionGroup methodsFor: 'C call-outs'!
lookup: actionName
    <cCall: 'g_simple_action_group_lookup' returning: #{GAction}
	args: #( #self #string )>! !

!GSimpleActionGroup methodsFor: 'C call-outs'!
insert: action
    <cCall: 'g_simple_action_group_insert' returning: #void
	args: #( #self #cObject )>! !

!GSimpleActionGroup methodsFor: 'C call-outs'!
remove: actionName
    <cCall: 'g_simple_action_group_remove' returning: #void
	args: #( #self #string )>! !

!GSimpleActionGroup methodsFor: 'C call-outs'!
addEntries: entries nEntries: nEntries userData: userData
    <cCall: 'g_simple_action_group_add_entries' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GSimpleAsyncResult class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_simple_async_result_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSimpleAsyncResult!

!GSimpleAsyncResult class methodsFor: 'C call-outs'!
new: sourceObject callback: callback userData: userData sourceTag: sourceTag
    <cCall: 'g_simple_async_result_new' returning: #{GSimpleAsyncResult}
	args: #( #cObject #int #cObject #cObject )>! !

!GSimpleAsyncResult class methodsFor: 'C call-outs'!
newError: sourceObject callback: callback userData: userData domain: domain code: code format: format varargs: varargs
    <cCall: 'g_simple_async_result_new_error' returning: #{GSimpleAsyncResult}
	args: #( #cObject #int #cObject #int #int #string #variadic )>! !

!GSimpleAsyncResult class methodsFor: 'C call-outs'!
newFromError: sourceObject callback: callback userData: userData error: error
    <cCall: 'g_simple_async_result_new_from_error' returning: #{GSimpleAsyncResult}
	args: #( #cObject #int #cObject #cObject )>! !

!GSimpleAsyncResult class methodsFor: 'C call-outs'!
newTakeError: sourceObject callback: callback userData: userData error: error
    <cCall: 'g_simple_async_result_new_take_error' returning: #{GSimpleAsyncResult}
	args: #( #cObject #int #cObject #cObject )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
setOpResGpointer: opRes destroyOpRes: destroyOpRes
    <cCall: 'g_simple_async_result_set_op_res_gpointer' returning: #void
	args: #( #self #cObject #int )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
getOpResGpointer
    <cCall: 'g_simple_async_result_get_op_res_gpointer' returning: #cObject
	args: #( #self )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
setOpResGssize: opRes
    <cCall: 'g_simple_async_result_set_op_res_gssize' returning: #void
	args: #( #self #int )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
getOpResGssize
    <cCall: 'g_simple_async_result_get_op_res_gssize' returning: #int
	args: #( #self )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
setOpResGboolean: opRes
    <cCall: 'g_simple_async_result_set_op_res_gboolean' returning: #void
	args: #( #self #boolean )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
getOpResGboolean
    <cCall: 'g_simple_async_result_get_op_res_gboolean' returning: #boolean
	args: #( #self )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
setCheckCancellable: checkCancellable
    <cCall: 'g_simple_async_result_set_check_cancellable' returning: #void
	args: #( #self #cObject )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
getSourceTag
    <cCall: 'g_simple_async_result_get_source_tag' returning: #cObject
	args: #( #self )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
setHandleCancellation: handleCancellation
    <cCall: 'g_simple_async_result_set_handle_cancellation' returning: #void
	args: #( #self #boolean )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
complete
    <cCall: 'g_simple_async_result_complete' returning: #void
	args: #( #self )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
completeInIdle
    <cCall: 'g_simple_async_result_complete_in_idle' returning: #void
	args: #( #self )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
runInThread: func ioPriority: ioPriority cancellable: cancellable
    <cCall: 'g_simple_async_result_run_in_thread' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
setFromError: error
    <cCall: 'g_simple_async_result_set_from_error' returning: #void
	args: #( #self #cObject )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
takeError: error
    <cCall: 'g_simple_async_result_take_error' returning: #void
	args: #( #self #cObject )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
propagateError: dest
    <cCall: 'g_simple_async_result_propagate_error' returning: #boolean
	args: #( #self #cObject )>! !

!GSimpleAsyncResult methodsFor: 'C call-outs'!
setError: domain code: code format: format varargs: varargs
    <cCall: 'g_simple_async_result_set_error' returning: #void
	args: #( #self #int #int #string #variadic )>! !

!GSimpleAsyncResult class methodsFor: 'C call-outs'!
isValid: result source: source sourceTag: sourceTag
    <cCall: 'g_simple_async_result_is_valid' returning: #boolean
	args: #( #cObject #cObject #cObject )>! !

!GSimple class methodsFor: 'C call-outs'!
asyncReportErrorInIdle: object callback: callback userData: userData domain: domain code: code format: format varargs: varargs
    <cCall: 'g_simple_async_report_error_in_idle' returning: #void
	args: #( #cObject #int #cObject #int #int #string #variadic )>! !

!GSimple class methodsFor: 'C call-outs'!
asyncReportGerrorInIdle: object callback: callback userData: userData error: error
    <cCall: 'g_simple_async_report_gerror_in_idle' returning: #void
	args: #( #cObject #int #cObject #cObject )>! !

!GSimple class methodsFor: 'C call-outs'!
asyncReportTakeGerrorInIdle: object callback: callback userData: userData error: error
    <cCall: 'g_simple_async_report_take_gerror_in_idle' returning: #void
	args: #( #cObject #int #cObject #cObject )>! !

!GSimplePermission class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_simple_permission_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSimplePermission!

!GSimplePermission class methodsFor: 'C call-outs'!
new: allowed
    <cCall: 'g_simple_permission_new' returning: #{GSimplePermission}
	args: #( #boolean )>! !

!GSocketClient class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_socket_client_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSocketClient!

!GSocketClient class methodsFor: 'C call-outs'!
new
    <cCall: 'g_socket_client_new' returning: #{GSocketClient}
	args: #( )>! !

!GSocketClient methodsFor: 'C call-outs'!
getFamily
    <cCall: 'g_socket_client_get_family' returning: #int
	args: #( #self )>! !

!GSocketClient methodsFor: 'C call-outs'!
setFamily: family
    <cCall: 'g_socket_client_set_family' returning: #void
	args: #( #self #int )>! !

!GSocketClient methodsFor: 'C call-outs'!
getSocketType
    <cCall: 'g_socket_client_get_socket_type' returning: #int
	args: #( #self )>! !

!GSocketClient methodsFor: 'C call-outs'!
setSocketType: type
    <cCall: 'g_socket_client_set_socket_type' returning: #void
	args: #( #self #int )>! !

!GSocketClient methodsFor: 'C call-outs'!
getProtocol
    <cCall: 'g_socket_client_get_protocol' returning: #int
	args: #( #self )>! !

!GSocketClient methodsFor: 'C call-outs'!
setProtocol: protocol
    <cCall: 'g_socket_client_set_protocol' returning: #void
	args: #( #self #int )>! !

!GSocketClient methodsFor: 'C call-outs'!
getLocalAddress
    <cCall: 'g_socket_client_get_local_address' returning: #{GSocketAddress}
	args: #( #self )>! !

!GSocketClient methodsFor: 'C call-outs'!
setLocalAddress: address
    <cCall: 'g_socket_client_set_local_address' returning: #void
	args: #( #self #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
getTimeout
    <cCall: 'g_socket_client_get_timeout' returning: #int
	args: #( #self )>! !

!GSocketClient methodsFor: 'C call-outs'!
setTimeout: timeout
    <cCall: 'g_socket_client_set_timeout' returning: #void
	args: #( #self #int )>! !

!GSocketClient methodsFor: 'C call-outs'!
getEnableProxy
    <cCall: 'g_socket_client_get_enable_proxy' returning: #boolean
	args: #( #self )>! !

!GSocketClient methodsFor: 'C call-outs'!
setEnableProxy: enable
    <cCall: 'g_socket_client_set_enable_proxy' returning: #void
	args: #( #self #boolean )>! !

!GSocketClient methodsFor: 'C call-outs'!
getTls
    <cCall: 'g_socket_client_get_tls' returning: #boolean
	args: #( #self )>! !

!GSocketClient methodsFor: 'C call-outs'!
setTls: tls
    <cCall: 'g_socket_client_set_tls' returning: #void
	args: #( #self #boolean )>! !

!GSocketClient methodsFor: 'C call-outs'!
getTlsValidationFlags
    <cCall: 'g_socket_client_get_tls_validation_flags' returning: #int
	args: #( #self )>! !

!GSocketClient methodsFor: 'C call-outs'!
setTlsValidationFlags: flags
    <cCall: 'g_socket_client_set_tls_validation_flags' returning: #void
	args: #( #self #int )>! !

!GSocketClient methodsFor: 'C call-outs'!
getProxyResolver
    <cCall: 'g_socket_client_get_proxy_resolver' returning: #{GProxyResolver}
	args: #( #self )>! !

!GSocketClient methodsFor: 'C call-outs'!
setProxyResolver: proxyResolver
    <cCall: 'g_socket_client_set_proxy_resolver' returning: #void
	args: #( #self #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connect: connectable cancellable: cancellable error: error
    <cCall: 'g_socket_client_connect' returning: #{GSocketConnection}
	args: #( #self #cObject #cObject #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectToHost: hostAndPort defaultPort: defaultPort cancellable: cancellable error: error
    <cCall: 'g_socket_client_connect_to_host' returning: #{GSocketConnection}
	args: #( #self #string #int #cObject #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectToService: domain service: service cancellable: cancellable error: error
    <cCall: 'g_socket_client_connect_to_service' returning: #{GSocketConnection}
	args: #( #self #string #string #cObject #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectToUri: uri defaultPort: defaultPort cancellable: cancellable error: error
    <cCall: 'g_socket_client_connect_to_uri' returning: #{GSocketConnection}
	args: #( #self #string #int #cObject #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectAsync: connectable cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_socket_client_connect_async' returning: #void
	args: #( #self #cObject #cObject #int #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectFinish: result error: error
    <cCall: 'g_socket_client_connect_finish' returning: #{GSocketConnection}
	args: #( #self #cObject #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectToHostAsync: hostAndPort defaultPort: defaultPort cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_socket_client_connect_to_host_async' returning: #void
	args: #( #self #string #int #cObject #int #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectToHostFinish: result error: error
    <cCall: 'g_socket_client_connect_to_host_finish' returning: #{GSocketConnection}
	args: #( #self #cObject #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectToServiceAsync: domain service: service cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_socket_client_connect_to_service_async' returning: #void
	args: #( #self #string #string #cObject #int #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectToServiceFinish: result error: error
    <cCall: 'g_socket_client_connect_to_service_finish' returning: #{GSocketConnection}
	args: #( #self #cObject #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectToUriAsync: uri defaultPort: defaultPort cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_socket_client_connect_to_uri_async' returning: #void
	args: #( #self #string #int #cObject #int #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
connectToUriFinish: result error: error
    <cCall: 'g_socket_client_connect_to_uri_finish' returning: #{GSocketConnection}
	args: #( #self #cObject #cObject )>! !

!GSocketClient methodsFor: 'C call-outs'!
addApplicationProxy: protocol
    <cCall: 'g_socket_client_add_application_proxy' returning: #void
	args: #( #self #string )>! !

!GSocketConnectable class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_socket_connectable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSocketConnectable!

!GSocketConnectable methodsFor: 'C call-outs'!
enumerate
    <cCall: 'g_socket_connectable_enumerate' returning: #{GSocketAddressEnumerator}
	args: #( #self )>! !

!GSocketConnectable methodsFor: 'C call-outs'!
proxyEnumerate
    <cCall: 'g_socket_connectable_proxy_enumerate' returning: #{GSocketAddressEnumerator}
	args: #( #self )>! !

!GSocket class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_socket_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSocket!

!GSocket class methodsFor: 'C call-outs'!
new: family type: type protocol: protocol error: error
    <cCall: 'g_socket_new' returning: #{GSocket}
	args: #( #int #int #int #cObject )>! !

!GSocket class methodsFor: 'C call-outs'!
newFromFd: fd error: error
    <cCall: 'g_socket_new_from_fd' returning: #{GSocket}
	args: #( #int #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
getFd
    <cCall: 'g_socket_get_fd' returning: #int
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
getFamily
    <cCall: 'g_socket_get_family' returning: #int
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
getSocketType
    <cCall: 'g_socket_get_socket_type' returning: #int
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
getProtocol
    <cCall: 'g_socket_get_protocol' returning: #int
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
getLocalAddress: error
    <cCall: 'g_socket_get_local_address' returning: #{GSocketAddress}
	args: #( #self #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
getRemoteAddress: error
    <cCall: 'g_socket_get_remote_address' returning: #{GSocketAddress}
	args: #( #self #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
setBlocking: blocking
    <cCall: 'g_socket_set_blocking' returning: #void
	args: #( #self #boolean )>! !

!GSocket methodsFor: 'C call-outs'!
getBlocking
    <cCall: 'g_socket_get_blocking' returning: #boolean
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
setKeepalive: keepalive
    <cCall: 'g_socket_set_keepalive' returning: #void
	args: #( #self #boolean )>! !

!GSocket methodsFor: 'C call-outs'!
getKeepalive
    <cCall: 'g_socket_get_keepalive' returning: #boolean
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
getListenBacklog
    <cCall: 'g_socket_get_listen_backlog' returning: #int
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
setListenBacklog: backlog
    <cCall: 'g_socket_set_listen_backlog' returning: #void
	args: #( #self #int )>! !

!GSocket methodsFor: 'C call-outs'!
getTimeout
    <cCall: 'g_socket_get_timeout' returning: #int
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
setTimeout: timeout
    <cCall: 'g_socket_set_timeout' returning: #void
	args: #( #self #int )>! !

!GSocket methodsFor: 'C call-outs'!
getTtl
    <cCall: 'g_socket_get_ttl' returning: #int
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
setTtl: ttl
    <cCall: 'g_socket_set_ttl' returning: #void
	args: #( #self #int )>! !

!GSocket methodsFor: 'C call-outs'!
getBroadcast
    <cCall: 'g_socket_get_broadcast' returning: #boolean
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
setBroadcast: broadcast
    <cCall: 'g_socket_set_broadcast' returning: #void
	args: #( #self #boolean )>! !

!GSocket methodsFor: 'C call-outs'!
getMulticastLoopback
    <cCall: 'g_socket_get_multicast_loopback' returning: #boolean
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
setMulticastLoopback: loopback
    <cCall: 'g_socket_set_multicast_loopback' returning: #void
	args: #( #self #boolean )>! !

!GSocket methodsFor: 'C call-outs'!
getMulticastTtl
    <cCall: 'g_socket_get_multicast_ttl' returning: #int
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
setMulticastTtl: ttl
    <cCall: 'g_socket_set_multicast_ttl' returning: #void
	args: #( #self #int )>! !

!GSocket methodsFor: 'C call-outs'!
isConnected
    <cCall: 'g_socket_is_connected' returning: #boolean
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
bind: address allowReuse: allowReuse error: error
    <cCall: 'g_socket_bind' returning: #boolean
	args: #( #self #cObject #boolean #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
joinMulticastGroup: group sourceSpecific: sourceSpecific iface: iface error: error
    <cCall: 'g_socket_join_multicast_group' returning: #boolean
	args: #( #self #cObject #boolean #string #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
leaveMulticastGroup: group sourceSpecific: sourceSpecific iface: iface error: error
    <cCall: 'g_socket_leave_multicast_group' returning: #boolean
	args: #( #self #cObject #boolean #string #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
connect: address cancellable: cancellable error: error
    <cCall: 'g_socket_connect' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
checkConnectResult: error
    <cCall: 'g_socket_check_connect_result' returning: #boolean
	args: #( #self #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
getAvailableBytes
    <cCall: 'g_socket_get_available_bytes' returning: #int
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
conditionCheck: condition
    <cCall: 'g_socket_condition_check' returning: #int
	args: #( #self #int )>! !

!GSocket methodsFor: 'C call-outs'!
conditionWait: condition cancellable: cancellable error: error
    <cCall: 'g_socket_condition_wait' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
conditionTimedWait: condition timeout: timeout cancellable: cancellable error: error
    <cCall: 'g_socket_condition_timed_wait' returning: #boolean
	args: #( #self #int #int #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
accept: cancellable error: error
    <cCall: 'g_socket_accept' returning: #{GSocket}
	args: #( #self #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
listen: error
    <cCall: 'g_socket_listen' returning: #boolean
	args: #( #self #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
receive: buffer size: size cancellable: cancellable error: error
    <cCall: 'g_socket_receive' returning: #int
	args: #( #self #string #int #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
receiveFrom: address buffer: buffer size: size cancellable: cancellable error: error
    <cCall: 'g_socket_receive_from' returning: #int
	args: #( #self #cObject #string #int #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
send: buffer size: size cancellable: cancellable error: error
    <cCall: 'g_socket_send' returning: #int
	args: #( #self #string #int #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
sendTo: address buffer: buffer size: size cancellable: cancellable error: error
    <cCall: 'g_socket_send_to' returning: #int
	args: #( #self #cObject #string #int #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
receiveMessage: address vectors: vectors numVectors: numVectors messages: messages numMessages: numMessages flags: flags cancellable: cancellable error: error
    <cCall: 'g_socket_receive_message' returning: #int
	args: #( #self #cObject #cObject #int #cObject #cObject #cObject #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
sendMessage: address vectors: vectors numVectors: numVectors messages: messages numMessages: numMessages flags: flags cancellable: cancellable error: error
    <cCall: 'g_socket_send_message' returning: #int
	args: #( #self #cObject #cObject #int #cObject #int #int #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
close: error
    <cCall: 'g_socket_close' returning: #boolean
	args: #( #self #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
shutdown: shutdownRead shutdownWrite: shutdownWrite error: error
    <cCall: 'g_socket_shutdown' returning: #boolean
	args: #( #self #boolean #boolean #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
isClosed
    <cCall: 'g_socket_is_closed' returning: #boolean
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
speaksIpv4
    <cCall: 'g_socket_speaks_ipv4' returning: #boolean
	args: #( #self )>! !

!GSocket methodsFor: 'C call-outs'!
getCredentials: error
    <cCall: 'g_socket_get_credentials' returning: #{GCredentials}
	args: #( #self #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
receiveWithBlocking: buffer size: size blocking: blocking cancellable: cancellable error: error
    <cCall: 'g_socket_receive_with_blocking' returning: #int
	args: #( #self #string #int #boolean #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
sendWithBlocking: buffer size: size blocking: blocking cancellable: cancellable error: error
    <cCall: 'g_socket_send_with_blocking' returning: #int
	args: #( #self #string #int #boolean #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
getOption: level optname: optname value: value error: error
    <cCall: 'g_socket_get_option' returning: #boolean
	args: #( #self #int #int #cObject #cObject )>! !

!GSocket methodsFor: 'C call-outs'!
setOption: level optname: optname value: value error: error
    <cCall: 'g_socket_set_option' returning: #boolean
	args: #( #self #int #int #int #cObject )>! !

!GSocketConnection class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_socket_connection_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSocketConnection!

!GSocketConnection methodsFor: 'C call-outs'!
isConnected
    <cCall: 'g_socket_connection_is_connected' returning: #boolean
	args: #( #self )>! !

!GSocketConnection methodsFor: 'C call-outs'!
connect: address cancellable: cancellable error: error
    <cCall: 'g_socket_connection_connect' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GSocketConnection methodsFor: 'C call-outs'!
connectAsync: address cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_socket_connection_connect_async' returning: #void
	args: #( #self #cObject #cObject #int #cObject )>! !

!GSocketConnection methodsFor: 'C call-outs'!
connectFinish: result error: error
    <cCall: 'g_socket_connection_connect_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GSocketConnection methodsFor: 'C call-outs'!
getSocket
    <cCall: 'g_socket_connection_get_socket' returning: #{GSocket}
	args: #( #self )>! !

!GSocketConnection methodsFor: 'C call-outs'!
getLocalAddress: error
    <cCall: 'g_socket_connection_get_local_address' returning: #{GSocketAddress}
	args: #( #self #cObject )>! !

!GSocketConnection methodsFor: 'C call-outs'!
getRemoteAddress: error
    <cCall: 'g_socket_connection_get_remote_address' returning: #{GSocketAddress}
	args: #( #self #cObject )>! !

!GSocketConnection class methodsFor: 'C call-outs'!
factoryRegisterType: gType family: family type: type protocol: protocol
    <cCall: 'g_socket_connection_factory_register_type' returning: #void
	args: #( #long #int #int #int )>! !

!GSocketConnection class methodsFor: 'C call-outs'!
factoryLookupType: family type: type protocolId: protocolId
    <cCall: 'g_socket_connection_factory_lookup_type' returning: #long
	args: #( #int #int #int )>! !

!GSocketConnection methodsFor: 'C call-outs'!
factoryCreateConnection
    <cCall: 'g_socket_connection_factory_create_connection' returning: #{GSocketConnection}
	args: #( #self )>! !

!GSocketControlMessage class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_socket_control_message_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSocketControlMessage!

!GSocketControlMessage methodsFor: 'C call-outs'!
getSize
    <cCall: 'g_socket_control_message_get_size' returning: #int
	args: #( #self )>! !

!GSocketControlMessage methodsFor: 'C call-outs'!
getLevel
    <cCall: 'g_socket_control_message_get_level' returning: #int
	args: #( #self )>! !

!GSocketControlMessage methodsFor: 'C call-outs'!
getMsgType
    <cCall: 'g_socket_control_message_get_msg_type' returning: #int
	args: #( #self )>! !

!GSocketControlMessage methodsFor: 'C call-outs'!
serialize: data
    <cCall: 'g_socket_control_message_serialize' returning: #void
	args: #( #self #cObject )>! !

!GSocketControlMessage class methodsFor: 'C call-outs'!
deserialize: level type: type size: size data: data
    <cCall: 'g_socket_control_message_deserialize' returning: #{GSocketControlMessage}
	args: #( #int #int #int #cObject )>! !

!GSocketListener class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_socket_listener_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSocketListener!

!GSocketListener class methodsFor: 'C call-outs'!
new
    <cCall: 'g_socket_listener_new' returning: #{GSocketListener}
	args: #( )>! !

!GSocketListener methodsFor: 'C call-outs'!
setBacklog: listenBacklog
    <cCall: 'g_socket_listener_set_backlog' returning: #void
	args: #( #self #int )>! !

!GSocketListener methodsFor: 'C call-outs'!
addSocket: socket sourceObject: sourceObject error: error
    <cCall: 'g_socket_listener_add_socket' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GSocketListener methodsFor: 'C call-outs'!
addAddress: address type: type protocol: protocol sourceObject: sourceObject effectiveAddress: effectiveAddress error: error
    <cCall: 'g_socket_listener_add_address' returning: #boolean
	args: #( #self #cObject #int #int #cObject #cObject #cObject )>! !

!GSocketListener methodsFor: 'C call-outs'!
addInetPort: port sourceObject: sourceObject error: error
    <cCall: 'g_socket_listener_add_inet_port' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GSocketListener methodsFor: 'C call-outs'!
addAnyInetPort: sourceObject error: error
    <cCall: 'g_socket_listener_add_any_inet_port' returning: #int
	args: #( #self #cObject #cObject )>! !

!GSocketListener methodsFor: 'C call-outs'!
acceptSocket: sourceObject cancellable: cancellable error: error
    <cCall: 'g_socket_listener_accept_socket' returning: #{GSocket}
	args: #( #self #cObject #cObject #cObject )>! !

!GSocketListener methodsFor: 'C call-outs'!
acceptSocketAsync: cancellable callback: callback userData: userData
    <cCall: 'g_socket_listener_accept_socket_async' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GSocketListener methodsFor: 'C call-outs'!
acceptSocketFinish: result sourceObject: sourceObject error: error
    <cCall: 'g_socket_listener_accept_socket_finish' returning: #{GSocket}
	args: #( #self #cObject #cObject #cObject )>! !

!GSocketListener methodsFor: 'C call-outs'!
accept: sourceObject cancellable: cancellable error: error
    <cCall: 'g_socket_listener_accept' returning: #{GSocketConnection}
	args: #( #self #cObject #cObject #cObject )>! !

!GSocketListener methodsFor: 'C call-outs'!
acceptAsync: cancellable callback: callback userData: userData
    <cCall: 'g_socket_listener_accept_async' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GSocketListener methodsFor: 'C call-outs'!
acceptFinish: result sourceObject: sourceObject error: error
    <cCall: 'g_socket_listener_accept_finish' returning: #{GSocketConnection}
	args: #( #self #cObject #cObject #cObject )>! !

!GSocketListener methodsFor: 'C call-outs'!
close
    <cCall: 'g_socket_listener_close' returning: #void
	args: #( #self )>! !

!GSocketService class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_socket_service_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSocketService!

!GSocketService class methodsFor: 'C call-outs'!
new
    <cCall: 'g_socket_service_new' returning: #{GSocketService}
	args: #( )>! !

!GSocketService methodsFor: 'C call-outs'!
start
    <cCall: 'g_socket_service_start' returning: #void
	args: #( #self )>! !

!GSocketService methodsFor: 'C call-outs'!
stop
    <cCall: 'g_socket_service_stop' returning: #void
	args: #( #self )>! !

!GSocketService methodsFor: 'C call-outs'!
isActive
    <cCall: 'g_socket_service_is_active' returning: #boolean
	args: #( #self )>! !

!GSrvTarget class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_srv_target_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSrvTarget!

!GSrvTarget class methodsFor: 'C call-outs'!
new: hostname port: port priority: priority weight: weight
    <cCall: 'g_srv_target_new' returning: #{GSrvTarget}
	args: #( #string #int #int #int )>! !

!GSrvTarget methodsFor: 'C call-outs'!
copy
    <cCall: 'g_srv_target_copy' returning: #{GSrvTarget}
	args: #( #self )>! !

!GSrvTarget methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'g_srv_target_free' returning: #void
	args: #( #self )>! !

!GSrvTarget methodsFor: 'C call-outs'!
getPort
    <cCall: 'g_srv_target_get_port' returning: #int
	args: #( #self )>! !

!GSrvTarget methodsFor: 'C call-outs'!
getPriority
    <cCall: 'g_srv_target_get_priority' returning: #int
	args: #( #self )>! !

!GSrvTarget methodsFor: 'C call-outs'!
getWeight
    <cCall: 'g_srv_target_get_weight' returning: #int
	args: #( #self )>! !

!GSrvTarget class methodsFor: 'C call-outs'!
listSort: targets
    <cCall: 'g_srv_target_list_sort' returning: #{GList}
	args: #( #cObject )>! !

!GSimpleProxyResolver class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_simple_proxy_resolver_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSimpleProxyResolver!

!GSimpleProxyResolver class methodsFor: 'C call-outs'!
new: defaultProxy ignoreHosts: ignoreHosts
    <cCall: 'g_simple_proxy_resolver_new' returning: #{GSimpleProxyResolver}
	args: #( #string #cObject )>! !

!GSimpleProxyResolver methodsFor: 'C call-outs'!
setDefaultProxy: defaultProxy
    <cCall: 'g_simple_proxy_resolver_set_default_proxy' returning: #void
	args: #( #self #string )>! !

!GSimpleProxyResolver methodsFor: 'C call-outs'!
setIgnoreHosts: ignoreHosts
    <cCall: 'g_simple_proxy_resolver_set_ignore_hosts' returning: #void
	args: #( #self #cObject )>! !

!GSimpleProxyResolver methodsFor: 'C call-outs'!
setUriProxy: uriScheme proxy: proxy
    <cCall: 'g_simple_proxy_resolver_set_uri_proxy' returning: #void
	args: #( #self #string #string )>! !

!GTask class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_task_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTask!

!GTask class methodsFor: 'C call-outs'!
new: sourceObject cancellable: cancellable callback: callback callbackData: callbackData
    <cCall: 'g_task_new' returning: #{GTask}
	args: #( #cObject #cObject #int #cObject )>! !

!GTask class methodsFor: 'C call-outs'!
reportError: sourceObject callback: callback callbackData: callbackData sourceTag: sourceTag error: error
    <cCall: 'g_task_report_error' returning: #void
	args: #( #cObject #int #cObject #cObject #cObject )>! !

!GTask class methodsFor: 'C call-outs'!
reportNewError: sourceObject callback: callback callbackData: callbackData sourceTag: sourceTag domain: domain code: code format: format varargs: varargs
    <cCall: 'g_task_report_new_error' returning: #void
	args: #( #cObject #int #cObject #cObject #int #int #string #variadic )>! !

!GTask methodsFor: 'C call-outs'!
setTaskData: taskData taskDataDestroy: taskDataDestroy
    <cCall: 'g_task_set_task_data' returning: #void
	args: #( #self #cObject #int )>! !

!GTask methodsFor: 'C call-outs'!
setPriority: priority
    <cCall: 'g_task_set_priority' returning: #void
	args: #( #self #int )>! !

!GTask methodsFor: 'C call-outs'!
setCheckCancellable: checkCancellable
    <cCall: 'g_task_set_check_cancellable' returning: #void
	args: #( #self #boolean )>! !

!GTask methodsFor: 'C call-outs'!
setSourceTag: sourceTag
    <cCall: 'g_task_set_source_tag' returning: #void
	args: #( #self #cObject )>! !

!GTask methodsFor: 'C call-outs'!
getSourceObject
    <cCall: 'g_task_get_source_object' returning: #cObject
	args: #( #self )>! !

!GTask methodsFor: 'C call-outs'!
getTaskData
    <cCall: 'g_task_get_task_data' returning: #cObject
	args: #( #self )>! !

!GTask methodsFor: 'C call-outs'!
getPriority
    <cCall: 'g_task_get_priority' returning: #int
	args: #( #self )>! !

!GTask methodsFor: 'C call-outs'!
getContext
    <cCall: 'g_task_get_context' returning: #{GMainContext}
	args: #( #self )>! !

!GTask methodsFor: 'C call-outs'!
getCancellable
    <cCall: 'g_task_get_cancellable' returning: #{GCancellable}
	args: #( #self )>! !

!GTask methodsFor: 'C call-outs'!
getCheckCancellable
    <cCall: 'g_task_get_check_cancellable' returning: #boolean
	args: #( #self )>! !

!GTask methodsFor: 'C call-outs'!
getSourceTag
    <cCall: 'g_task_get_source_tag' returning: #cObject
	args: #( #self )>! !

!GTask class methodsFor: 'C call-outs'!
isValid: result sourceObject: sourceObject
    <cCall: 'g_task_is_valid' returning: #boolean
	args: #( #cObject #cObject )>! !

!GTask methodsFor: 'C call-outs'!
runInThread: taskFunc
    <cCall: 'g_task_run_in_thread' returning: #void
	args: #( #self #cObject )>! !

!GTask methodsFor: 'C call-outs'!
runInThreadSync: taskFunc
    <cCall: 'g_task_run_in_thread_sync' returning: #void
	args: #( #self #cObject )>! !

!GTask methodsFor: 'C call-outs'!
setReturnOnCancel: returnOnCancel
    <cCall: 'g_task_set_return_on_cancel' returning: #boolean
	args: #( #self #boolean )>! !

!GTask methodsFor: 'C call-outs'!
getReturnOnCancel
    <cCall: 'g_task_get_return_on_cancel' returning: #boolean
	args: #( #self )>! !

!GTask methodsFor: 'C call-outs'!
returnPointer: result resultDestroy: resultDestroy
    <cCall: 'g_task_return_pointer' returning: #void
	args: #( #self #cObject #int )>! !

!GTask methodsFor: 'C call-outs'!
returnBoolean: result
    <cCall: 'g_task_return_boolean' returning: #void
	args: #( #self #boolean )>! !

!GTask methodsFor: 'C call-outs'!
returnInt: result
    <cCall: 'g_task_return_int' returning: #void
	args: #( #self #int )>! !

!GTask methodsFor: 'C call-outs'!
returnError: error
    <cCall: 'g_task_return_error' returning: #void
	args: #( #self #cObject )>! !

!GTask methodsFor: 'C call-outs'!
returnNewError: domain code: code format: format varargs: varargs
    <cCall: 'g_task_return_new_error' returning: #void
	args: #( #self #int #int #string #variadic )>! !

!GTask methodsFor: 'C call-outs'!
returnErrorIfCancelled
    <cCall: 'g_task_return_error_if_cancelled' returning: #boolean
	args: #( #self )>! !

!GTask methodsFor: 'C call-outs'!
propagatePointer: error
    <cCall: 'g_task_propagate_pointer' returning: #cObject
	args: #( #self #cObject )>! !

!GTask methodsFor: 'C call-outs'!
propagateBoolean: error
    <cCall: 'g_task_propagate_boolean' returning: #boolean
	args: #( #self #cObject )>! !

!GTask methodsFor: 'C call-outs'!
propagateInt: error
    <cCall: 'g_task_propagate_int' returning: #int
	args: #( #self #cObject )>! !

!GTask methodsFor: 'C call-outs'!
hadError
    <cCall: 'g_task_had_error' returning: #boolean
	args: #( #self )>! !

!GSubprocess class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_subprocess_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSubprocess!

!GSubprocess class methodsFor: 'C call-outs'!
new: flags error: error argv0: argv0 varargs: varargs
    <cCall: 'g_subprocess_new' returning: #{GSubprocess}
	args: #( #int #cObject #string #variadic )>! !

!GSubprocess class methodsFor: 'C call-outs'!
newv: argv flags: flags error: error
    <cCall: 'g_subprocess_newv' returning: #{GSubprocess}
	args: #( #cObject #int #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
getStdinPipe
    <cCall: 'g_subprocess_get_stdin_pipe' returning: #{GOutputStream}
	args: #( #self )>! !

!GSubprocess methodsFor: 'C call-outs'!
getStdoutPipe
    <cCall: 'g_subprocess_get_stdout_pipe' returning: #{GInputStream}
	args: #( #self )>! !

!GSubprocess methodsFor: 'C call-outs'!
getStderrPipe
    <cCall: 'g_subprocess_get_stderr_pipe' returning: #{GInputStream}
	args: #( #self )>! !

!GSubprocess methodsFor: 'C call-outs'!
sendSignal: signalNum
    <cCall: 'g_subprocess_send_signal' returning: #void
	args: #( #self #int )>! !

!GSubprocess methodsFor: 'C call-outs'!
forceExit
    <cCall: 'g_subprocess_force_exit' returning: #void
	args: #( #self )>! !

!GSubprocess methodsFor: 'C call-outs'!
wait: cancellable error: error
    <cCall: 'g_subprocess_wait' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
waitAsync: cancellable callback: callback userData: userData
    <cCall: 'g_subprocess_wait_async' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
waitFinish: result error: error
    <cCall: 'g_subprocess_wait_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
waitCheck: cancellable error: error
    <cCall: 'g_subprocess_wait_check' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
waitCheckAsync: cancellable callback: callback userData: userData
    <cCall: 'g_subprocess_wait_check_async' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
waitCheckFinish: result error: error
    <cCall: 'g_subprocess_wait_check_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
getStatus
    <cCall: 'g_subprocess_get_status' returning: #int
	args: #( #self )>! !

!GSubprocess methodsFor: 'C call-outs'!
getSuccessful
    <cCall: 'g_subprocess_get_successful' returning: #boolean
	args: #( #self )>! !

!GSubprocess methodsFor: 'C call-outs'!
getIfExited
    <cCall: 'g_subprocess_get_if_exited' returning: #boolean
	args: #( #self )>! !

!GSubprocess methodsFor: 'C call-outs'!
getExitStatus
    <cCall: 'g_subprocess_get_exit_status' returning: #int
	args: #( #self )>! !

!GSubprocess methodsFor: 'C call-outs'!
getIfSignaled
    <cCall: 'g_subprocess_get_if_signaled' returning: #boolean
	args: #( #self )>! !

!GSubprocess methodsFor: 'C call-outs'!
getTermSig
    <cCall: 'g_subprocess_get_term_sig' returning: #int
	args: #( #self )>! !

!GSubprocess methodsFor: 'C call-outs'!
communicate: stdinBuf cancellable: cancellable stdoutBuf: stdoutBuf stderrBuf: stderrBuf error: error
    <cCall: 'g_subprocess_communicate' returning: #boolean
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
communicateAsync: stdinBuf cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_subprocess_communicate_async' returning: #void
	args: #( #self #cObject #cObject #int #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
communicateFinish: result stdoutBuf: stdoutBuf stderrBuf: stderrBuf error: error
    <cCall: 'g_subprocess_communicate_finish' returning: #boolean
	args: #( #self #cObject #cObject #cObject #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
communicateUtf8: stdinBuf cancellable: cancellable stdoutBuf: stdoutBuf stderrBuf: stderrBuf error: error
    <cCall: 'g_subprocess_communicate_utf8' returning: #boolean
	args: #( #self #string #cObject #cObject #cObject #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
communicateUtf8Async: stdinBuf cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_subprocess_communicate_utf8_async' returning: #void
	args: #( #self #string #cObject #int #cObject )>! !

!GSubprocess methodsFor: 'C call-outs'!
communicateUtf8Finish: result stdoutBuf: stdoutBuf stderrBuf: stderrBuf error: error
    <cCall: 'g_subprocess_communicate_utf8_finish' returning: #boolean
	args: #( #self #cObject #cObject #cObject #cObject )>! !

!GSubprocessLauncher class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_subprocess_launcher_get_type' returning: #long
	args: #( )>! !

GLib registerType: GSubprocessLauncher!

!GSubprocessLauncher class methodsFor: 'C call-outs'!
new: flags
    <cCall: 'g_subprocess_launcher_new' returning: #{GSubprocessLauncher}
	args: #( #int )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
spawn: error argv0: argv0 varargs: varargs
    <cCall: 'g_subprocess_launcher_spawn' returning: #{GSubprocess}
	args: #( #self #cObject #string #variadic )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
spawnv: argv error: error
    <cCall: 'g_subprocess_launcher_spawnv' returning: #{GSubprocess}
	args: #( #self #cObject #cObject )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
setEnviron: env
    <cCall: 'g_subprocess_launcher_set_environ' returning: #void
	args: #( #self #cObject )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
setenv: variable value: value overwrite: overwrite
    <cCall: 'g_subprocess_launcher_setenv' returning: #void
	args: #( #self #string #string #boolean )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
unsetenv: variable
    <cCall: 'g_subprocess_launcher_unsetenv' returning: #void
	args: #( #self #string )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
setCwd: cwd
    <cCall: 'g_subprocess_launcher_set_cwd' returning: #void
	args: #( #self #string )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
setFlags: flags
    <cCall: 'g_subprocess_launcher_set_flags' returning: #void
	args: #( #self #int )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
setStdinFilePath: path
    <cCall: 'g_subprocess_launcher_set_stdin_file_path' returning: #void
	args: #( #self #string )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
takeStdinFd: fd
    <cCall: 'g_subprocess_launcher_take_stdin_fd' returning: #void
	args: #( #self #int )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
setStdoutFilePath: path
    <cCall: 'g_subprocess_launcher_set_stdout_file_path' returning: #void
	args: #( #self #string )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
takeStdoutFd: fd
    <cCall: 'g_subprocess_launcher_take_stdout_fd' returning: #void
	args: #( #self #int )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
setStderrFilePath: path
    <cCall: 'g_subprocess_launcher_set_stderr_file_path' returning: #void
	args: #( #self #string )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
takeStderrFd: fd
    <cCall: 'g_subprocess_launcher_take_stderr_fd' returning: #void
	args: #( #self #int )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
takeFd: sourceFd targetFd: targetFd
    <cCall: 'g_subprocess_launcher_take_fd' returning: #void
	args: #( #self #int #int )>! !

!GSubprocessLauncher methodsFor: 'C call-outs'!
setChildSetup: childSetup userData: userData destroyNotify: destroyNotify
    <cCall: 'g_subprocess_launcher_set_child_setup' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GTcpConnection class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tcp_connection_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTcpConnection!

!GTcpConnection methodsFor: 'C call-outs'!
setGracefulDisconnect: gracefulDisconnect
    <cCall: 'g_tcp_connection_set_graceful_disconnect' returning: #void
	args: #( #self #boolean )>! !

!GTcpConnection methodsFor: 'C call-outs'!
getGracefulDisconnect
    <cCall: 'g_tcp_connection_get_graceful_disconnect' returning: #boolean
	args: #( #self )>! !

!GTcpWrapperConnection class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tcp_wrapper_connection_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTcpWrapperConnection!

!GTcpWrapperConnection class methodsFor: 'C call-outs'!
new: baseIoStream socket: socket
    <cCall: 'g_tcp_wrapper_connection_new' returning: #{GTcpWrapperConnection}
	args: #( #cObject #cObject )>! !

!GTcpWrapperConnection methodsFor: 'C call-outs'!
getBaseIoStream
    <cCall: 'g_tcp_wrapper_connection_get_base_io_stream' returning: #{GIOStream}
	args: #( #self )>! !

!GTestDBus class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_test_dbus_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTestDBus!

!GTestDBus class methodsFor: 'C call-outs'!
new: flags
    <cCall: 'g_test_dbus_new' returning: #{GTestDBus}
	args: #( #int )>! !

!GTestDBus methodsFor: 'C call-outs'!
getFlags
    <cCall: 'g_test_dbus_get_flags' returning: #int
	args: #( #self )>! !

!GTestDBus methodsFor: 'C call-outs'!
addServiceDir: path
    <cCall: 'g_test_dbus_add_service_dir' returning: #void
	args: #( #self #string )>! !

!GTestDBus methodsFor: 'C call-outs'!
up
    <cCall: 'g_test_dbus_up' returning: #void
	args: #( #self )>! !

!GTestDBus methodsFor: 'C call-outs'!
stop
    <cCall: 'g_test_dbus_stop' returning: #void
	args: #( #self )>! !

!GTestDBus methodsFor: 'C call-outs'!
down
    <cCall: 'g_test_dbus_down' returning: #void
	args: #( #self )>! !

!GTestDBus class methodsFor: 'C call-outs'!
unset
    <cCall: 'g_test_dbus_unset' returning: #void
	args: #( )>! !

!GThemedIcon class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_themed_icon_get_type' returning: #long
	args: #( )>! !

GLib registerType: GThemedIcon!

!GThemedIcon class methodsFor: 'C call-outs'!
new: iconname
    <cCall: 'g_themed_icon_new' returning: #{GThemedIcon}
	args: #( #string )>! !

!GThemedIcon class methodsFor: 'C call-outs'!
newWithDefaultFallbacks: iconname
    <cCall: 'g_themed_icon_new_with_default_fallbacks' returning: #{GThemedIcon}
	args: #( #string )>! !

!GThemedIcon class methodsFor: 'C call-outs'!
newFromNames: iconnames len: len
    <cCall: 'g_themed_icon_new_from_names' returning: #{GThemedIcon}
	args: #( #cObject #int )>! !

!GThemedIcon methodsFor: 'C call-outs'!
prependName: iconname
    <cCall: 'g_themed_icon_prepend_name' returning: #void
	args: #( #self #string )>! !

!GThemedIcon methodsFor: 'C call-outs'!
appendName: iconname
    <cCall: 'g_themed_icon_append_name' returning: #void
	args: #( #self #string )>! !

!GThreadedSocketService class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_threaded_socket_service_get_type' returning: #long
	args: #( )>! !

GLib registerType: GThreadedSocketService!

!GThreadedSocketService class methodsFor: 'C call-outs'!
new: maxThreads
    <cCall: 'g_threaded_socket_service_new' returning: #{GThreadedSocketService}
	args: #( #int )>! !

!GTlsBackend class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tls_backend_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTlsBackend!

!GTlsBackend class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'g_tls_backend_get_default' returning: #{GTlsBackend}
	args: #( )>! !

!GTlsBackend methodsFor: 'C call-outs'!
getDefaultDatabase
    <cCall: 'g_tls_backend_get_default_database' returning: #{GTlsDatabase}
	args: #( #self )>! !

!GTlsBackend methodsFor: 'C call-outs'!
supportsTls
    <cCall: 'g_tls_backend_supports_tls' returning: #boolean
	args: #( #self )>! !

!GTlsBackend methodsFor: 'C call-outs'!
getCertificateType
    <cCall: 'g_tls_backend_get_certificate_type' returning: #long
	args: #( #self )>! !

!GTlsBackend methodsFor: 'C call-outs'!
getClientConnectionType
    <cCall: 'g_tls_backend_get_client_connection_type' returning: #long
	args: #( #self )>! !

!GTlsBackend methodsFor: 'C call-outs'!
getServerConnectionType
    <cCall: 'g_tls_backend_get_server_connection_type' returning: #long
	args: #( #self )>! !

!GTlsBackend methodsFor: 'C call-outs'!
getFileDatabaseType
    <cCall: 'g_tls_backend_get_file_database_type' returning: #long
	args: #( #self )>! !

!GTlsCertificate class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tls_certificate_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTlsCertificate!

!GTlsCertificate class methodsFor: 'C call-outs'!
newFromPem: data length: length error: error
    <cCall: 'g_tls_certificate_new_from_pem' returning: #{GTlsCertificate}
	args: #( #string #int #cObject )>! !

!GTlsCertificate class methodsFor: 'C call-outs'!
newFromFile: file error: error
    <cCall: 'g_tls_certificate_new_from_file' returning: #{GTlsCertificate}
	args: #( #string #cObject )>! !

!GTlsCertificate class methodsFor: 'C call-outs'!
newFromFiles: certFile keyFile: keyFile error: error
    <cCall: 'g_tls_certificate_new_from_files' returning: #{GTlsCertificate}
	args: #( #string #string #cObject )>! !

!GTlsCertificate class methodsFor: 'C call-outs'!
listNewFromFile: file error: error
    <cCall: 'g_tls_certificate_list_new_from_file' returning: #{GList}
	args: #( #string #cObject )>! !

!GTlsCertificate methodsFor: 'C call-outs'!
getIssuer
    <cCall: 'g_tls_certificate_get_issuer' returning: #{GTlsCertificate}
	args: #( #self )>! !

!GTlsCertificate methodsFor: 'C call-outs'!
verify: identity trustedCa: trustedCa
    <cCall: 'g_tls_certificate_verify' returning: #int
	args: #( #self #cObject #cObject )>! !

!GTlsCertificate methodsFor: 'C call-outs'!
isSame: certTwo
    <cCall: 'g_tls_certificate_is_same' returning: #boolean
	args: #( #self #cObject )>! !

!GTlsConnection class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tls_connection_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTlsConnection!

!GTlsConnection methodsFor: 'C call-outs'!
setUseSystemCertdb: useSystemCertdb
    <cCall: 'g_tls_connection_set_use_system_certdb' returning: #void
	args: #( #self #boolean )>! !

!GTlsConnection methodsFor: 'C call-outs'!
getUseSystemCertdb
    <cCall: 'g_tls_connection_get_use_system_certdb' returning: #boolean
	args: #( #self )>! !

!GTlsConnection methodsFor: 'C call-outs'!
setDatabase: database
    <cCall: 'g_tls_connection_set_database' returning: #void
	args: #( #self #cObject )>! !

!GTlsConnection methodsFor: 'C call-outs'!
getDatabase
    <cCall: 'g_tls_connection_get_database' returning: #{GTlsDatabase}
	args: #( #self )>! !

!GTlsConnection methodsFor: 'C call-outs'!
setCertificate: certificate
    <cCall: 'g_tls_connection_set_certificate' returning: #void
	args: #( #self #cObject )>! !

!GTlsConnection methodsFor: 'C call-outs'!
getCertificate
    <cCall: 'g_tls_connection_get_certificate' returning: #{GTlsCertificate}
	args: #( #self )>! !

!GTlsConnection methodsFor: 'C call-outs'!
setInteraction: interaction
    <cCall: 'g_tls_connection_set_interaction' returning: #void
	args: #( #self #cObject )>! !

!GTlsConnection methodsFor: 'C call-outs'!
getInteraction
    <cCall: 'g_tls_connection_get_interaction' returning: #{GTlsInteraction}
	args: #( #self )>! !

!GTlsConnection methodsFor: 'C call-outs'!
getPeerCertificate
    <cCall: 'g_tls_connection_get_peer_certificate' returning: #{GTlsCertificate}
	args: #( #self )>! !

!GTlsConnection methodsFor: 'C call-outs'!
getPeerCertificateErrors
    <cCall: 'g_tls_connection_get_peer_certificate_errors' returning: #int
	args: #( #self )>! !

!GTlsConnection methodsFor: 'C call-outs'!
setRequireCloseNotify: requireCloseNotify
    <cCall: 'g_tls_connection_set_require_close_notify' returning: #void
	args: #( #self #boolean )>! !

!GTlsConnection methodsFor: 'C call-outs'!
getRequireCloseNotify
    <cCall: 'g_tls_connection_get_require_close_notify' returning: #boolean
	args: #( #self )>! !

!GTlsConnection methodsFor: 'C call-outs'!
setRehandshakeMode: mode
    <cCall: 'g_tls_connection_set_rehandshake_mode' returning: #void
	args: #( #self #int )>! !

!GTlsConnection methodsFor: 'C call-outs'!
getRehandshakeMode
    <cCall: 'g_tls_connection_get_rehandshake_mode' returning: #int
	args: #( #self )>! !

!GTlsConnection methodsFor: 'C call-outs'!
handshake: cancellable error: error
    <cCall: 'g_tls_connection_handshake' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GTlsConnection methodsFor: 'C call-outs'!
handshakeAsync: ioPriority cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_tls_connection_handshake_async' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GTlsConnection methodsFor: 'C call-outs'!
handshakeFinish: result error: error
    <cCall: 'g_tls_connection_handshake_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GTlsConnection methodsFor: 'C call-outs'!
emitAcceptCertificate: peerCert errors: errors
    <cCall: 'g_tls_connection_emit_accept_certificate' returning: #boolean
	args: #( #self #cObject #int )>! !

!GTlsClientConnection class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tls_client_connection_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTlsClientConnection!

!GTlsClientConnection class methodsFor: 'C call-outs'!
new: baseIoStream serverIdentity: serverIdentity error: error
    <cCall: 'g_tls_client_connection_new' returning: #{GTlsClientConnection}
	args: #( #cObject #cObject #cObject )>! !

!GTlsClientConnection methodsFor: 'C call-outs'!
getValidationFlags
    <cCall: 'g_tls_client_connection_get_validation_flags' returning: #int
	args: #( #self )>! !

!GTlsClientConnection methodsFor: 'C call-outs'!
setValidationFlags: flags
    <cCall: 'g_tls_client_connection_set_validation_flags' returning: #void
	args: #( #self #int )>! !

!GTlsClientConnection methodsFor: 'C call-outs'!
getServerIdentity
    <cCall: 'g_tls_client_connection_get_server_identity' returning: #{GSocketConnectable}
	args: #( #self )>! !

!GTlsClientConnection methodsFor: 'C call-outs'!
setServerIdentity: identity
    <cCall: 'g_tls_client_connection_set_server_identity' returning: #void
	args: #( #self #cObject )>! !

!GTlsClientConnection methodsFor: 'C call-outs'!
getUseSsl3
    <cCall: 'g_tls_client_connection_get_use_ssl3' returning: #boolean
	args: #( #self )>! !

!GTlsClientConnection methodsFor: 'C call-outs'!
setUseSsl3: useSsl3
    <cCall: 'g_tls_client_connection_set_use_ssl3' returning: #void
	args: #( #self #boolean )>! !

!GTlsClientConnection methodsFor: 'C call-outs'!
getAcceptedCas
    <cCall: 'g_tls_client_connection_get_accepted_cas' returning: #{GList}
	args: #( #self )>! !

!GTlsDatabase class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tls_database_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTlsDatabase!

!GTlsDatabase methodsFor: 'C call-outs'!
verifyChain: chain purpose: purpose identity: identity interaction: interaction flags: flags cancellable: cancellable error: error
    <cCall: 'g_tls_database_verify_chain' returning: #int
	args: #( #self #cObject #string #cObject #cObject #int #cObject #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
verifyChainAsync: chain purpose: purpose identity: identity interaction: interaction flags: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_tls_database_verify_chain_async' returning: #void
	args: #( #self #cObject #string #cObject #cObject #int #cObject #int #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
verifyChainFinish: result error: error
    <cCall: 'g_tls_database_verify_chain_finish' returning: #int
	args: #( #self #cObject #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
createCertificateHandle: certificate
    <cCall: 'g_tls_database_create_certificate_handle' returning: #string
	args: #( #self #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
lookupCertificateForHandle: handle interaction: interaction flags: flags cancellable: cancellable error: error
    <cCall: 'g_tls_database_lookup_certificate_for_handle' returning: #{GTlsCertificate}
	args: #( #self #string #cObject #int #cObject #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
lookupCertificateForHandleAsync: handle interaction: interaction flags: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_tls_database_lookup_certificate_for_handle_async' returning: #void
	args: #( #self #string #cObject #int #cObject #int #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
lookupCertificateForHandleFinish: result error: error
    <cCall: 'g_tls_database_lookup_certificate_for_handle_finish' returning: #{GTlsCertificate}
	args: #( #self #cObject #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
lookupCertificateIssuer: certificate interaction: interaction flags: flags cancellable: cancellable error: error
    <cCall: 'g_tls_database_lookup_certificate_issuer' returning: #{GTlsCertificate}
	args: #( #self #cObject #cObject #int #cObject #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
lookupCertificateIssuerAsync: certificate interaction: interaction flags: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_tls_database_lookup_certificate_issuer_async' returning: #void
	args: #( #self #cObject #cObject #int #cObject #int #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
lookupCertificateIssuerFinish: result error: error
    <cCall: 'g_tls_database_lookup_certificate_issuer_finish' returning: #{GTlsCertificate}
	args: #( #self #cObject #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
lookupCertificatesIssuedBy: issuerRawDn interaction: interaction flags: flags cancellable: cancellable error: error
    <cCall: 'g_tls_database_lookup_certificates_issued_by' returning: #{GList}
	args: #( #self #cObject #cObject #int #cObject #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
lookupCertificatesIssuedByAsync: issuerRawDn interaction: interaction flags: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_tls_database_lookup_certificates_issued_by_async' returning: #void
	args: #( #self #cObject #cObject #int #cObject #int #cObject )>! !

!GTlsDatabase methodsFor: 'C call-outs'!
lookupCertificatesIssuedByFinish: result error: error
    <cCall: 'g_tls_database_lookup_certificates_issued_by_finish' returning: #{GList}
	args: #( #self #cObject #cObject )>! !

!GTlsFileDatabase class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tls_file_database_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTlsFileDatabase!

!GTlsFileDatabase class methodsFor: 'C call-outs'!
new: anchors error: error
    <cCall: 'g_tls_file_database_new' returning: #{GTlsFileDatabase}
	args: #( #string #cObject )>! !

!GTlsInteraction class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tls_interaction_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTlsInteraction!

!GTlsInteraction methodsFor: 'C call-outs'!
invokeAskPassword: password cancellable: cancellable error: error
    <cCall: 'g_tls_interaction_invoke_ask_password' returning: #int
	args: #( #self #cObject #cObject #cObject )>! !

!GTlsInteraction methodsFor: 'C call-outs'!
askPassword: password cancellable: cancellable error: error
    <cCall: 'g_tls_interaction_ask_password' returning: #int
	args: #( #self #cObject #cObject #cObject )>! !

!GTlsInteraction methodsFor: 'C call-outs'!
askPasswordAsync: password cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_tls_interaction_ask_password_async' returning: #void
	args: #( #self #cObject #cObject #int #cObject )>! !

!GTlsInteraction methodsFor: 'C call-outs'!
askPasswordFinish: result error: error
    <cCall: 'g_tls_interaction_ask_password_finish' returning: #int
	args: #( #self #cObject #cObject )>! !

!GTlsInteraction methodsFor: 'C call-outs'!
invokeRequestCertificate: connection flags: flags cancellable: cancellable error: error
    <cCall: 'g_tls_interaction_invoke_request_certificate' returning: #int
	args: #( #self #cObject #int #cObject #cObject )>! !

!GTlsInteraction methodsFor: 'C call-outs'!
requestCertificate: connection flags: flags cancellable: cancellable error: error
    <cCall: 'g_tls_interaction_request_certificate' returning: #int
	args: #( #self #cObject #int #cObject #cObject )>! !

!GTlsInteraction methodsFor: 'C call-outs'!
requestCertificateAsync: connection flags: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_tls_interaction_request_certificate_async' returning: #void
	args: #( #self #cObject #int #cObject #int #cObject )>! !

!GTlsInteraction methodsFor: 'C call-outs'!
requestCertificateFinish: result error: error
    <cCall: 'g_tls_interaction_request_certificate_finish' returning: #int
	args: #( #self #cObject #cObject )>! !

!GTlsServerConnection class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tls_server_connection_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTlsServerConnection!

!GTlsServerConnection class methodsFor: 'C call-outs'!
new: baseIoStream certificate: certificate error: error
    <cCall: 'g_tls_server_connection_new' returning: #{GTlsServerConnection}
	args: #( #cObject #cObject #cObject )>! !

!GTlsPassword class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_tls_password_get_type' returning: #long
	args: #( )>! !

GLib registerType: GTlsPassword!

!GTlsPassword class methodsFor: 'C call-outs'!
new: flags description: description
    <cCall: 'g_tls_password_new' returning: #{GTlsPassword}
	args: #( #int #string )>! !

!GTlsPassword methodsFor: 'C call-outs'!
setValue: value length: length
    <cCall: 'g_tls_password_set_value' returning: #void
	args: #( #self #cObject #int )>! !

!GTlsPassword methodsFor: 'C call-outs'!
setValueFull: value length: length destroy: destroy
    <cCall: 'g_tls_password_set_value_full' returning: #void
	args: #( #self #cObject #int #int )>! !

!GTlsPassword methodsFor: 'C call-outs'!
getFlags
    <cCall: 'g_tls_password_get_flags' returning: #int
	args: #( #self )>! !

!GTlsPassword methodsFor: 'C call-outs'!
setFlags: flags
    <cCall: 'g_tls_password_set_flags' returning: #void
	args: #( #self #int )>! !

!GTlsPassword methodsFor: 'C call-outs'!
setDescription: description
    <cCall: 'g_tls_password_set_description' returning: #void
	args: #( #self #string )>! !

!GTlsPassword methodsFor: 'C call-outs'!
setWarning: warning
    <cCall: 'g_tls_password_set_warning' returning: #void
	args: #( #self #string )>! !

!GVfs class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_vfs_get_type' returning: #long
	args: #( )>! !

GLib registerType: GVfs!

!GVfs methodsFor: 'C call-outs'!
isActive
    <cCall: 'g_vfs_is_active' returning: #boolean
	args: #( #self )>! !

!GVfs methodsFor: 'C call-outs'!
getFileForPath: path
    <cCall: 'g_vfs_get_file_for_path' returning: #{GFile}
	args: #( #self #string )>! !

!GVfs methodsFor: 'C call-outs'!
getFileForUri: uri
    <cCall: 'g_vfs_get_file_for_uri' returning: #{GFile}
	args: #( #self #string )>! !

!GVfs methodsFor: 'C call-outs'!
parseName: parseName
    <cCall: 'g_vfs_parse_name' returning: #{GFile}
	args: #( #self #string )>! !

!GVfs class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'g_vfs_get_default' returning: #{GVfs}
	args: #( )>! !

!GVfs class methodsFor: 'C call-outs'!
getLocal
    <cCall: 'g_vfs_get_local' returning: #{GVfs}
	args: #( )>! !

!GVolume class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_volume_get_type' returning: #long
	args: #( )>! !

GLib registerType: GVolume!

!GVolume methodsFor: 'C call-outs'!
getName
    <cCall: 'g_volume_get_name' returning: #string
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
getIcon
    <cCall: 'g_volume_get_icon' returning: #{GIcon}
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
getSymbolicIcon
    <cCall: 'g_volume_get_symbolic_icon' returning: #{GIcon}
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
getUuid
    <cCall: 'g_volume_get_uuid' returning: #string
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
getDrive
    <cCall: 'g_volume_get_drive' returning: #{GDrive}
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
getMount
    <cCall: 'g_volume_get_mount' returning: #{GMount}
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
canMount
    <cCall: 'g_volume_can_mount' returning: #boolean
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
canEject
    <cCall: 'g_volume_can_eject' returning: #boolean
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
shouldAutomount
    <cCall: 'g_volume_should_automount' returning: #boolean
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
mount: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_volume_mount' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GVolume methodsFor: 'C call-outs'!
mountFinish: result error: error
    <cCall: 'g_volume_mount_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GVolume methodsFor: 'C call-outs'!
eject: flags cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_volume_eject' returning: #void
	args: #( #self #int #cObject #int #cObject )>! !

!GVolume methodsFor: 'C call-outs'!
ejectFinish: result error: error
    <cCall: 'g_volume_eject_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GVolume methodsFor: 'C call-outs'!
getIdentifier: kind
    <cCall: 'g_volume_get_identifier' returning: #string
	args: #( #self #string )>! !

!GVolume methodsFor: 'C call-outs'!
enumerateIdentifiers
    <cCall: 'g_volume_enumerate_identifiers' returning: #string
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
getActivationRoot
    <cCall: 'g_volume_get_activation_root' returning: #{GFile}
	args: #( #self )>! !

!GVolume methodsFor: 'C call-outs'!
ejectWithOperation: flags mountOperation: mountOperation cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_volume_eject_with_operation' returning: #void
	args: #( #self #int #cObject #cObject #int #cObject )>! !

!GVolume methodsFor: 'C call-outs'!
ejectWithOperationFinish: result error: error
    <cCall: 'g_volume_eject_with_operation_finish' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GZlibCompressor class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_zlib_compressor_get_type' returning: #long
	args: #( )>! !

GLib registerType: GZlibCompressor!

!GZlibCompressor class methodsFor: 'C call-outs'!
new: format level: level
    <cCall: 'g_zlib_compressor_new' returning: #{GZlibCompressor}
	args: #( #int #int )>! !

!GZlibCompressor methodsFor: 'C call-outs'!
getFileInfo
    <cCall: 'g_zlib_compressor_get_file_info' returning: #{GFileInfo}
	args: #( #self )>! !

!GZlibCompressor methodsFor: 'C call-outs'!
setFileInfo: fileInfo
    <cCall: 'g_zlib_compressor_set_file_info' returning: #void
	args: #( #self #cObject )>! !

!GZlibDecompressor class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_zlib_decompressor_get_type' returning: #long
	args: #( )>! !

GLib registerType: GZlibDecompressor!

!GZlibDecompressor class methodsFor: 'C call-outs'!
new: format
    <cCall: 'g_zlib_decompressor_new' returning: #{GZlibDecompressor}
	args: #( #int )>! !

!GZlibDecompressor methodsFor: 'C call-outs'!
getFileInfo
    <cCall: 'g_zlib_decompressor_get_file_info' returning: #{GFileInfo}
	args: #( #self )>! !

!GDBusInterface class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_interface_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusInterface!

!GDBusInterface methodsFor: 'C call-outs'!
getInfo
    <cCall: 'g_dbus_interface_get_info' returning: #{GDBusInterfaceInfo}
	args: #( #self )>! !

!GDBusInterface methodsFor: 'C call-outs'!
getObject
    <cCall: 'g_dbus_interface_get_object' returning: #{GDBusObject}
	args: #( #self )>! !

!GDBusInterface methodsFor: 'C call-outs'!
setObject: object
    <cCall: 'g_dbus_interface_set_object' returning: #void
	args: #( #self #cObject )>! !

!GDBusInterface methodsFor: 'C call-outs'!
dupObject
    <cCall: 'g_dbus_interface_dup_object' returning: #{GDBusObject}
	args: #( #self )>! !

!GDBusInterfaceSkeleton class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_interface_skeleton_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusInterfaceSkeleton!

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
getFlags
    <cCall: 'g_dbus_interface_skeleton_get_flags' returning: #int
	args: #( #self )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
setFlags: flags
    <cCall: 'g_dbus_interface_skeleton_set_flags' returning: #void
	args: #( #self #int )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
getInfo
    <cCall: 'g_dbus_interface_skeleton_get_info' returning: #{GDBusInterfaceInfo}
	args: #( #self )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
getVtable
    <cCall: 'g_dbus_interface_skeleton_get_vtable' returning: #{GDBusInterfaceVTable}
	args: #( #self )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
getProperties
    <cCall: 'g_dbus_interface_skeleton_get_properties' returning: #{GVariant}
	args: #( #self )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
flush
    <cCall: 'g_dbus_interface_skeleton_flush' returning: #void
	args: #( #self )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
export: connection objectPath: objectPath error: error
    <cCall: 'g_dbus_interface_skeleton_export' returning: #boolean
	args: #( #self #cObject #string #cObject )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
unexport
    <cCall: 'g_dbus_interface_skeleton_unexport' returning: #void
	args: #( #self )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
unexportFromConnection: connection
    <cCall: 'g_dbus_interface_skeleton_unexport_from_connection' returning: #void
	args: #( #self #cObject )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
getConnection
    <cCall: 'g_dbus_interface_skeleton_get_connection' returning: #{GDBusConnection}
	args: #( #self )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
getConnections
    <cCall: 'g_dbus_interface_skeleton_get_connections' returning: #{GList}
	args: #( #self )>! !

!GDBusInterfaceSkeleton methodsFor: 'C call-outs'!
hasConnection: connection
    <cCall: 'g_dbus_interface_skeleton_has_connection' returning: #boolean
	args: #( #self #cObject )>! !

!GDBusObject class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_object_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusObject!

!GDBusObject methodsFor: 'C call-outs'!
getInterfaces
    <cCall: 'g_dbus_object_get_interfaces' returning: #{GList}
	args: #( #self )>! !

!GDBusObject methodsFor: 'C call-outs'!
getInterface: interfaceName
    <cCall: 'g_dbus_object_get_interface' returning: #{GDBusInterface}
	args: #( #self #string )>! !

!GDBusObjectSkeleton class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_object_skeleton_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusObjectSkeleton!

!GDBusObjectSkeleton class methodsFor: 'C call-outs'!
new: objectPath
    <cCall: 'g_dbus_object_skeleton_new' returning: #{GDBusObjectSkeleton}
	args: #( #string )>! !

!GDBusObjectSkeleton methodsFor: 'C call-outs'!
flush
    <cCall: 'g_dbus_object_skeleton_flush' returning: #void
	args: #( #self )>! !

!GDBusObjectSkeleton methodsFor: 'C call-outs'!
addInterface: interface
    <cCall: 'g_dbus_object_skeleton_add_interface' returning: #void
	args: #( #self #cObject )>! !

!GDBusObjectSkeleton methodsFor: 'C call-outs'!
removeInterface: interface
    <cCall: 'g_dbus_object_skeleton_remove_interface' returning: #void
	args: #( #self #cObject )>! !

!GDBusObjectSkeleton methodsFor: 'C call-outs'!
removeInterfaceByName: interfaceName
    <cCall: 'g_dbus_object_skeleton_remove_interface_by_name' returning: #void
	args: #( #self #string )>! !

!GDBusObjectSkeleton methodsFor: 'C call-outs'!
setObjectPath: objectPath
    <cCall: 'g_dbus_object_skeleton_set_object_path' returning: #void
	args: #( #self #string )>! !

!GDBusObjectProxy class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_object_proxy_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusObjectProxy!

!GDBusObjectProxy class methodsFor: 'C call-outs'!
new: connection objectPath: objectPath
    <cCall: 'g_dbus_object_proxy_new' returning: #{GDBusObjectProxy}
	args: #( #cObject #string )>! !

!GDBusObjectProxy methodsFor: 'C call-outs'!
getConnection
    <cCall: 'g_dbus_object_proxy_get_connection' returning: #{GDBusConnection}
	args: #( #self )>! !

!GDBusObjectManager class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_object_manager_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusObjectManager!

!GDBusObjectManager methodsFor: 'C call-outs'!
getObjects
    <cCall: 'g_dbus_object_manager_get_objects' returning: #{GList}
	args: #( #self )>! !

!GDBusObjectManager methodsFor: 'C call-outs'!
getObject: objectPath
    <cCall: 'g_dbus_object_manager_get_object' returning: #{GDBusObject}
	args: #( #self #string )>! !

!GDBusObjectManager methodsFor: 'C call-outs'!
getInterface: objectPath interfaceName: interfaceName
    <cCall: 'g_dbus_object_manager_get_interface' returning: #{GDBusInterface}
	args: #( #self #string #string )>! !

!GDBusObjectManagerClient class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_object_manager_client_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusObjectManagerClient!

!GDBusObjectManagerClient class methodsFor: 'C call-outs'!
new: connection flags: flags name: name objectPath: objectPath getProxyTypeFunc: getProxyTypeFunc getProxyTypeUserData: getProxyTypeUserData getProxyTypeDestroyNotify: getProxyTypeDestroyNotify cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_object_manager_client_new' returning: #{GDBusObjectManagerClient}
	args: #( #cObject #int #string #string #cObject #cObject #int #cObject #int #cObject )>! !

!GDBusObjectManagerClient class methodsFor: 'C call-outs'!
newFinish: res error: error
    <cCall: 'g_dbus_object_manager_client_new_finish' returning: #{GDBusObjectManagerClient}
	args: #( #cObject #cObject )>! !

!GDBusObjectManagerClient class methodsFor: 'C call-outs'!
newSync: connection flags: flags name: name objectPath: objectPath getProxyTypeFunc: getProxyTypeFunc getProxyTypeUserData: getProxyTypeUserData getProxyTypeDestroyNotify: getProxyTypeDestroyNotify cancellable: cancellable error: error
    <cCall: 'g_dbus_object_manager_client_new_sync' returning: #{GDBusObjectManagerClient}
	args: #( #cObject #int #string #string #cObject #cObject #int #cObject #cObject )>! !

!GDBusObjectManagerClient class methodsFor: 'C call-outs'!
newForBus: busType flags: flags name: name objectPath: objectPath getProxyTypeFunc: getProxyTypeFunc getProxyTypeUserData: getProxyTypeUserData getProxyTypeDestroyNotify: getProxyTypeDestroyNotify cancellable: cancellable callback: callback userData: userData
    <cCall: 'g_dbus_object_manager_client_new_for_bus' returning: #{GDBusObjectManagerClient}
	args: #( #int #int #string #string #cObject #cObject #int #cObject #int #cObject )>! !

!GDBusObjectManagerClient class methodsFor: 'C call-outs'!
newForBusFinish: res error: error
    <cCall: 'g_dbus_object_manager_client_new_for_bus_finish' returning: #{GDBusObjectManagerClient}
	args: #( #cObject #cObject )>! !

!GDBusObjectManagerClient class methodsFor: 'C call-outs'!
newForBusSync: busType flags: flags name: name objectPath: objectPath getProxyTypeFunc: getProxyTypeFunc getProxyTypeUserData: getProxyTypeUserData getProxyTypeDestroyNotify: getProxyTypeDestroyNotify cancellable: cancellable error: error
    <cCall: 'g_dbus_object_manager_client_new_for_bus_sync' returning: #{GDBusObjectManagerClient}
	args: #( #int #int #string #string #cObject #cObject #int #cObject #cObject )>! !

!GDBusObjectManagerClient methodsFor: 'C call-outs'!
getConnection
    <cCall: 'g_dbus_object_manager_client_get_connection' returning: #{GDBusConnection}
	args: #( #self )>! !

!GDBusObjectManagerClient methodsFor: 'C call-outs'!
getFlags
    <cCall: 'g_dbus_object_manager_client_get_flags' returning: #int
	args: #( #self )>! !

!GDBusObjectManagerClient methodsFor: 'C call-outs'!
getNameOwner
    <cCall: 'g_dbus_object_manager_client_get_name_owner' returning: #string
	args: #( #self )>! !

!GDBusObjectManagerServer class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_object_manager_server_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusObjectManagerServer!

!GDBusObjectManagerServer class methodsFor: 'C call-outs'!
new: objectPath
    <cCall: 'g_dbus_object_manager_server_new' returning: #{GDBusObjectManagerServer}
	args: #( #string )>! !

!GDBusObjectManagerServer methodsFor: 'C call-outs'!
getConnection
    <cCall: 'g_dbus_object_manager_server_get_connection' returning: #{GDBusConnection}
	args: #( #self )>! !

!GDBusObjectManagerServer methodsFor: 'C call-outs'!
setConnection: connection
    <cCall: 'g_dbus_object_manager_server_set_connection' returning: #void
	args: #( #self #cObject )>! !

!GDBusObjectManagerServer methodsFor: 'C call-outs'!
export: object
    <cCall: 'g_dbus_object_manager_server_export' returning: #void
	args: #( #self #cObject )>! !

!GDBusObjectManagerServer methodsFor: 'C call-outs'!
exportUniquely: object
    <cCall: 'g_dbus_object_manager_server_export_uniquely' returning: #void
	args: #( #self #cObject )>! !

!GDBusObjectManagerServer methodsFor: 'C call-outs'!
isExported: object
    <cCall: 'g_dbus_object_manager_server_is_exported' returning: #boolean
	args: #( #self #cObject )>! !

!GDBusObjectManagerServer methodsFor: 'C call-outs'!
unexport: objectPath
    <cCall: 'g_dbus_object_manager_server_unexport' returning: #boolean
	args: #( #self #string )>! !

!GDBusActionGroup class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_action_group_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusActionGroup!

!GDBusActionGroup class methodsFor: 'C call-outs'!
get: connection busName: busName objectPath: objectPath
    <cCall: 'g_dbus_action_group_get' returning: #{GDBusActionGroup}
	args: #( #cObject #string #string )>! !

!GRemoteActionGroup class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_remote_action_group_get_type' returning: #long
	args: #( )>! !

GLib registerType: GRemoteActionGroup!

!GRemoteActionGroup methodsFor: 'C call-outs'!
activateActionFull: actionName parameter: parameter platformData: platformData
    <cCall: 'g_remote_action_group_activate_action_full' returning: #void
	args: #( #self #string #cObject #cObject )>! !

!GRemoteActionGroup methodsFor: 'C call-outs'!
changeActionStateFull: actionName value: value platformData: platformData
    <cCall: 'g_remote_action_group_change_action_state_full' returning: #void
	args: #( #self #string #cObject #cObject )>! !

!GMenuModel class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_menu_model_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMenuModel!

!GMenuModel methodsFor: 'C call-outs'!
isMutable
    <cCall: 'g_menu_model_is_mutable' returning: #boolean
	args: #( #self )>! !

!GMenuModel methodsFor: 'C call-outs'!
getNItems
    <cCall: 'g_menu_model_get_n_items' returning: #int
	args: #( #self )>! !

!GMenuModel methodsFor: 'C call-outs'!
iterateItemAttributes: itemIndex
    <cCall: 'g_menu_model_iterate_item_attributes' returning: #{GMenuAttributeIter}
	args: #( #self #int )>! !

!GMenuModel methodsFor: 'C call-outs'!
getItemAttributeValue: itemIndex attribute: attribute expectedType: expectedType
    <cCall: 'g_menu_model_get_item_attribute_value' returning: #{GVariant}
	args: #( #self #int #string #cObject )>! !

!GMenuModel methodsFor: 'C call-outs'!
getItemAttribute: itemIndex attribute: attribute formatString: formatString varargs: varargs
    <cCall: 'g_menu_model_get_item_attribute' returning: #boolean
	args: #( #self #int #string #string #variadic )>! !

!GMenuModel methodsFor: 'C call-outs'!
iterateItemLinks: itemIndex
    <cCall: 'g_menu_model_iterate_item_links' returning: #{GMenuLinkIter}
	args: #( #self #int )>! !

!GMenuModel methodsFor: 'C call-outs'!
getItemLink: itemIndex link: link
    <cCall: 'g_menu_model_get_item_link' returning: #{GMenuModel}
	args: #( #self #int #string )>! !

!GMenuModel methodsFor: 'C call-outs'!
itemsChanged: position removed: removed added: added
    <cCall: 'g_menu_model_items_changed' returning: #void
	args: #( #self #int #int #int )>! !

!GMenuAttributeIter class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_menu_attribute_iter_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMenuAttributeIter!

!GMenuAttributeIter methodsFor: 'C call-outs'!
getNext: outName value: value
    <cCall: 'g_menu_attribute_iter_get_next' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GMenuAttributeIter methodsFor: 'C call-outs'!
next
    <cCall: 'g_menu_attribute_iter_next' returning: #boolean
	args: #( #self )>! !

!GMenuAttributeIter methodsFor: 'C call-outs'!
getValue
    <cCall: 'g_menu_attribute_iter_get_value' returning: #{GVariant}
	args: #( #self )>! !

!GMenuLinkIter class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_menu_link_iter_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMenuLinkIter!

!GMenuLinkIter methodsFor: 'C call-outs'!
getNext: outLink value: value
    <cCall: 'g_menu_link_iter_get_next' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GMenuLinkIter methodsFor: 'C call-outs'!
next
    <cCall: 'g_menu_link_iter_next' returning: #boolean
	args: #( #self )>! !

!GMenuLinkIter methodsFor: 'C call-outs'!
getValue
    <cCall: 'g_menu_link_iter_get_value' returning: #{GMenuModel}
	args: #( #self )>! !

!GMenu class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_menu_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMenu!

!GMenu class methodsFor: 'C call-outs'!
new
    <cCall: 'g_menu_new' returning: #{GMenu}
	args: #( )>! !

!GMenu methodsFor: 'C call-outs'!
freeze
    <cCall: 'g_menu_freeze' returning: #void
	args: #( #self )>! !

!GMenu methodsFor: 'C call-outs'!
insertItem: position item: item
    <cCall: 'g_menu_insert_item' returning: #void
	args: #( #self #int #cObject )>! !

!GMenu methodsFor: 'C call-outs'!
prependItem: item
    <cCall: 'g_menu_prepend_item' returning: #void
	args: #( #self #cObject )>! !

!GMenu methodsFor: 'C call-outs'!
appendItem: item
    <cCall: 'g_menu_append_item' returning: #void
	args: #( #self #cObject )>! !

!GMenu methodsFor: 'C call-outs'!
remove: position
    <cCall: 'g_menu_remove' returning: #void
	args: #( #self #int )>! !

!GMenu methodsFor: 'C call-outs'!
removeAll
    <cCall: 'g_menu_remove_all' returning: #void
	args: #( #self )>! !

!GMenu methodsFor: 'C call-outs'!
insert: position label: label detailedAction: detailedAction
    <cCall: 'g_menu_insert' returning: #void
	args: #( #self #int #string #string )>! !

!GMenu methodsFor: 'C call-outs'!
prepend: label detailedAction: detailedAction
    <cCall: 'g_menu_prepend' returning: #void
	args: #( #self #string #string )>! !

!GMenu methodsFor: 'C call-outs'!
append: label detailedAction: detailedAction
    <cCall: 'g_menu_append' returning: #void
	args: #( #self #string #string )>! !

!GMenu methodsFor: 'C call-outs'!
insertSection: position label: label section: section
    <cCall: 'g_menu_insert_section' returning: #void
	args: #( #self #int #string #cObject )>! !

!GMenu methodsFor: 'C call-outs'!
prependSection: label section: section
    <cCall: 'g_menu_prepend_section' returning: #void
	args: #( #self #string #cObject )>! !

!GMenu methodsFor: 'C call-outs'!
appendSection: label section: section
    <cCall: 'g_menu_append_section' returning: #void
	args: #( #self #string #cObject )>! !

!GMenu methodsFor: 'C call-outs'!
insertSubmenu: position label: label submenu: submenu
    <cCall: 'g_menu_insert_submenu' returning: #void
	args: #( #self #int #string #cObject )>! !

!GMenu methodsFor: 'C call-outs'!
prependSubmenu: label submenu: submenu
    <cCall: 'g_menu_prepend_submenu' returning: #void
	args: #( #self #string #cObject )>! !

!GMenu methodsFor: 'C call-outs'!
appendSubmenu: label submenu: submenu
    <cCall: 'g_menu_append_submenu' returning: #void
	args: #( #self #string #cObject )>! !

!GMenuItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_menu_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GMenuItem!

!GMenuItem class methodsFor: 'C call-outs'!
new: label detailedAction: detailedAction
    <cCall: 'g_menu_item_new' returning: #{GMenuItem}
	args: #( #string #string )>! !

!GMenuItem class methodsFor: 'C call-outs'!
newFromModel: model itemIndex: itemIndex
    <cCall: 'g_menu_item_new_from_model' returning: #{GMenuItem}
	args: #( #cObject #int )>! !

!GMenuItem class methodsFor: 'C call-outs'!
newSubmenu: label submenu: submenu
    <cCall: 'g_menu_item_new_submenu' returning: #{GMenuItem}
	args: #( #string #cObject )>! !

!GMenuItem class methodsFor: 'C call-outs'!
newSection: label section: section
    <cCall: 'g_menu_item_new_section' returning: #{GMenuItem}
	args: #( #string #cObject )>! !

!GMenuItem methodsFor: 'C call-outs'!
getAttributeValue: attribute expectedType: expectedType
    <cCall: 'g_menu_item_get_attribute_value' returning: #{GVariant}
	args: #( #self #string #cObject )>! !

!GMenuItem methodsFor: 'C call-outs'!
getAttribute: attribute formatString: formatString varargs: varargs
    <cCall: 'g_menu_item_get_attribute' returning: #boolean
	args: #( #self #string #string #variadic )>! !

!GMenuItem methodsFor: 'C call-outs'!
getLink: link
    <cCall: 'g_menu_item_get_link' returning: #{GMenuModel}
	args: #( #self #string )>! !

!GMenuItem methodsFor: 'C call-outs'!
setAttributeValue: attribute value: value
    <cCall: 'g_menu_item_set_attribute_value' returning: #void
	args: #( #self #string #cObject )>! !

!GMenuItem methodsFor: 'C call-outs'!
setAttribute: attribute formatString: formatString varargs: varargs
    <cCall: 'g_menu_item_set_attribute' returning: #void
	args: #( #self #string #string #variadic )>! !

!GMenuItem methodsFor: 'C call-outs'!
setLink: link model: model
    <cCall: 'g_menu_item_set_link' returning: #void
	args: #( #self #string #cObject )>! !

!GMenuItem methodsFor: 'C call-outs'!
setLabel: label
    <cCall: 'g_menu_item_set_label' returning: #void
	args: #( #self #string )>! !

!GMenuItem methodsFor: 'C call-outs'!
setSubmenu: submenu
    <cCall: 'g_menu_item_set_submenu' returning: #void
	args: #( #self #cObject )>! !

!GMenuItem methodsFor: 'C call-outs'!
setSection: section
    <cCall: 'g_menu_item_set_section' returning: #void
	args: #( #self #cObject )>! !

!GMenuItem methodsFor: 'C call-outs'!
setActionAndTargetValue: action targetValue: targetValue
    <cCall: 'g_menu_item_set_action_and_target_value' returning: #void
	args: #( #self #string #cObject )>! !

!GMenuItem methodsFor: 'C call-outs'!
setActionAndTarget: action formatString: formatString varargs: varargs
    <cCall: 'g_menu_item_set_action_and_target' returning: #void
	args: #( #self #string #string #variadic )>! !

!GMenuItem methodsFor: 'C call-outs'!
setDetailedAction: detailedAction
    <cCall: 'g_menu_item_set_detailed_action' returning: #void
	args: #( #self #string )>! !

!GMenuItem methodsFor: 'C call-outs'!
setIcon: icon
    <cCall: 'g_menu_item_set_icon' returning: #void
	args: #( #self #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
exportMenuModel: objectPath menu: menu error: error
    <cCall: 'g_dbus_connection_export_menu_model' returning: #int
	args: #( #self #string #cObject #cObject )>! !

!GDBusConnection methodsFor: 'C call-outs'!
unexportMenuModel: exportId
    <cCall: 'g_dbus_connection_unexport_menu_model' returning: #void
	args: #( #self #int )>! !

!GDBusMenuModel class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_dbus_menu_model_get_type' returning: #long
	args: #( )>! !

GLib registerType: GDBusMenuModel!

!GDBusMenuModel class methodsFor: 'C call-outs'!
get: connection busName: busName objectPath: objectPath
    <cCall: 'g_dbus_menu_model_get' returning: #{GDBusMenuModel}
	args: #( #cObject #string #string )>! !

!GNotification class methodsFor: 'C call-outs'!
getType
    <cCall: 'g_notification_get_type' returning: #long
	args: #( )>! !

GLib registerType: GNotification!

!GNotification class methodsFor: 'C call-outs'!
new: title
    <cCall: 'g_notification_new' returning: #{GNotification}
	args: #( #string )>! !

!GNotification methodsFor: 'C call-outs'!
setTitle: title
    <cCall: 'g_notification_set_title' returning: #void
	args: #( #self #string )>! !

!GNotification methodsFor: 'C call-outs'!
setBody: body
    <cCall: 'g_notification_set_body' returning: #void
	args: #( #self #string )>! !

!GNotification methodsFor: 'C call-outs'!
setIcon: icon
    <cCall: 'g_notification_set_icon' returning: #void
	args: #( #self #cObject )>! !

!GNotification methodsFor: 'C call-outs'!
setUrgent: urgent
    <cCall: 'g_notification_set_urgent' returning: #void
	args: #( #self #boolean )>! !

!GNotification methodsFor: 'C call-outs'!
setPriority: priority
    <cCall: 'g_notification_set_priority' returning: #void
	args: #( #self #int )>! !

!GNotification methodsFor: 'C call-outs'!
addButton: label detailedAction: detailedAction
    <cCall: 'g_notification_add_button' returning: #void
	args: #( #self #string #string )>! !

!GNotification methodsFor: 'C call-outs'!
addButtonWithTarget: label action: action targetFormat: targetFormat varargs: varargs
    <cCall: 'g_notification_add_button_with_target' returning: #void
	args: #( #self #string #string #string #variadic )>! !

!GNotification methodsFor: 'C call-outs'!
addButtonWithTargetValue: label action: action target: target
    <cCall: 'g_notification_add_button_with_target_value' returning: #void
	args: #( #self #string #string #cObject )>! !

!GNotification methodsFor: 'C call-outs'!
setDefaultAction: detailedAction
    <cCall: 'g_notification_set_default_action' returning: #void
	args: #( #self #string )>! !

!GNotification methodsFor: 'C call-outs'!
setDefaultActionAndTarget: action targetFormat: targetFormat varargs: varargs
    <cCall: 'g_notification_set_default_action_and_target' returning: #void
	args: #( #self #string #string #variadic )>! !

!GNotification methodsFor: 'C call-outs'!
setDefaultActionAndTargetValue: action target: target
    <cCall: 'g_notification_set_default_action_and_target_value' returning: #void
	args: #( #self #string #cObject )>! !

!PangoMatrix class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_matrix_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoMatrix!

!PangoMatrix methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_matrix_copy' returning: #{PangoMatrix}
	args: #( #self )>! !

!PangoMatrix methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'pango_matrix_free' returning: #void
	args: #( #self )>! !

!PangoMatrix methodsFor: 'C call-outs'!
translate: tx ty: ty
    <cCall: 'pango_matrix_translate' returning: #void
	args: #( #self #double #double )>! !

!PangoMatrix methodsFor: 'C call-outs'!
scale: scaleX scaleY: scaleY
    <cCall: 'pango_matrix_scale' returning: #void
	args: #( #self #double #double )>! !

!PangoMatrix methodsFor: 'C call-outs'!
rotate: degrees
    <cCall: 'pango_matrix_rotate' returning: #void
	args: #( #self #double )>! !

!PangoMatrix methodsFor: 'C call-outs'!
concat: newMatrix
    <cCall: 'pango_matrix_concat' returning: #void
	args: #( #self #cObject )>! !

!PangoMatrix methodsFor: 'C call-outs'!
transformPoint: x y: y
    <cCall: 'pango_matrix_transform_point' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoMatrix methodsFor: 'C call-outs'!
transformDistance: dx dy: dy
    <cCall: 'pango_matrix_transform_distance' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoMatrix methodsFor: 'C call-outs'!
transformRectangle: rect
    <cCall: 'pango_matrix_transform_rectangle' returning: #void
	args: #( #self #cObject )>! !

!PangoMatrix methodsFor: 'C call-outs'!
transformPixelRectangle: rect
    <cCall: 'pango_matrix_transform_pixel_rectangle' returning: #void
	args: #( #self #cObject )>! !

!PangoMatrix methodsFor: 'C call-outs'!
getFontScaleFactor
    <cCall: 'pango_matrix_get_font_scale_factor' returning: #double
	args: #( #self )>! !

!PangoLanguage class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_language_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoLanguage!

!PangoLanguage class methodsFor: 'C call-outs'!
fromString: language
    <cCall: 'pango_language_from_string' returning: #{PangoLanguage}
	args: #( #string )>! !

!PangoLanguage class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'pango_language_get_default' returning: #{PangoLanguage}
	args: #( )>! !

!PangoLanguage methodsFor: 'C call-outs'!
matches: rangeList
    <cCall: 'pango_language_matches' returning: #boolean
	args: #( #self #string )>! !

!PangoLanguage methodsFor: 'C call-outs'!
includesScript: script
    <cCall: 'pango_language_includes_script' returning: #boolean
	args: #( #self #int )>! !

!Pango class methodsFor: 'C call-outs'!
scriptForUnichar: ch
    <cCall: 'pango_script_for_unichar' returning: #int
	args: #( #int )>! !

!PangoScriptIter class methodsFor: 'C call-outs'!
new: text length: length
    <cCall: 'pango_script_iter_new' returning: #{PangoScriptIter}
	args: #( #string #int )>! !

!PangoScriptIter methodsFor: 'C call-outs'!
getRange: start end: end script: script
    <cCall: 'pango_script_iter_get_range' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!PangoScriptIter methodsFor: 'C call-outs'!
next
    <cCall: 'pango_script_iter_next' returning: #boolean
	args: #( #self )>! !

!PangoScriptIter methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'pango_script_iter_free' returning: #void
	args: #( #self )>! !

!Pango class methodsFor: 'C call-outs'!
scriptGetSampleLanguage: script
    <cCall: 'pango_script_get_sample_language' returning: #{PangoLanguage}
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
gravityToRotation: gravity
    <cCall: 'pango_gravity_to_rotation' returning: #double
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
gravityGetForMatrix: matrix
    <cCall: 'pango_gravity_get_for_matrix' returning: #int
	args: #( #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
gravityGetForScript: script baseGravity: baseGravity hint: hint
    <cCall: 'pango_gravity_get_for_script' returning: #int
	args: #( #int #int #int )>! !

!Pango class methodsFor: 'C call-outs'!
bidiTypeForUnichar: ch
    <cCall: 'pango_bidi_type_for_unichar' returning: #int
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
unicharDirection: ch
    <cCall: 'pango_unichar_direction' returning: #int
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
findBaseDir: text length: length
    <cCall: 'pango_find_base_dir' returning: #int
	args: #( #string #int )>! !

!Pango class methodsFor: 'C call-outs'!
getMirrorChar: ch mirroredCh: mirroredCh
    <cCall: 'pango_get_mirror_char' returning: #boolean
	args: #( #int #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
unitsFromDouble: d
    <cCall: 'pango_units_from_double' returning: #int
	args: #( #double )>! !

!Pango class methodsFor: 'C call-outs'!
unitsToDouble: i
    <cCall: 'pango_units_to_double' returning: #double
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
extentsToPixels: inclusive nearest: nearest
    <cCall: 'pango_extents_to_pixels' returning: #void
	args: #( #cObject #cObject )>! !

!PangoFontDescription class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_font_description_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoFontDescription!

!PangoFontDescription class methodsFor: 'C call-outs'!
new
    <cCall: 'pango_font_description_new' returning: #{PangoFontDescription}
	args: #( )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_font_description_copy' returning: #{PangoFontDescription}
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
copyStatic
    <cCall: 'pango_font_description_copy_static' returning: #{PangoFontDescription}
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
hash
    <cCall: 'pango_font_description_hash' returning: #int
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
equal: desc2
    <cCall: 'pango_font_description_equal' returning: #boolean
	args: #( #self #cObject )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'pango_font_description_free' returning: #void
	args: #( #self )>! !

!PangoFont class methodsFor: 'C call-outs'!
descriptionsFree: descs nDescs: nDescs
    <cCall: 'pango_font_descriptions_free' returning: #void
	args: #( #cObject #int )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
setFamily: family
    <cCall: 'pango_font_description_set_family' returning: #void
	args: #( #self #string )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
setFamilyStatic: family
    <cCall: 'pango_font_description_set_family_static' returning: #void
	args: #( #self #string )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
setStyle: style
    <cCall: 'pango_font_description_set_style' returning: #void
	args: #( #self #int )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
getStyle
    <cCall: 'pango_font_description_get_style' returning: #int
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
setVariant: variant
    <cCall: 'pango_font_description_set_variant' returning: #void
	args: #( #self #int )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
getVariant
    <cCall: 'pango_font_description_get_variant' returning: #int
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
setWeight: weight
    <cCall: 'pango_font_description_set_weight' returning: #void
	args: #( #self #int )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
getWeight
    <cCall: 'pango_font_description_get_weight' returning: #int
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
setStretch: stretch
    <cCall: 'pango_font_description_set_stretch' returning: #void
	args: #( #self #int )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
getStretch
    <cCall: 'pango_font_description_get_stretch' returning: #int
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
setSize: size
    <cCall: 'pango_font_description_set_size' returning: #void
	args: #( #self #int )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
getSize
    <cCall: 'pango_font_description_get_size' returning: #int
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
setAbsoluteSize: size
    <cCall: 'pango_font_description_set_absolute_size' returning: #void
	args: #( #self #double )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
getSizeIsAbsolute
    <cCall: 'pango_font_description_get_size_is_absolute' returning: #boolean
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
setGravity: gravity
    <cCall: 'pango_font_description_set_gravity' returning: #void
	args: #( #self #int )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
getGravity
    <cCall: 'pango_font_description_get_gravity' returning: #int
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
getSetFields
    <cCall: 'pango_font_description_get_set_fields' returning: #int
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
unsetFields: toUnset
    <cCall: 'pango_font_description_unset_fields' returning: #void
	args: #( #self #int )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
merge: descToMerge replaceExisting: replaceExisting
    <cCall: 'pango_font_description_merge' returning: #void
	args: #( #self #cObject #boolean )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
mergeStatic: descToMerge replaceExisting: replaceExisting
    <cCall: 'pango_font_description_merge_static' returning: #void
	args: #( #self #cObject #boolean )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
betterMatch: oldMatch newMatch: newMatch
    <cCall: 'pango_font_description_better_match' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!PangoFontDescription class methodsFor: 'C call-outs'!
fromString: str
    <cCall: 'pango_font_description_from_string' returning: #{PangoFontDescription}
	args: #( #string )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
toString
    <cCall: 'pango_font_description_to_string' returning: #string
	args: #( #self )>! !

!PangoFontDescription methodsFor: 'C call-outs'!
toFilename
    <cCall: 'pango_font_description_to_filename' returning: #string
	args: #( #self )>! !

!PangoFontMetrics class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_font_metrics_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoFontMetrics!

!PangoFontMetrics methodsFor: 'C call-outs'!
ref
    <cCall: 'pango_font_metrics_ref' returning: #{PangoFontMetrics}
	args: #( #self )>! !

!PangoFontMetrics methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'pango_font_metrics_unref' returning: #void
	args: #( #self )>! !

!PangoFontMetrics methodsFor: 'C call-outs'!
getAscent
    <cCall: 'pango_font_metrics_get_ascent' returning: #int
	args: #( #self )>! !

!PangoFontMetrics methodsFor: 'C call-outs'!
getDescent
    <cCall: 'pango_font_metrics_get_descent' returning: #int
	args: #( #self )>! !

!PangoFontMetrics methodsFor: 'C call-outs'!
getApproximateCharWidth
    <cCall: 'pango_font_metrics_get_approximate_char_width' returning: #int
	args: #( #self )>! !

!PangoFontMetrics methodsFor: 'C call-outs'!
getApproximateDigitWidth
    <cCall: 'pango_font_metrics_get_approximate_digit_width' returning: #int
	args: #( #self )>! !

!PangoFontMetrics methodsFor: 'C call-outs'!
getUnderlinePosition
    <cCall: 'pango_font_metrics_get_underline_position' returning: #int
	args: #( #self )>! !

!PangoFontMetrics methodsFor: 'C call-outs'!
getUnderlineThickness
    <cCall: 'pango_font_metrics_get_underline_thickness' returning: #int
	args: #( #self )>! !

!PangoFontMetrics methodsFor: 'C call-outs'!
getStrikethroughPosition
    <cCall: 'pango_font_metrics_get_strikethrough_position' returning: #int
	args: #( #self )>! !

!PangoFontMetrics methodsFor: 'C call-outs'!
getStrikethroughThickness
    <cCall: 'pango_font_metrics_get_strikethrough_thickness' returning: #int
	args: #( #self )>! !

!PangoFontFamily class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_font_family_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoFontFamily!

!PangoFontFamily methodsFor: 'C call-outs'!
listFaces: faces nFaces: nFaces
    <cCall: 'pango_font_family_list_faces' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoFontFamily methodsFor: 'C call-outs'!
isMonospace
    <cCall: 'pango_font_family_is_monospace' returning: #boolean
	args: #( #self )>! !

!PangoFontFace class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_font_face_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoFontFace!

!PangoFontFace methodsFor: 'C call-outs'!
describe
    <cCall: 'pango_font_face_describe' returning: #{PangoFontDescription}
	args: #( #self )>! !

!PangoFontFace methodsFor: 'C call-outs'!
listSizes: sizes nSizes: nSizes
    <cCall: 'pango_font_face_list_sizes' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoFontFace methodsFor: 'C call-outs'!
isSynthesized
    <cCall: 'pango_font_face_is_synthesized' returning: #boolean
	args: #( #self )>! !

!PangoFont class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_font_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoFont!

!PangoFont methodsFor: 'C call-outs'!
describe
    <cCall: 'pango_font_describe' returning: #{PangoFontDescription}
	args: #( #self )>! !

!PangoFont methodsFor: 'C call-outs'!
describeWithAbsoluteSize
    <cCall: 'pango_font_describe_with_absolute_size' returning: #{PangoFontDescription}
	args: #( #self )>! !

!PangoFont methodsFor: 'C call-outs'!
findShaper: language ch: ch
    <cCall: 'pango_font_find_shaper' returning: #{PangoEngineShape}
	args: #( #self #cObject #int )>! !

!PangoFont methodsFor: 'C call-outs'!
getMetrics: language
    <cCall: 'pango_font_get_metrics' returning: #{PangoFontMetrics}
	args: #( #self #cObject )>! !

!PangoFont methodsFor: 'C call-outs'!
getGlyphExtents: glyph inkRect: inkRect logicalRect: logicalRect
    <cCall: 'pango_font_get_glyph_extents' returning: #void
	args: #( #self #int #cObject #cObject )>! !

!PangoFont methodsFor: 'C call-outs'!
getFontMap
    <cCall: 'pango_font_get_font_map' returning: #{PangoFontMap}
	args: #( #self )>! !

!PangoColor class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_color_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoColor!

!PangoColor methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_color_copy' returning: #{PangoColor}
	args: #( #self )>! !

!PangoColor methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'pango_color_free' returning: #void
	args: #( #self )>! !

!PangoColor methodsFor: 'C call-outs'!
parse: spec
    <cCall: 'pango_color_parse' returning: #boolean
	args: #( #self #string )>! !

!PangoColor methodsFor: 'C call-outs'!
toString
    <cCall: 'pango_color_to_string' returning: #string
	args: #( #self )>! !

!Pango class methodsFor: 'C call-outs'!
attrTypeRegister: name
    <cCall: 'pango_attr_type_register' returning: #int
	args: #( #string )>! !

!PangoAttribute methodsFor: 'C call-outs'!
init: klass
    <cCall: 'pango_attribute_init' returning: #void
	args: #( #self #cObject )>! !

!PangoAttribute methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_attribute_copy' returning: #{PangoAttribute}
	args: #( #self )>! !

!PangoAttribute methodsFor: 'C call-outs'!
destroy
    <cCall: 'pango_attribute_destroy' returning: #void
	args: #( #self )>! !

!PangoAttribute methodsFor: 'C call-outs'!
equal: attr2
    <cCall: 'pango_attribute_equal' returning: #boolean
	args: #( #self #cObject )>! !

!PangoAttrLanguage class methodsFor: 'C call-outs'!
new: language
    <cCall: 'pango_attr_language_new' returning: #{PangoAttrLanguage}
	args: #( #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
attrFamilyNew: family
    <cCall: 'pango_attr_family_new' returning: #{PangoAttribute}
	args: #( #string )>! !

!Pango class methodsFor: 'C call-outs'!
attrForegroundNew: red green: green blue: blue
    <cCall: 'pango_attr_foreground_new' returning: #{PangoAttribute}
	args: #( #int #int #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrBackgroundNew: red green: green blue: blue
    <cCall: 'pango_attr_background_new' returning: #{PangoAttribute}
	args: #( #int #int #int )>! !

!PangoAttrSize class methodsFor: 'C call-outs'!
new: size
    <cCall: 'pango_attr_size_new' returning: #{PangoAttrSize}
	args: #( #int )>! !

!PangoAttrSize class methodsFor: 'C call-outs'!
newAbsolute: size
    <cCall: 'pango_attr_size_new_absolute' returning: #{PangoAttrSize}
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrStyleNew: style
    <cCall: 'pango_attr_style_new' returning: #{PangoAttribute}
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrWeightNew: weight
    <cCall: 'pango_attr_weight_new' returning: #{PangoAttribute}
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrVariantNew: variant
    <cCall: 'pango_attr_variant_new' returning: #{PangoAttribute}
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrStretchNew: stretch
    <cCall: 'pango_attr_stretch_new' returning: #{PangoAttribute}
	args: #( #int )>! !

!PangoAttrFontDesc class methodsFor: 'C call-outs'!
new: desc
    <cCall: 'pango_attr_font_desc_new' returning: #{PangoAttrFontDesc}
	args: #( #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
attrUnderlineNew: underline
    <cCall: 'pango_attr_underline_new' returning: #{PangoAttribute}
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrUnderlineColorNew: red green: green blue: blue
    <cCall: 'pango_attr_underline_color_new' returning: #{PangoAttribute}
	args: #( #int #int #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrStrikethroughNew: strikethrough
    <cCall: 'pango_attr_strikethrough_new' returning: #{PangoAttribute}
	args: #( #boolean )>! !

!Pango class methodsFor: 'C call-outs'!
attrStrikethroughColorNew: red green: green blue: blue
    <cCall: 'pango_attr_strikethrough_color_new' returning: #{PangoAttribute}
	args: #( #int #int #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrRiseNew: rise
    <cCall: 'pango_attr_rise_new' returning: #{PangoAttribute}
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrScaleNew: scaleFactor
    <cCall: 'pango_attr_scale_new' returning: #{PangoAttribute}
	args: #( #double )>! !

!Pango class methodsFor: 'C call-outs'!
attrFallbackNew: enableFallback
    <cCall: 'pango_attr_fallback_new' returning: #{PangoAttribute}
	args: #( #boolean )>! !

!Pango class methodsFor: 'C call-outs'!
attrLetterSpacingNew: letterSpacing
    <cCall: 'pango_attr_letter_spacing_new' returning: #{PangoAttribute}
	args: #( #int )>! !

!PangoAttrShape class methodsFor: 'C call-outs'!
new: inkRect logicalRect: logicalRect
    <cCall: 'pango_attr_shape_new' returning: #{PangoAttrShape}
	args: #( #cObject #cObject )>! !

!PangoAttrShape class methodsFor: 'C call-outs'!
newWithData: inkRect logicalRect: logicalRect data: data copyFunc: copyFunc destroyFunc: destroyFunc
    <cCall: 'pango_attr_shape_new_with_data' returning: #{PangoAttrShape}
	args: #( #cObject #cObject #cObject #cObject #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrGravityNew: gravity
    <cCall: 'pango_attr_gravity_new' returning: #{PangoAttribute}
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
attrGravityHintNew: hint
    <cCall: 'pango_attr_gravity_hint_new' returning: #{PangoAttribute}
	args: #( #int )>! !

!PangoAttrList class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_attr_list_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoAttrList!

!PangoAttrList class methodsFor: 'C call-outs'!
new
    <cCall: 'pango_attr_list_new' returning: #{PangoAttrList}
	args: #( )>! !

!PangoAttrList methodsFor: 'C call-outs'!
ref
    <cCall: 'pango_attr_list_ref' returning: #{PangoAttrList}
	args: #( #self )>! !

!PangoAttrList methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'pango_attr_list_unref' returning: #void
	args: #( #self )>! !

!PangoAttrList methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_attr_list_copy' returning: #{PangoAttrList}
	args: #( #self )>! !

!PangoAttrList methodsFor: 'C call-outs'!
insert: attr
    <cCall: 'pango_attr_list_insert' returning: #void
	args: #( #self #cObject )>! !

!PangoAttrList methodsFor: 'C call-outs'!
insertBefore: attr
    <cCall: 'pango_attr_list_insert_before' returning: #void
	args: #( #self #cObject )>! !

!PangoAttrList methodsFor: 'C call-outs'!
change: attr
    <cCall: 'pango_attr_list_change' returning: #void
	args: #( #self #cObject )>! !

!PangoAttrList methodsFor: 'C call-outs'!
splice: other pos: pos len: len
    <cCall: 'pango_attr_list_splice' returning: #void
	args: #( #self #cObject #int #int )>! !

!PangoAttrList methodsFor: 'C call-outs'!
filter: func data: data
    <cCall: 'pango_attr_list_filter' returning: #{PangoAttrList}
	args: #( #self #cObject #cObject )>! !

!PangoAttrList methodsFor: 'C call-outs'!
getIterator
    <cCall: 'pango_attr_list_get_iterator' returning: #{PangoAttrIterator}
	args: #( #self )>! !

!PangoAttrIterator methodsFor: 'C call-outs'!
range: start end: end
    <cCall: 'pango_attr_iterator_range' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoAttrIterator methodsFor: 'C call-outs'!
next
    <cCall: 'pango_attr_iterator_next' returning: #boolean
	args: #( #self )>! !

!PangoAttrIterator methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_attr_iterator_copy' returning: #{PangoAttrIterator}
	args: #( #self )>! !

!PangoAttrIterator methodsFor: 'C call-outs'!
destroy
    <cCall: 'pango_attr_iterator_destroy' returning: #void
	args: #( #self )>! !

!PangoAttrIterator methodsFor: 'C call-outs'!
get: type
    <cCall: 'pango_attr_iterator_get' returning: #{PangoAttribute}
	args: #( #self #int )>! !

!PangoAttrIterator methodsFor: 'C call-outs'!
getFont: desc language: language extraAttrs: extraAttrs
    <cCall: 'pango_attr_iterator_get_font' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!PangoAttrIterator methodsFor: 'C call-outs'!
getAttrs
    <cCall: 'pango_attr_iterator_get_attrs' returning: #{GSList}
	args: #( #self )>! !

!Pango class methodsFor: 'C call-outs'!
parseMarkup: markupText length: length accelMarker: accelMarker attrList: attrList text: text accelChar: accelChar error: error
    <cCall: 'pango_parse_markup' returning: #boolean
	args: #( #string #int #int #cObject #cObject #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
markupParserNew: accelMarker
    <cCall: 'pango_markup_parser_new' returning: #{GMarkupParseContext}
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
markupParserFinish: context attrList: attrList text: text accelChar: accelChar error: error
    <cCall: 'pango_markup_parser_finish' returning: #boolean
	args: #( #cObject #cObject #cObject #cObject #cObject )>! !

!PangoItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoItem!

!PangoItem class methodsFor: 'C call-outs'!
new
    <cCall: 'pango_item_new' returning: #{PangoItem}
	args: #( )>! !

!PangoItem methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_item_copy' returning: #{PangoItem}
	args: #( #self )>! !

!PangoItem methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'pango_item_free' returning: #void
	args: #( #self )>! !

!PangoItem methodsFor: 'C call-outs'!
split: splitIndex splitOffset: splitOffset
    <cCall: 'pango_item_split' returning: #{PangoItem}
	args: #( #self #int #int )>! !

!Pango class methodsFor: 'C call-outs'!
break: text length: length analysis: analysis attrs: attrs attrsLen: attrsLen
    <cCall: 'pango_break' returning: #void
	args: #( #string #int #cObject #cObject #int )>! !

!Pango class methodsFor: 'C call-outs'!
findParagraphBoundary: text length: length paragraphDelimiterIndex: paragraphDelimiterIndex nextParagraphStart: nextParagraphStart
    <cCall: 'pango_find_paragraph_boundary' returning: #void
	args: #( #string #int #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
getLogAttrs: text length: length level: level language: language logAttrs: logAttrs attrsLen: attrsLen
    <cCall: 'pango_get_log_attrs' returning: #void
	args: #( #string #int #int #cObject #cObject #int )>! !

!PangoFontset methodsFor: 'C call-outs'!
getFont: wc
    <cCall: 'pango_fontset_get_font' returning: #{PangoFont}
	args: #( #self #int )>! !

!PangoFontset methodsFor: 'C call-outs'!
getMetrics
    <cCall: 'pango_fontset_get_metrics' returning: #{PangoFontMetrics}
	args: #( #self )>! !

!PangoFontset methodsFor: 'C call-outs'!
foreach: func data: data
    <cCall: 'pango_fontset_foreach' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoFontMap class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_font_map_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoFontMap!

!PangoFontMap methodsFor: 'C call-outs'!
createContext
    <cCall: 'pango_font_map_create_context' returning: #{PangoContext}
	args: #( #self )>! !

!PangoFontMap methodsFor: 'C call-outs'!
loadFont: context desc: desc
    <cCall: 'pango_font_map_load_font' returning: #{PangoFont}
	args: #( #self #cObject #cObject )>! !

!PangoFontMap methodsFor: 'C call-outs'!
loadFontset: context desc: desc language: language
    <cCall: 'pango_font_map_load_fontset' returning: #{PangoFontset}
	args: #( #self #cObject #cObject #cObject )>! !

!PangoFontMap methodsFor: 'C call-outs'!
listFamilies: families nFamilies: nFamilies
    <cCall: 'pango_font_map_list_families' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoFontMap methodsFor: 'C call-outs'!
getSerial
    <cCall: 'pango_font_map_get_serial' returning: #int
	args: #( #self )>! !

!PangoFontMap methodsFor: 'C call-outs'!
changed
    <cCall: 'pango_font_map_changed' returning: #void
	args: #( #self )>! !

!PangoContext class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_context_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoContext!

!PangoContext class methodsFor: 'C call-outs'!
new
    <cCall: 'pango_context_new' returning: #{PangoContext}
	args: #( )>! !

!PangoContext methodsFor: 'C call-outs'!
changed
    <cCall: 'pango_context_changed' returning: #void
	args: #( #self )>! !

!PangoContext methodsFor: 'C call-outs'!
setFontMap: fontMap
    <cCall: 'pango_context_set_font_map' returning: #void
	args: #( #self #cObject )>! !

!PangoContext methodsFor: 'C call-outs'!
getFontMap
    <cCall: 'pango_context_get_font_map' returning: #{PangoFontMap}
	args: #( #self )>! !

!PangoContext methodsFor: 'C call-outs'!
getSerial
    <cCall: 'pango_context_get_serial' returning: #int
	args: #( #self )>! !

!PangoContext methodsFor: 'C call-outs'!
listFamilies: families nFamilies: nFamilies
    <cCall: 'pango_context_list_families' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoContext methodsFor: 'C call-outs'!
loadFont: desc
    <cCall: 'pango_context_load_font' returning: #{PangoFont}
	args: #( #self #cObject )>! !

!PangoContext methodsFor: 'C call-outs'!
loadFontset: desc language: language
    <cCall: 'pango_context_load_fontset' returning: #{PangoFontset}
	args: #( #self #cObject #cObject )>! !

!PangoContext methodsFor: 'C call-outs'!
getMetrics: desc language: language
    <cCall: 'pango_context_get_metrics' returning: #{PangoFontMetrics}
	args: #( #self #cObject #cObject )>! !

!PangoContext methodsFor: 'C call-outs'!
setFontDescription: desc
    <cCall: 'pango_context_set_font_description' returning: #void
	args: #( #self #cObject )>! !

!PangoContext methodsFor: 'C call-outs'!
getFontDescription
    <cCall: 'pango_context_get_font_description' returning: #{PangoFontDescription}
	args: #( #self )>! !

!PangoContext methodsFor: 'C call-outs'!
getLanguage
    <cCall: 'pango_context_get_language' returning: #{PangoLanguage}
	args: #( #self )>! !

!PangoContext methodsFor: 'C call-outs'!
setLanguage: language
    <cCall: 'pango_context_set_language' returning: #void
	args: #( #self #cObject )>! !

!PangoContext methodsFor: 'C call-outs'!
setBaseDir: direction
    <cCall: 'pango_context_set_base_dir' returning: #void
	args: #( #self #int )>! !

!PangoContext methodsFor: 'C call-outs'!
getBaseDir
    <cCall: 'pango_context_get_base_dir' returning: #int
	args: #( #self )>! !

!PangoContext methodsFor: 'C call-outs'!
setBaseGravity: gravity
    <cCall: 'pango_context_set_base_gravity' returning: #void
	args: #( #self #int )>! !

!PangoContext methodsFor: 'C call-outs'!
getBaseGravity
    <cCall: 'pango_context_get_base_gravity' returning: #int
	args: #( #self )>! !

!PangoContext methodsFor: 'C call-outs'!
getGravity
    <cCall: 'pango_context_get_gravity' returning: #int
	args: #( #self )>! !

!PangoContext methodsFor: 'C call-outs'!
setGravityHint: hint
    <cCall: 'pango_context_set_gravity_hint' returning: #void
	args: #( #self #int )>! !

!PangoContext methodsFor: 'C call-outs'!
getGravityHint
    <cCall: 'pango_context_get_gravity_hint' returning: #int
	args: #( #self )>! !

!PangoContext methodsFor: 'C call-outs'!
setMatrix: matrix
    <cCall: 'pango_context_set_matrix' returning: #void
	args: #( #self #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
itemize: context text: text startIndex: startIndex length: length attrs: attrs cachedIter: cachedIter
    <cCall: 'pango_itemize' returning: #{GList}
	args: #( #cObject #string #int #int #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
itemizeWithBaseDir: context baseDir: baseDir text: text startIndex: startIndex length: length attrs: attrs cachedIter: cachedIter
    <cCall: 'pango_itemize_with_base_dir' returning: #{GList}
	args: #( #cObject #int #string #int #int #cObject #cObject )>! !

!PangoGlyphString class methodsFor: 'C call-outs'!
new
    <cCall: 'pango_glyph_string_new' returning: #{PangoGlyphString}
	args: #( )>! !

!PangoGlyphString methodsFor: 'C call-outs'!
setSize: newLen
    <cCall: 'pango_glyph_string_set_size' returning: #void
	args: #( #self #int )>! !

!PangoGlyphString class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_glyph_string_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoGlyphString!

!PangoGlyphString methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_glyph_string_copy' returning: #{PangoGlyphString}
	args: #( #self )>! !

!PangoGlyphString methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'pango_glyph_string_free' returning: #void
	args: #( #self )>! !

!PangoGlyphString methodsFor: 'C call-outs'!
extents: font inkRect: inkRect logicalRect: logicalRect
    <cCall: 'pango_glyph_string_extents' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!PangoGlyphString methodsFor: 'C call-outs'!
getWidth
    <cCall: 'pango_glyph_string_get_width' returning: #int
	args: #( #self )>! !

!PangoGlyphString methodsFor: 'C call-outs'!
extentsRange: start end: end font: font inkRect: inkRect logicalRect: logicalRect
    <cCall: 'pango_glyph_string_extents_range' returning: #void
	args: #( #self #int #int #cObject #cObject #cObject )>! !

!PangoGlyphString methodsFor: 'C call-outs'!
getLogicalWidths: text length: length embeddingLevel: embeddingLevel logicalWidths: logicalWidths
    <cCall: 'pango_glyph_string_get_logical_widths' returning: #void
	args: #( #self #string #int #int #cObject )>! !

!PangoGlyphString methodsFor: 'C call-outs'!
indexToX: text length: length analysis: analysis index: index trailing: trailing xPos: xPos
    <cCall: 'pango_glyph_string_index_to_x' returning: #void
	args: #( #self #string #int #cObject #int #boolean #cObject )>! !

!PangoGlyphString methodsFor: 'C call-outs'!
xToIndex: text length: length analysis: analysis xPos: xPos index: index trailing: trailing
    <cCall: 'pango_glyph_string_x_to_index' returning: #void
	args: #( #self #string #int #cObject #int #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
shape: text length: length analysis: analysis glyphs: glyphs
    <cCall: 'pango_shape' returning: #void
	args: #( #string #int #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
shapeFull: itemText itemLength: itemLength paragraphText: paragraphText paragraphLength: paragraphLength analysis: analysis glyphs: glyphs
    <cCall: 'pango_shape_full' returning: #void
	args: #( #string #int #string #int #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
reorderItems: logicalItems
    <cCall: 'pango_reorder_items' returning: #{GList}
	args: #( #cObject )>! !

!PangoFont class methodsFor: 'C call-outs'!
maskGetType
    <cCall: 'pango_font_mask_get_type' returning: #long
	args: #( )>! !

!PangoGlyphItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_glyph_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoGlyphItem!

!PangoGlyphItem methodsFor: 'C call-outs'!
split: text splitIndex: splitIndex
    <cCall: 'pango_glyph_item_split' returning: #{PangoGlyphItem}
	args: #( #self #string #int )>! !

!PangoGlyphItem methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_glyph_item_copy' returning: #{PangoGlyphItem}
	args: #( #self )>! !

!PangoGlyphItem methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'pango_glyph_item_free' returning: #void
	args: #( #self )>! !

!PangoGlyphItem methodsFor: 'C call-outs'!
applyAttrs: text list: list
    <cCall: 'pango_glyph_item_apply_attrs' returning: #{GSList}
	args: #( #self #string #cObject )>! !

!PangoGlyphItem methodsFor: 'C call-outs'!
letterSpace: text logAttrs: logAttrs letterSpacing: letterSpacing
    <cCall: 'pango_glyph_item_letter_space' returning: #void
	args: #( #self #string #cObject #int )>! !

!PangoGlyphItem methodsFor: 'C call-outs'!
getLogicalWidths: text logicalWidths: logicalWidths
    <cCall: 'pango_glyph_item_get_logical_widths' returning: #void
	args: #( #self #string #cObject )>! !

!PangoGlyphItemIter class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_glyph_item_iter_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoGlyphItemIter!

!PangoGlyphItemIter methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_glyph_item_iter_copy' returning: #{PangoGlyphItemIter}
	args: #( #self )>! !

!PangoGlyphItemIter methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'pango_glyph_item_iter_free' returning: #void
	args: #( #self )>! !

!PangoGlyphItemIter methodsFor: 'C call-outs'!
initStart: glyphItem text: text
    <cCall: 'pango_glyph_item_iter_init_start' returning: #boolean
	args: #( #self #cObject #string )>! !

!PangoGlyphItemIter methodsFor: 'C call-outs'!
initEnd: glyphItem text: text
    <cCall: 'pango_glyph_item_iter_init_end' returning: #boolean
	args: #( #self #cObject #string )>! !

!PangoGlyphItemIter methodsFor: 'C call-outs'!
nextCluster
    <cCall: 'pango_glyph_item_iter_next_cluster' returning: #boolean
	args: #( #self )>! !

!PangoGlyphItemIter methodsFor: 'C call-outs'!
prevCluster
    <cCall: 'pango_glyph_item_iter_prev_cluster' returning: #boolean
	args: #( #self )>! !

!PangoTabArray class methodsFor: 'C call-outs'!
new: initialSize positionsInPixels: positionsInPixels
    <cCall: 'pango_tab_array_new' returning: #{PangoTabArray}
	args: #( #int #boolean )>! !

!PangoTabArray class methodsFor: 'C call-outs'!
newWithPositions: size positionsInPixels: positionsInPixels firstAlignment: firstAlignment firstPosition: firstPosition varargs: varargs
    <cCall: 'pango_tab_array_new_with_positions' returning: #{PangoTabArray}
	args: #( #int #boolean #int #int #variadic )>! !

!PangoTabArray class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_tab_array_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoTabArray!

!PangoTabArray methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_tab_array_copy' returning: #{PangoTabArray}
	args: #( #self )>! !

!PangoTabArray methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'pango_tab_array_free' returning: #void
	args: #( #self )>! !

!PangoTabArray methodsFor: 'C call-outs'!
getSize
    <cCall: 'pango_tab_array_get_size' returning: #int
	args: #( #self )>! !

!PangoTabArray methodsFor: 'C call-outs'!
resize: newSize
    <cCall: 'pango_tab_array_resize' returning: #void
	args: #( #self #int )>! !

!PangoTabArray methodsFor: 'C call-outs'!
setTab: tabIndex alignment: alignment location: location
    <cCall: 'pango_tab_array_set_tab' returning: #void
	args: #( #self #int #int #int )>! !

!PangoTabArray methodsFor: 'C call-outs'!
getTab: tabIndex alignment: alignment location: location
    <cCall: 'pango_tab_array_get_tab' returning: #void
	args: #( #self #int #cObject #cObject )>! !

!PangoTabArray methodsFor: 'C call-outs'!
getTabs: alignments locations: locations
    <cCall: 'pango_tab_array_get_tabs' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoTabArray methodsFor: 'C call-outs'!
getPositionsInPixels
    <cCall: 'pango_tab_array_get_positions_in_pixels' returning: #boolean
	args: #( #self )>! !

!PangoLayout class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_layout_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoLayout!

!PangoLayout class methodsFor: 'C call-outs'!
new: context
    <cCall: 'pango_layout_new' returning: #{PangoLayout}
	args: #( #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_layout_copy' returning: #{PangoLayout}
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
getContext
    <cCall: 'pango_layout_get_context' returning: #{PangoContext}
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setAttributes: attrs
    <cCall: 'pango_layout_set_attributes' returning: #void
	args: #( #self #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
getAttributes
    <cCall: 'pango_layout_get_attributes' returning: #{PangoAttrList}
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setText: text length: length
    <cCall: 'pango_layout_set_text' returning: #void
	args: #( #self #string #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
getCharacterCount
    <cCall: 'pango_layout_get_character_count' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setMarkup: markup length: length
    <cCall: 'pango_layout_set_markup' returning: #void
	args: #( #self #string #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
setMarkupWithAccel: markup length: length accelMarker: accelMarker accelChar: accelChar
    <cCall: 'pango_layout_set_markup_with_accel' returning: #void
	args: #( #self #string #int #int #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
setFontDescription: desc
    <cCall: 'pango_layout_set_font_description' returning: #void
	args: #( #self #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
setWidth: width
    <cCall: 'pango_layout_set_width' returning: #void
	args: #( #self #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
getWidth
    <cCall: 'pango_layout_get_width' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setHeight: height
    <cCall: 'pango_layout_set_height' returning: #void
	args: #( #self #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
getHeight
    <cCall: 'pango_layout_get_height' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setWrap: wrap
    <cCall: 'pango_layout_set_wrap' returning: #void
	args: #( #self #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
getWrap
    <cCall: 'pango_layout_get_wrap' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
isWrapped
    <cCall: 'pango_layout_is_wrapped' returning: #boolean
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setIndent: indent
    <cCall: 'pango_layout_set_indent' returning: #void
	args: #( #self #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
getIndent
    <cCall: 'pango_layout_get_indent' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setSpacing: spacing
    <cCall: 'pango_layout_set_spacing' returning: #void
	args: #( #self #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
getSpacing
    <cCall: 'pango_layout_get_spacing' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setJustify: justify
    <cCall: 'pango_layout_set_justify' returning: #void
	args: #( #self #boolean )>! !

!PangoLayout methodsFor: 'C call-outs'!
getJustify
    <cCall: 'pango_layout_get_justify' returning: #boolean
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setAutoDir: autoDir
    <cCall: 'pango_layout_set_auto_dir' returning: #void
	args: #( #self #boolean )>! !

!PangoLayout methodsFor: 'C call-outs'!
getAutoDir
    <cCall: 'pango_layout_get_auto_dir' returning: #boolean
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setAlignment: alignment
    <cCall: 'pango_layout_set_alignment' returning: #void
	args: #( #self #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
getAlignment
    <cCall: 'pango_layout_get_alignment' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setTabs: tabs
    <cCall: 'pango_layout_set_tabs' returning: #void
	args: #( #self #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
getTabs
    <cCall: 'pango_layout_get_tabs' returning: #{PangoTabArray}
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setSingleParagraphMode: setting
    <cCall: 'pango_layout_set_single_paragraph_mode' returning: #void
	args: #( #self #boolean )>! !

!PangoLayout methodsFor: 'C call-outs'!
getSingleParagraphMode
    <cCall: 'pango_layout_get_single_paragraph_mode' returning: #boolean
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
setEllipsize: ellipsize
    <cCall: 'pango_layout_set_ellipsize' returning: #void
	args: #( #self #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
getEllipsize
    <cCall: 'pango_layout_get_ellipsize' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
isEllipsized
    <cCall: 'pango_layout_is_ellipsized' returning: #boolean
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
getUnknownGlyphsCount
    <cCall: 'pango_layout_get_unknown_glyphs_count' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
contextChanged
    <cCall: 'pango_layout_context_changed' returning: #void
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
getSerial
    <cCall: 'pango_layout_get_serial' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
getLogAttrs: attrs nAttrs: nAttrs
    <cCall: 'pango_layout_get_log_attrs' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
indexToPos: index pos: pos
    <cCall: 'pango_layout_index_to_pos' returning: #void
	args: #( #self #int #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
indexToLineX: index trailing: trailing line: line xPos: xPos
    <cCall: 'pango_layout_index_to_line_x' returning: #void
	args: #( #self #int #boolean #cObject #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
getCursorPos: index strongPos: strongPos weakPos: weakPos
    <cCall: 'pango_layout_get_cursor_pos' returning: #void
	args: #( #self #int #cObject #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
moveCursorVisually: strong oldIndex: oldIndex oldTrailing: oldTrailing direction: direction newIndex: newIndex newTrailing: newTrailing
    <cCall: 'pango_layout_move_cursor_visually' returning: #void
	args: #( #self #boolean #int #int #int #cObject #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
xyToIndex: x y: y index: index trailing: trailing
    <cCall: 'pango_layout_xy_to_index' returning: #boolean
	args: #( #self #int #int #cObject #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
getExtents: inkRect logicalRect: logicalRect
    <cCall: 'pango_layout_get_extents' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
getPixelExtents: inkRect logicalRect: logicalRect
    <cCall: 'pango_layout_get_pixel_extents' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
getSize: width height: height
    <cCall: 'pango_layout_get_size' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
getPixelSize: width height: height
    <cCall: 'pango_layout_get_pixel_size' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayout methodsFor: 'C call-outs'!
getBaseline
    <cCall: 'pango_layout_get_baseline' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
getLineCount
    <cCall: 'pango_layout_get_line_count' returning: #int
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
getLine: line
    <cCall: 'pango_layout_get_line' returning: #{PangoLayoutLine}
	args: #( #self #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
getLineReadonly: line
    <cCall: 'pango_layout_get_line_readonly' returning: #{PangoLayoutLine}
	args: #( #self #int )>! !

!PangoLayout methodsFor: 'C call-outs'!
getLines
    <cCall: 'pango_layout_get_lines' returning: #{GSList}
	args: #( #self )>! !

!PangoLayout methodsFor: 'C call-outs'!
getLinesReadonly
    <cCall: 'pango_layout_get_lines_readonly' returning: #{GSList}
	args: #( #self )>! !

!PangoLayoutLine class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_layout_line_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoLayoutLine!

!PangoLayoutLine methodsFor: 'C call-outs'!
ref
    <cCall: 'pango_layout_line_ref' returning: #{PangoLayoutLine}
	args: #( #self )>! !

!PangoLayoutLine methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'pango_layout_line_unref' returning: #void
	args: #( #self )>! !

!PangoLayoutLine methodsFor: 'C call-outs'!
xToIndex: xPos index: index trailing: trailing
    <cCall: 'pango_layout_line_x_to_index' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!PangoLayoutLine methodsFor: 'C call-outs'!
indexToX: index trailing: trailing xPos: xPos
    <cCall: 'pango_layout_line_index_to_x' returning: #void
	args: #( #self #int #boolean #cObject )>! !

!PangoLayoutLine methodsFor: 'C call-outs'!
getXRanges: startIndex endIndex: endIndex ranges: ranges nRanges: nRanges
    <cCall: 'pango_layout_line_get_x_ranges' returning: #void
	args: #( #self #int #int #cObject #cObject )>! !

!PangoLayoutLine methodsFor: 'C call-outs'!
getExtents: inkRect logicalRect: logicalRect
    <cCall: 'pango_layout_line_get_extents' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayoutLine methodsFor: 'C call-outs'!
getPixelExtents: inkRect logicalRect: logicalRect
    <cCall: 'pango_layout_line_get_pixel_extents' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayoutIter class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_layout_iter_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoLayoutIter!

!PangoLayout methodsFor: 'C call-outs'!
getIter
    <cCall: 'pango_layout_get_iter' returning: #{PangoLayoutIter}
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
copy
    <cCall: 'pango_layout_iter_copy' returning: #{PangoLayoutIter}
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'pango_layout_iter_free' returning: #void
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getIndex
    <cCall: 'pango_layout_iter_get_index' returning: #int
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getRun
    <cCall: 'pango_layout_iter_get_run' returning: #{PangoLayoutRun}
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getRunReadonly
    <cCall: 'pango_layout_iter_get_run_readonly' returning: #{PangoLayoutRun}
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getLine
    <cCall: 'pango_layout_iter_get_line' returning: #{PangoLayoutLine}
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getLineReadonly
    <cCall: 'pango_layout_iter_get_line_readonly' returning: #{PangoLayoutLine}
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
atLastLine
    <cCall: 'pango_layout_iter_at_last_line' returning: #boolean
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getLayout
    <cCall: 'pango_layout_iter_get_layout' returning: #{PangoLayout}
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
nextChar
    <cCall: 'pango_layout_iter_next_char' returning: #boolean
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
nextCluster
    <cCall: 'pango_layout_iter_next_cluster' returning: #boolean
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
nextRun
    <cCall: 'pango_layout_iter_next_run' returning: #boolean
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
nextLine
    <cCall: 'pango_layout_iter_next_line' returning: #boolean
	args: #( #self )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getCharExtents: logicalRect
    <cCall: 'pango_layout_iter_get_char_extents' returning: #void
	args: #( #self #cObject )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getClusterExtents: inkRect logicalRect: logicalRect
    <cCall: 'pango_layout_iter_get_cluster_extents' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getRunExtents: inkRect logicalRect: logicalRect
    <cCall: 'pango_layout_iter_get_run_extents' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getLineExtents: inkRect logicalRect: logicalRect
    <cCall: 'pango_layout_iter_get_line_extents' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getLineYrange: y0 y1: y1
    <cCall: 'pango_layout_iter_get_line_yrange' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getLayoutExtents: inkRect logicalRect: logicalRect
    <cCall: 'pango_layout_iter_get_layout_extents' returning: #void
	args: #( #self #cObject #cObject )>! !

!PangoLayoutIter methodsFor: 'C call-outs'!
getBaseline
    <cCall: 'pango_layout_iter_get_baseline' returning: #int
	args: #( #self )>! !

!PangoRenderer class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_renderer_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoRenderer!

!GtkStyle class methodsFor: 'C call-outs'!
drawLayout: renderer layout: layout x: x y: y
    <cCall: 'pango_renderer_draw_layout' returning: #void
	args: #( #cObject #cObject #int #int )>! !

!GtkStyle class methodsFor: 'C call-outs'!
drawLayoutLine: renderer line: line x: x y: y
    <cCall: 'pango_renderer_draw_layout_line' returning: #void
	args: #( #cObject #cObject #int #int )>! !

!GtkStyle class methodsFor: 'C call-outs'!
drawGlyphs: renderer font: font glyphs: glyphs x: x y: y
    <cCall: 'pango_renderer_draw_glyphs' returning: #void
	args: #( #cObject #cObject #cObject #int #int )>! !

!GtkStyle class methodsFor: 'C call-outs'!
drawGlyphItem: renderer text: text glyphItem: glyphItem x: x y: y
    <cCall: 'pango_renderer_draw_glyph_item' returning: #void
	args: #( #cObject #string #cObject #int #int )>! !

!GtkStyle class methodsFor: 'C call-outs'!
drawRectangle: renderer part: part x: x y: y width: width height: height
    <cCall: 'pango_renderer_draw_rectangle' returning: #void
	args: #( #cObject #int #int #int #int #int )>! !

!GtkStyle class methodsFor: 'C call-outs'!
drawErrorUnderline: renderer x: x y: y width: width height: height
    <cCall: 'pango_renderer_draw_error_underline' returning: #void
	args: #( #cObject #int #int #int #int )>! !

!GtkStyle class methodsFor: 'C call-outs'!
drawTrapezoid: renderer part: part y1: y1 x11: x11 x21: x21 y2: y2 x12: x12 x22: x22
    <cCall: 'pango_renderer_draw_trapezoid' returning: #void
	args: #( #cObject #int #double #double #double #double #double #double )>! !

!GtkStyle class methodsFor: 'C call-outs'!
drawGlyph: renderer font: font glyph: glyph x: x y: y
    <cCall: 'pango_renderer_draw_glyph' returning: #void
	args: #( #cObject #cObject #int #double #double )>! !

!PangoRenderer methodsFor: 'C call-outs'!
activate
    <cCall: 'pango_renderer_activate' returning: #void
	args: #( #self )>! !

!PangoRenderer methodsFor: 'C call-outs'!
deactivate
    <cCall: 'pango_renderer_deactivate' returning: #void
	args: #( #self )>! !

!PangoRenderer methodsFor: 'C call-outs'!
partChanged: part
    <cCall: 'pango_renderer_part_changed' returning: #void
	args: #( #self #int )>! !

!PangoRenderer methodsFor: 'C call-outs'!
setColor: part color: color
    <cCall: 'pango_renderer_set_color' returning: #void
	args: #( #self #int #cObject )>! !

!PangoRenderer methodsFor: 'C call-outs'!
getColor: part
    <cCall: 'pango_renderer_get_color' returning: #{PangoColor}
	args: #( #self #int )>! !

!PangoRenderer methodsFor: 'C call-outs'!
setMatrix: matrix
    <cCall: 'pango_renderer_set_matrix' returning: #void
	args: #( #self #cObject )>! !

!PangoRenderer methodsFor: 'C call-outs'!
getLayout
    <cCall: 'pango_renderer_get_layout' returning: #{PangoLayout}
	args: #( #self )>! !

!PangoRenderer methodsFor: 'C call-outs'!
getLayoutLine
    <cCall: 'pango_renderer_get_layout_line' returning: #{PangoLayoutLine}
	args: #( #self )>! !

!Pango class methodsFor: 'C call-outs'!
splitFileList: str
    <cCall: 'pango_split_file_list' returning: #string
	args: #( #string )>! !

!Pango class methodsFor: 'C call-outs'!
trimString: str
    <cCall: 'pango_trim_string' returning: #string
	args: #( #string )>! !

!Pango class methodsFor: 'C call-outs'!
readLine: stream str: str
    <cCall: 'pango_read_line' returning: #int
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
skipSpace: pos
    <cCall: 'pango_skip_space' returning: #boolean
	args: #( #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
scanWord: pos out: out
    <cCall: 'pango_scan_word' returning: #boolean
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
scanString: pos out: out
    <cCall: 'pango_scan_string' returning: #boolean
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
scanInt: pos out: out
    <cCall: 'pango_scan_int' returning: #boolean
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
parseEnum: type str: str value: value warn: warn possibleValues: possibleValues
    <cCall: 'pango_parse_enum' returning: #boolean
	args: #( #long #string #cObject #boolean #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
parseStyle: str style: style warn: warn
    <cCall: 'pango_parse_style' returning: #boolean
	args: #( #string #cObject #boolean )>! !

!Pango class methodsFor: 'C call-outs'!
parseVariant: str variant: variant warn: warn
    <cCall: 'pango_parse_variant' returning: #boolean
	args: #( #string #cObject #boolean )>! !

!Pango class methodsFor: 'C call-outs'!
parseWeight: str weight: weight warn: warn
    <cCall: 'pango_parse_weight' returning: #boolean
	args: #( #string #cObject #boolean )>! !

!Pango class methodsFor: 'C call-outs'!
parseStretch: str stretch: stretch warn: warn
    <cCall: 'pango_parse_stretch' returning: #boolean
	args: #( #string #cObject #boolean )>! !

!Pango class methodsFor: 'C call-outs'!
quantizeLineGeometry: thickness position: position
    <cCall: 'pango_quantize_line_geometry' returning: #void
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
log2visGetEmbeddingLevels: text length: length pbaseDir: pbaseDir
    <cCall: 'pango_log2vis_get_embedding_levels' returning: CInt type
	args: #( #string #int #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
isZeroWidth: ch
    <cCall: 'pango_is_zero_width' returning: #boolean
	args: #( #int )>! !

!Pango class methodsFor: 'C call-outs'!
version
    <cCall: 'pango_version' returning: #int
	args: #( )>! !

!GdkColormap class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_colormap_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkColormap!

!GdkColormap class methodsFor: 'C call-outs'!
new: visual allocate: allocate
    <cCall: 'gdk_colormap_new' returning: #{GdkColormap}
	args: #( #cObject #boolean )>! !

!GdkColormap class methodsFor: 'C call-outs'!
getSystem
    <cCall: 'gdk_colormap_get_system' returning: #{GdkColormap}
	args: #( )>! !

!GdkColormap methodsFor: 'C call-outs'!
getScreen
    <cCall: 'gdk_colormap_get_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!GdkColormap methodsFor: 'C call-outs'!
change: ncolors
    <cCall: 'gdk_colormap_change' returning: #void
	args: #( #self #int )>! !

!GdkColormap methodsFor: 'C call-outs'!
allocColors: colors nColors: nColors writeable: writeable bestMatch: bestMatch success: success
    <cCall: 'gdk_colormap_alloc_colors' returning: #{GdkColormap}
	args: #( #self #cObject #int #boolean #boolean #cObject )>! !

!GdkColormap methodsFor: 'C call-outs'!
allocColor: color writeable: writeable bestMatch: bestMatch
    <cCall: 'gdk_colormap_alloc_color' returning: #{GdkColormap}
	args: #( #self #cObject #boolean #boolean )>! !

!GdkColormap methodsFor: 'C call-outs'!
freeColors: colors nColors: nColors
    <cCall: 'gdk_colormap_free_colors' returning: #void
	args: #( #self #cObject #int )>! !

!GdkColormap methodsFor: 'C call-outs'!
queryColor: pixel result: result
    <cCall: 'gdk_colormap_query_color' returning: #void
	args: #( #self #long #cObject )>! !

!GdkColormap methodsFor: 'C call-outs'!
getVisual
    <cCall: 'gdk_colormap_get_visual' returning: #{GdkVisual}
	args: #( #self )>! !

!GdkColor methodsFor: 'C call-outs'!
copy
    <cCall: 'gdk_color_copy' returning: #{GdkColor}
	args: #( #self )>! !

!GdkColor methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gdk_color_free' returning: #void
	args: #( #self )>! !

!GdkColor class methodsFor: 'C call-outs'!
parse: spec color: color
    <cCall: 'gdk_color_parse' returning: #boolean
	args: #( #string #cObject )>! !

!GdkColor methodsFor: 'C call-outs'!
hash
    <cCall: 'gdk_color_hash' returning: #int
	args: #( #self )>! !

!GdkColor methodsFor: 'C call-outs'!
equal: colorb
    <cCall: 'gdk_color_equal' returning: #boolean
	args: #( #self #cObject )>! !

!GdkColor methodsFor: 'C call-outs'!
toString
    <cCall: 'gdk_color_to_string' returning: #string
	args: #( #self )>! !

!GdkColor class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_color_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkColor!

!Gdk class methodsFor: 'C call-outs'!
colorsAlloc: colormap contiguous: contiguous planes: planes nplanes: nplanes pixels: pixels npixels: npixels
    <cCall: 'gdk_colors_alloc' returning: #int
	args: #( #cObject #boolean #cObject #int #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
colorsFree: colormap pixels: pixels npixels: npixels planes: planes
    <cCall: 'gdk_colors_free' returning: #void
	args: #( #cObject #cObject #int #long )>! !

!GdkDragContext class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_drag_context_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkDragContext!

!GdkDragContext class methodsFor: 'C call-outs'!
new
    <cCall: 'gdk_drag_context_new' returning: #{GdkDragContext}
	args: #( )>! !

!GdkDragContext methodsFor: 'C call-outs'!
listTargets
    <cCall: 'gdk_drag_context_list_targets' returning: #{GList}
	args: #( #self )>! !

!GdkDragContext methodsFor: 'C call-outs'!
getActions
    <cCall: 'gdk_drag_context_get_actions' returning: #int
	args: #( #self )>! !

!GdkDragContext methodsFor: 'C call-outs'!
getSuggestedAction
    <cCall: 'gdk_drag_context_get_suggested_action' returning: #int
	args: #( #self )>! !

!GdkDragContext methodsFor: 'C call-outs'!
getSelectedAction
    <cCall: 'gdk_drag_context_get_selected_action' returning: #int
	args: #( #self )>! !

!GdkDragContext methodsFor: 'C call-outs'!
getSourceWindow
    <cCall: 'gdk_drag_context_get_source_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GdkDragContext methodsFor: 'C call-outs'!
getDestWindow
    <cCall: 'gdk_drag_context_get_dest_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GdkDragContext methodsFor: 'C call-outs'!
getProtocol
    <cCall: 'gdk_drag_context_get_protocol' returning: #int
	args: #( #self )>! !

!Gdk class methodsFor: 'C call-outs'!
dragStatus: context action: action time: time
    <cCall: 'gdk_drag_status' returning: #void
	args: #( #cObject #int #int )>! !

!Gdk class methodsFor: 'C call-outs'!
dropReply: context ok: ok time: time
    <cCall: 'gdk_drop_reply' returning: #void
	args: #( #cObject #boolean #int )>! !

!Gdk class methodsFor: 'C call-outs'!
dropFinish: context success: success time: time
    <cCall: 'gdk_drop_finish' returning: #void
	args: #( #cObject #boolean #int )>! !

!Gdk class methodsFor: 'C call-outs'!
dragGetSelection: context
    <cCall: 'gdk_drag_get_selection' returning: #cObject
	args: #( #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
dragBegin: window targets: targets
    <cCall: 'gdk_drag_begin' returning: #{GdkDragContext}
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
dragGetProtocolForDisplay: display xid: xid protocol: protocol
    <cCall: 'gdk_drag_get_protocol_for_display' returning: #int
	args: #( #cObject #int #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
dragFindWindowForScreen: context dragWindow: dragWindow screen: screen xRoot: xRoot yRoot: yRoot destWindow: destWindow protocol: protocol
    <cCall: 'gdk_drag_find_window_for_screen' returning: #void
	args: #( #cObject #cObject #cObject #int #int #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
dragMotion: context destWindow: destWindow protocol: protocol xRoot: xRoot yRoot: yRoot suggestedAction: suggestedAction possibleActions: possibleActions time: time
    <cCall: 'gdk_drag_motion' returning: #boolean
	args: #( #cObject #cObject #int #int #int #int #int #int )>! !

!Gdk class methodsFor: 'C call-outs'!
dragDrop: context time: time
    <cCall: 'gdk_drag_drop' returning: #void
	args: #( #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
dragAbort: context time: time
    <cCall: 'gdk_drag_abort' returning: #void
	args: #( #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
dragDropSucceeded: context
    <cCall: 'gdk_drag_drop_succeeded' returning: #boolean
	args: #( #cObject )>! !

!GdkDevice class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_device_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkDevice!

!Gdk class methodsFor: 'C call-outs'!
devicesList
    <cCall: 'gdk_devices_list' returning: #{GList}
	args: #( )>! !

!GdkDevice methodsFor: 'C call-outs'!
getSource
    <cCall: 'gdk_device_get_source' returning: #int
	args: #( #self )>! !

!GdkDevice methodsFor: 'C call-outs'!
getMode
    <cCall: 'gdk_device_get_mode' returning: #int
	args: #( #self )>! !

!GdkDevice methodsFor: 'C call-outs'!
getHasCursor
    <cCall: 'gdk_device_get_has_cursor' returning: #boolean
	args: #( #self )>! !

!GdkDevice methodsFor: 'C call-outs'!
getKey: index keyval: keyval modifiers: modifiers
    <cCall: 'gdk_device_get_key' returning: #void
	args: #( #self #int #cObject #cObject )>! !

!GdkDevice methodsFor: 'C call-outs'!
getAxisUse: index
    <cCall: 'gdk_device_get_axis_use' returning: #int
	args: #( #self #int )>! !

!GdkDevice methodsFor: 'C call-outs'!
getNKeys
    <cCall: 'gdk_device_get_n_keys' returning: #int
	args: #( #self )>! !

!GdkDevice methodsFor: 'C call-outs'!
getNAxes
    <cCall: 'gdk_device_get_n_axes' returning: #int
	args: #( #self )>! !

!GdkDevice methodsFor: 'C call-outs'!
setSource: source
    <cCall: 'gdk_device_set_source' returning: #void
	args: #( #self #int )>! !

!GdkDevice methodsFor: 'C call-outs'!
setMode: mode
    <cCall: 'gdk_device_set_mode' returning: #boolean
	args: #( #self #int )>! !

!GdkDevice methodsFor: 'C call-outs'!
setKey: index keyval: keyval modifiers: modifiers
    <cCall: 'gdk_device_set_key' returning: #void
	args: #( #self #int #int #int )>! !

!GdkDevice methodsFor: 'C call-outs'!
setAxisUse: index use: use
    <cCall: 'gdk_device_set_axis_use' returning: #void
	args: #( #self #int #int )>! !

!GdkDevice methodsFor: 'C call-outs'!
getState: window axes: axes mask: mask
    <cCall: 'gdk_device_get_state' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GdkDevice methodsFor: 'C call-outs'!
getHistory: window start: start stop: stop events: events nEvents: nEvents
    <cCall: 'gdk_device_get_history' returning: #boolean
	args: #( #self #cObject #int #int #cObject #cObject )>! !

!GdkDevice class methodsFor: 'C call-outs'!
freeHistory: events nEvents: nEvents
    <cCall: 'gdk_device_free_history' returning: #void
	args: #( #cObject #int )>! !

!GdkDevice methodsFor: 'C call-outs'!
getAxis: axes use: use value: value
    <cCall: 'gdk_device_get_axis' returning: #boolean
	args: #( #self #cObject #int #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
inputSetExtensionEvents: window mask: mask mode: mode
    <cCall: 'gdk_input_set_extension_events' returning: #void
	args: #( #cObject #int #int )>! !

!GdkDevice class methodsFor: 'C call-outs'!
getCorePointer
    <cCall: 'gdk_device_get_core_pointer' returning: #{GdkDevice}
	args: #( )>! !

!GdkEvent class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_event_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkEvent!

!Gdk class methodsFor: 'C call-outs'!
eventsPending
    <cCall: 'gdk_events_pending' returning: #boolean
	args: #( )>! !

!GdkEvent class methodsFor: 'C call-outs'!
get
    <cCall: 'gdk_event_get' returning: #{GdkEvent}
	args: #( )>! !

!GdkEvent class methodsFor: 'C call-outs'!
peek
    <cCall: 'gdk_event_peek' returning: #{GdkEvent}
	args: #( )>! !

!GdkEvent methodsFor: 'C call-outs'!
put
    <cCall: 'gdk_event_put' returning: #void
	args: #( #self )>! !

!GdkEvent class methodsFor: 'C call-outs'!
new: type
    <cCall: 'gdk_event_new' returning: #{GdkEvent}
	args: #( #int )>! !

!GdkEvent methodsFor: 'C call-outs'!
copy
    <cCall: 'gdk_event_copy' returning: #{GdkEvent}
	args: #( #self )>! !

!GdkEvent methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gdk_event_free' returning: #void
	args: #( #self )>! !

!GdkEvent methodsFor: 'C call-outs'!
getTime
    <cCall: 'gdk_event_get_time' returning: #int
	args: #( #self )>! !

!GdkEvent methodsFor: 'C call-outs'!
getState: state
    <cCall: 'gdk_event_get_state' returning: #boolean
	args: #( #self #cObject )>! !

!GdkEvent methodsFor: 'C call-outs'!
getCoords: xWin yWin: yWin
    <cCall: 'gdk_event_get_coords' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GdkEvent methodsFor: 'C call-outs'!
getRootCoords: xRoot yRoot: yRoot
    <cCall: 'gdk_event_get_root_coords' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GdkEvent methodsFor: 'C call-outs'!
getAxis: axisUse value: value
    <cCall: 'gdk_event_get_axis' returning: #boolean
	args: #( #self #int #cObject )>! !

!GdkEvent class methodsFor: 'C call-outs'!
requestMotions: event
    <cCall: 'gdk_event_request_motions' returning: #void
	args: #( #cObject )>! !

!GdkEvent class methodsFor: 'C call-outs'!
handlerSet: func data: data notify: notify
    <cCall: 'gdk_event_handler_set' returning: #void
	args: #( #cObject #cObject #int )>! !

!GdkEvent methodsFor: 'C call-outs'!
setScreen: screen
    <cCall: 'gdk_event_set_screen' returning: #void
	args: #( #self #cObject )>! !

!GdkEvent methodsFor: 'C call-outs'!
getScreen
    <cCall: 'gdk_event_get_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!Gdk class methodsFor: 'C call-outs'!
setShowEvents: showEvents
    <cCall: 'gdk_set_show_events' returning: #void
	args: #( #boolean )>! !

!Gdk class methodsFor: 'C call-outs'!
getShowEvents
    <cCall: 'gdk_get_show_events' returning: #boolean
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
addClientMessageFilter: messageType func: func data: data
    <cCall: 'gdk_add_client_message_filter' returning: #void
	args: #( #cObject #cObject #cObject )>! !

!GdkDisplay class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_display_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkDisplay!

!GdkDisplay class methodsFor: 'C call-outs'!
open: displayName
    <cCall: 'gdk_display_open' returning: #{GdkDisplay}
	args: #( #string )>! !

!GdkDisplay methodsFor: 'C call-outs'!
getNScreens
    <cCall: 'gdk_display_get_n_screens' returning: #int
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
getScreen: screenNum
    <cCall: 'gdk_display_get_screen' returning: #{GdkScreen}
	args: #( #self #int )>! !

!GdkDisplay methodsFor: 'C call-outs'!
getDefaultScreen
    <cCall: 'gdk_display_get_default_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
pointerUngrab: time
    <cCall: 'gdk_display_pointer_ungrab' returning: #void
	args: #( #self #int )>! !

!GdkDisplay methodsFor: 'C call-outs'!
keyboardUngrab: time
    <cCall: 'gdk_display_keyboard_ungrab' returning: #void
	args: #( #self #int )>! !

!GdkDisplay methodsFor: 'C call-outs'!
pointerIsGrabbed
    <cCall: 'gdk_display_pointer_is_grabbed' returning: #boolean
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
beep
    <cCall: 'gdk_display_beep' returning: #void
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
sync
    <cCall: 'gdk_display_sync' returning: #void
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
flush
    <cCall: 'gdk_display_flush' returning: #void
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
close
    <cCall: 'gdk_display_close' returning: #void
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
isClosed
    <cCall: 'gdk_display_is_closed' returning: #boolean
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
listDevices
    <cCall: 'gdk_display_list_devices' returning: #{GList}
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
getEvent
    <cCall: 'gdk_display_get_event' returning: #{GdkEvent}
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
peekEvent
    <cCall: 'gdk_display_peek_event' returning: #{GdkEvent}
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
putEvent: event
    <cCall: 'gdk_display_put_event' returning: #void
	args: #( #self #cObject )>! !

!GdkDisplay methodsFor: 'C call-outs'!
addClientMessageFilter: messageType func: func data: data
    <cCall: 'gdk_display_add_client_message_filter' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GdkDisplay methodsFor: 'C call-outs'!
setDoubleClickTime: msec
    <cCall: 'gdk_display_set_double_click_time' returning: #void
	args: #( #self #int )>! !

!GdkDisplay methodsFor: 'C call-outs'!
setDoubleClickDistance: distance
    <cCall: 'gdk_display_set_double_click_distance' returning: #void
	args: #( #self #int )>! !

!GdkDisplay class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'gdk_display_get_default' returning: #{GdkDisplay}
	args: #( )>! !

!GdkDisplay methodsFor: 'C call-outs'!
getCorePointer
    <cCall: 'gdk_display_get_core_pointer' returning: #{GdkDevice}
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
getPointer: screen x: x y: y mask: mask
    <cCall: 'gdk_display_get_pointer' returning: #void
	args: #( #self #cObject #cObject #cObject #cObject )>! !

!GdkDisplay methodsFor: 'C call-outs'!
getWindowAtPointer: winX winY: winY
    <cCall: 'gdk_display_get_window_at_pointer' returning: #{GdkWindow}
	args: #( #self #cObject #cObject )>! !

!GdkDisplay methodsFor: 'C call-outs'!
warpPointer: screen x: x y: y
    <cCall: 'gdk_display_warp_pointer' returning: #void
	args: #( #self #cObject #int #int )>! !

!GdkDisplay class methodsFor: 'C call-outs'!
openDefaultLibgtkOnly
    <cCall: 'gdk_display_open_default_libgtk_only' returning: #{GdkDisplay}
	args: #( )>! !

!GdkDisplay methodsFor: 'C call-outs'!
supportsCursorAlpha
    <cCall: 'gdk_display_supports_cursor_alpha' returning: #boolean
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
supportsCursorColor
    <cCall: 'gdk_display_supports_cursor_color' returning: #boolean
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
getDefaultCursorSize
    <cCall: 'gdk_display_get_default_cursor_size' returning: #int
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
getMaximalCursorSize: width height: height
    <cCall: 'gdk_display_get_maximal_cursor_size' returning: #void
	args: #( #self #cObject #cObject )>! !

!GdkDisplay methodsFor: 'C call-outs'!
getDefaultGroup
    <cCall: 'gdk_display_get_default_group' returning: #{GdkWindow}
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
supportsSelectionNotification
    <cCall: 'gdk_display_supports_selection_notification' returning: #boolean
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
requestSelectionNotification: selection
    <cCall: 'gdk_display_request_selection_notification' returning: #boolean
	args: #( #self #cObject )>! !

!GdkDisplay methodsFor: 'C call-outs'!
supportsClipboardPersistence
    <cCall: 'gdk_display_supports_clipboard_persistence' returning: #boolean
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
storeClipboard: clipboardWindow time: time targets: targets nTargets: nTargets
    <cCall: 'gdk_display_store_clipboard' returning: #void
	args: #( #self #cObject #int #cObject #int )>! !

!GdkDisplay methodsFor: 'C call-outs'!
supportsShapes
    <cCall: 'gdk_display_supports_shapes' returning: #boolean
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
supportsInputShapes
    <cCall: 'gdk_display_supports_input_shapes' returning: #boolean
	args: #( #self )>! !

!GdkDisplay methodsFor: 'C call-outs'!
supportsComposite
    <cCall: 'gdk_display_supports_composite' returning: #boolean
	args: #( #self )>! !

!GdkScreen class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_screen_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkScreen!

!GdkScreen methodsFor: 'C call-outs'!
getDefaultColormap
    <cCall: 'gdk_screen_get_default_colormap' returning: #{GdkColormap}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
setDefaultColormap: colormap
    <cCall: 'gdk_screen_set_default_colormap' returning: #void
	args: #( #self #cObject )>! !

!GdkScreen methodsFor: 'C call-outs'!
getSystemColormap
    <cCall: 'gdk_screen_get_system_colormap' returning: #{GdkColormap}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getSystemVisual
    <cCall: 'gdk_screen_get_system_visual' returning: #{GdkVisual}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getRgbColormap
    <cCall: 'gdk_screen_get_rgb_colormap' returning: #{GdkColormap}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getRgbVisual
    <cCall: 'gdk_screen_get_rgb_visual' returning: #{GdkVisual}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getRgbaColormap
    <cCall: 'gdk_screen_get_rgba_colormap' returning: #{GdkColormap}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getRgbaVisual
    <cCall: 'gdk_screen_get_rgba_visual' returning: #{GdkVisual}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
isComposited
    <cCall: 'gdk_screen_is_composited' returning: #boolean
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getRootWindow
    <cCall: 'gdk_screen_get_root_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getDisplay
    <cCall: 'gdk_screen_get_display' returning: #{GdkDisplay}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getNumber
    <cCall: 'gdk_screen_get_number' returning: #int
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getWidth
    <cCall: 'gdk_screen_get_width' returning: #int
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getHeight
    <cCall: 'gdk_screen_get_height' returning: #int
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getWidthMm
    <cCall: 'gdk_screen_get_width_mm' returning: #int
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getHeightMm
    <cCall: 'gdk_screen_get_height_mm' returning: #int
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
listVisuals
    <cCall: 'gdk_screen_list_visuals' returning: #{GList}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getToplevelWindows
    <cCall: 'gdk_screen_get_toplevel_windows' returning: #{GList}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
makeDisplayName
    <cCall: 'gdk_screen_make_display_name' returning: #string
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getNMonitors
    <cCall: 'gdk_screen_get_n_monitors' returning: #int
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getPrimaryMonitor
    <cCall: 'gdk_screen_get_primary_monitor' returning: #int
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getMonitorGeometry: monitorNum dest: dest
    <cCall: 'gdk_screen_get_monitor_geometry' returning: #void
	args: #( #self #int #cObject )>! !

!GdkScreen methodsFor: 'C call-outs'!
getMonitorAtPoint: x y: y
    <cCall: 'gdk_screen_get_monitor_at_point' returning: #int
	args: #( #self #int #int )>! !

!GdkScreen methodsFor: 'C call-outs'!
getMonitorAtWindow: window
    <cCall: 'gdk_screen_get_monitor_at_window' returning: #int
	args: #( #self #cObject )>! !

!GdkScreen methodsFor: 'C call-outs'!
getMonitorWidthMm: monitorNum
    <cCall: 'gdk_screen_get_monitor_width_mm' returning: #int
	args: #( #self #int )>! !

!GdkScreen methodsFor: 'C call-outs'!
getMonitorHeightMm: monitorNum
    <cCall: 'gdk_screen_get_monitor_height_mm' returning: #int
	args: #( #self #int )>! !

!GdkScreen methodsFor: 'C call-outs'!
getMonitorPlugName: monitorNum
    <cCall: 'gdk_screen_get_monitor_plug_name' returning: #string
	args: #( #self #int )>! !

!GdkScreen methodsFor: 'C call-outs'!
broadcastClientMessage: event
    <cCall: 'gdk_screen_broadcast_client_message' returning: #void
	args: #( #self #cObject )>! !

!GdkScreen class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'gdk_screen_get_default' returning: #{GdkScreen}
	args: #( )>! !

!GdkScreen methodsFor: 'C call-outs'!
setFontOptions: options
    <cCall: 'gdk_screen_set_font_options' returning: #void
	args: #( #self #cObject )>! !

!GdkScreen methodsFor: 'C call-outs'!
setResolution: dpi
    <cCall: 'gdk_screen_set_resolution' returning: #void
	args: #( #self #double )>! !

!GdkScreen methodsFor: 'C call-outs'!
getResolution
    <cCall: 'gdk_screen_get_resolution' returning: #double
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getActiveWindow
    <cCall: 'gdk_screen_get_active_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GdkScreen methodsFor: 'C call-outs'!
getWindowStack
    <cCall: 'gdk_screen_get_window_stack' returning: #{GList}
	args: #( #self )>! !

!Gdk class methodsFor: 'C call-outs'!
appLaunchContextNew
    <cCall: 'gdk_app_launch_context_new' returning: #{GdkAppLaunchContext}
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
appLaunchContextSetDisplay: context display: display
    <cCall: 'gdk_app_launch_context_set_display' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
appLaunchContextSetScreen: context screen: screen
    <cCall: 'gdk_app_launch_context_set_screen' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
appLaunchContextSetDesktop: context desktop: desktop
    <cCall: 'gdk_app_launch_context_set_desktop' returning: #void
	args: #( #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
appLaunchContextSetTimestamp: context timestamp: timestamp
    <cCall: 'gdk_app_launch_context_set_timestamp' returning: #void
	args: #( #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
appLaunchContextSetIcon: context icon: icon
    <cCall: 'gdk_app_launch_context_set_icon' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
appLaunchContextSetIconName: context iconName: iconName
    <cCall: 'gdk_app_launch_context_set_icon_name' returning: #void
	args: #( #cObject #string )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_pixbuf_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkPixbuf!

!GdkPixbuf methodsFor: 'C call-outs'!
ref
    <cCall: 'gdk_pixbuf_ref' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'gdk_pixbuf_unref' returning: #void
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getColorspace
    <cCall: 'gdk_pixbuf_get_colorspace' returning: #int
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getNChannels
    <cCall: 'gdk_pixbuf_get_n_channels' returning: #int
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getHasAlpha
    <cCall: 'gdk_pixbuf_get_has_alpha' returning: #boolean
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getBitsPerSample
    <cCall: 'gdk_pixbuf_get_bits_per_sample' returning: #int
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getPixels
    <cCall: 'gdk_pixbuf_get_pixels' returning: CInt type
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getWidth
    <cCall: 'gdk_pixbuf_get_width' returning: #int
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getHeight
    <cCall: 'gdk_pixbuf_get_height' returning: #int
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getRowstride
    <cCall: 'gdk_pixbuf_get_rowstride' returning: #int
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getByteLength
    <cCall: 'gdk_pixbuf_get_byte_length' returning: #int
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getPixelsWithLength: length
    <cCall: 'gdk_pixbuf_get_pixels_with_length' returning: CInt type
	args: #( #self #cObject )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
readPixelBytes
    <cCall: 'gdk_pixbuf_read_pixel_bytes' returning: #{GBytes}
	args: #( #self )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
new: colorspace hasAlpha: hasAlpha bitsPerSample: bitsPerSample width: width height: height
    <cCall: 'gdk_pixbuf_new' returning: #{GdkPixbuf}
	args: #( #int #boolean #int #int #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
copy
    <cCall: 'gdk_pixbuf_copy' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
newSubpixbuf: srcX srcY: srcY width: width height: height
    <cCall: 'gdk_pixbuf_new_subpixbuf' returning: #{GdkPixbuf}
	args: #( #self #int #int #int #int )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromFile: filename error: error
    <cCall: 'gdk_pixbuf_new_from_file' returning: #{GdkPixbuf}
	args: #( #string #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromFileAtSize: filename width: width height: height error: error
    <cCall: 'gdk_pixbuf_new_from_file_at_size' returning: #{GdkPixbuf}
	args: #( #string #int #int #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromFileAtScale: filename width: width height: height preserveAspectRatio: preserveAspectRatio error: error
    <cCall: 'gdk_pixbuf_new_from_file_at_scale' returning: #{GdkPixbuf}
	args: #( #string #int #int #boolean #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromResource: resourcePath error: error
    <cCall: 'gdk_pixbuf_new_from_resource' returning: #{GdkPixbuf}
	args: #( #string #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromResourceAtScale: resourcePath width: width height: height preserveAspectRatio: preserveAspectRatio error: error
    <cCall: 'gdk_pixbuf_new_from_resource_at_scale' returning: #{GdkPixbuf}
	args: #( #string #int #int #boolean #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromData: data colorspace: colorspace hasAlpha: hasAlpha bitsPerSample: bitsPerSample width: width height: height rowstride: rowstride destroyFn: destroyFn destroyFnData: destroyFnData
    <cCall: 'gdk_pixbuf_new_from_data' returning: #{GdkPixbuf}
	args: #( #cObject #int #boolean #int #int #int #int #int #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromBytes: data colorspace: colorspace hasAlpha: hasAlpha bitsPerSample: bitsPerSample width: width height: height rowstride: rowstride
    <cCall: 'gdk_pixbuf_new_from_bytes' returning: #{GdkPixbuf}
	args: #( #cObject #int #boolean #int #int #int #int )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromXpmData: data
    <cCall: 'gdk_pixbuf_new_from_xpm_data' returning: #{GdkPixbuf}
	args: #( #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromInline: dataLength data: data copyPixels: copyPixels error: error
    <cCall: 'gdk_pixbuf_new_from_inline' returning: #{GdkPixbuf}
	args: #( #int #cObject #boolean #cObject )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
fill: pixel
    <cCall: 'gdk_pixbuf_fill' returning: #void
	args: #( #self #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
save: filename type: type error: error varargs: varargs
    <cCall: 'gdk_pixbuf_save' returning: #boolean
	args: #( #self #string #string #cObject #variadic )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
savev: filename type: type optionKeys: optionKeys optionValues: optionValues error: error
    <cCall: 'gdk_pixbuf_savev' returning: #boolean
	args: #( #self #string #string #cObject #cObject #cObject )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
saveToCallback: saveFunc userData: userData type: type error: error varargs: varargs
    <cCall: 'gdk_pixbuf_save_to_callback' returning: #boolean
	args: #( #self #cObject #cObject #string #cObject #variadic )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
saveToCallbackv: saveFunc userData: userData type: type optionKeys: optionKeys optionValues: optionValues error: error
    <cCall: 'gdk_pixbuf_save_to_callbackv' returning: #boolean
	args: #( #self #cObject #cObject #string #cObject #cObject #cObject )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
saveToBuffer: buffer bufferSize: bufferSize type: type error: error varargs: varargs
    <cCall: 'gdk_pixbuf_save_to_buffer' returning: #boolean
	args: #( #self #cObject #cObject #string #cObject #variadic )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
saveToBufferv: buffer bufferSize: bufferSize type: type optionKeys: optionKeys optionValues: optionValues error: error
    <cCall: 'gdk_pixbuf_save_to_bufferv' returning: #boolean
	args: #( #self #cObject #cObject #string #cObject #cObject #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromStream: stream cancellable: cancellable error: error
    <cCall: 'gdk_pixbuf_new_from_stream' returning: #{GdkPixbuf}
	args: #( #cObject #cObject #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromStreamAsync: stream cancellable: cancellable callback: callback userData: userData
    <cCall: 'gdk_pixbuf_new_from_stream_async' returning: #{GdkPixbuf}
	args: #( #cObject #cObject #int #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromStreamFinish: asyncResult error: error
    <cCall: 'gdk_pixbuf_new_from_stream_finish' returning: #{GdkPixbuf}
	args: #( #cObject #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromStreamAtScale: stream width: width height: height preserveAspectRatio: preserveAspectRatio cancellable: cancellable error: error
    <cCall: 'gdk_pixbuf_new_from_stream_at_scale' returning: #{GdkPixbuf}
	args: #( #cObject #int #int #boolean #cObject #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
newFromStreamAtScaleAsync: stream width: width height: height preserveAspectRatio: preserveAspectRatio cancellable: cancellable callback: callback userData: userData
    <cCall: 'gdk_pixbuf_new_from_stream_at_scale_async' returning: #{GdkPixbuf}
	args: #( #cObject #int #int #boolean #cObject #int #cObject )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
saveToStream: stream type: type cancellable: cancellable error: error varargs: varargs
    <cCall: 'gdk_pixbuf_save_to_stream' returning: #boolean
	args: #( #self #cObject #string #cObject #cObject #variadic )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
saveToStreamAsync: stream type: type cancellable: cancellable callback: callback userData: userData varargs: varargs
    <cCall: 'gdk_pixbuf_save_to_stream_async' returning: #void
	args: #( #self #cObject #string #cObject #int #cObject #variadic )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
saveToStreamFinish: asyncResult error: error
    <cCall: 'gdk_pixbuf_save_to_stream_finish' returning: #boolean
	args: #( #cObject #cObject )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
addAlpha: substituteColor r: r g: g b: b
    <cCall: 'gdk_pixbuf_add_alpha' returning: #{GdkPixbuf}
	args: #( #self #boolean #int #int #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
copyArea: srcX srcY: srcY width: width height: height destPixbuf: destPixbuf destX: destX destY: destY
    <cCall: 'gdk_pixbuf_copy_area' returning: #void
	args: #( #self #int #int #int #int #cObject #int #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
saturateAndPixelate: dest saturation: saturation pixelate: pixelate
    <cCall: 'gdk_pixbuf_saturate_and_pixelate' returning: #void
	args: #( #self #cObject #float #boolean )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
applyEmbeddedOrientation
    <cCall: 'gdk_pixbuf_apply_embedded_orientation' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getOptions
    <cCall: 'gdk_pixbuf_get_options' returning: #{GHashTable}
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
scale: dest destX: destX destY: destY destWidth: destWidth destHeight: destHeight offsetX: offsetX offsetY: offsetY scaleX: scaleX scaleY: scaleY interpType: interpType
    <cCall: 'gdk_pixbuf_scale' returning: #void
	args: #( #self #cObject #int #int #int #int #double #double #double #double #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
composite: dest destX: destX destY: destY destWidth: destWidth destHeight: destHeight offsetX: offsetX offsetY: offsetY scaleX: scaleX scaleY: scaleY interpType: interpType overallAlpha: overallAlpha
    <cCall: 'gdk_pixbuf_composite' returning: #void
	args: #( #self #cObject #int #int #int #int #double #double #double #double #int #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
compositeColor: dest destX: destX destY: destY destWidth: destWidth destHeight: destHeight offsetX: offsetX offsetY: offsetY scaleX: scaleX scaleY: scaleY interpType: interpType overallAlpha: overallAlpha checkX: checkX checkY: checkY checkSize: checkSize color1: color1 color2: color2
    <cCall: 'gdk_pixbuf_composite_color' returning: #void
	args: #( #self #cObject #int #int #int #int #double #double #double #double #int #int #int #int #int #int #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
scaleSimple: destWidth destHeight: destHeight interpType: interpType
    <cCall: 'gdk_pixbuf_scale_simple' returning: #{GdkPixbuf}
	args: #( #self #int #int #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
compositeColorSimple: destWidth destHeight: destHeight interpType: interpType overallAlpha: overallAlpha checkSize: checkSize color1: color1 color2: color2
    <cCall: 'gdk_pixbuf_composite_color_simple' returning: #{GdkPixbuf}
	args: #( #self #int #int #int #int #int #int #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
rotateSimple: angle
    <cCall: 'gdk_pixbuf_rotate_simple' returning: #{GdkPixbuf}
	args: #( #self #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
flip: horizontal
    <cCall: 'gdk_pixbuf_flip' returning: #{GdkPixbuf}
	args: #( #self #boolean )>! !

!GdkPixbufAnimation class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_pixbuf_animation_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkPixbufAnimation!

!GdkPixbufAnimation class methodsFor: 'C call-outs'!
newFromFile: filename error: error
    <cCall: 'gdk_pixbuf_animation_new_from_file' returning: #{GdkPixbufAnimation}
	args: #( #string #cObject )>! !

!GdkPixbufAnimation class methodsFor: 'C call-outs'!
newFromStream: stream cancellable: cancellable error: error
    <cCall: 'gdk_pixbuf_animation_new_from_stream' returning: #{GdkPixbufAnimation}
	args: #( #cObject #cObject #cObject )>! !

!GdkPixbufAnimation class methodsFor: 'C call-outs'!
newFromStreamAsync: stream cancellable: cancellable callback: callback userData: userData
    <cCall: 'gdk_pixbuf_animation_new_from_stream_async' returning: #{GdkPixbufAnimation}
	args: #( #cObject #cObject #int #cObject )>! !

!GdkPixbufAnimation class methodsFor: 'C call-outs'!
newFromStreamFinish: GasyncresultasyncResult error: error
    <cCall: 'gdk_pixbuf_animation_new_from_stream_finish' returning: #{GdkPixbufAnimation}
	args: #( #int #cObject )>! !

!GdkPixbufAnimation class methodsFor: 'C call-outs'!
newFromResource: resourcePath error: error
    <cCall: 'gdk_pixbuf_animation_new_from_resource' returning: #{GdkPixbufAnimation}
	args: #( #string #cObject )>! !

!GdkPixbufAnimation methodsFor: 'C call-outs'!
ref
    <cCall: 'gdk_pixbuf_animation_ref' returning: #{GdkPixbufAnimation}
	args: #( #self )>! !

!GdkPixbufAnimation methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'gdk_pixbuf_animation_unref' returning: #void
	args: #( #self )>! !

!GdkPixbufAnimation methodsFor: 'C call-outs'!
getWidth
    <cCall: 'gdk_pixbuf_animation_get_width' returning: #int
	args: #( #self )>! !

!GdkPixbufAnimation methodsFor: 'C call-outs'!
getHeight
    <cCall: 'gdk_pixbuf_animation_get_height' returning: #int
	args: #( #self )>! !

!GdkPixbufAnimation methodsFor: 'C call-outs'!
isStaticImage
    <cCall: 'gdk_pixbuf_animation_is_static_image' returning: #boolean
	args: #( #self )>! !

!GdkPixbufAnimation methodsFor: 'C call-outs'!
getStaticImage
    <cCall: 'gdk_pixbuf_animation_get_static_image' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GdkPixbufAnimation methodsFor: 'C call-outs'!
getIter: startTime
    <cCall: 'gdk_pixbuf_animation_get_iter' returning: #{GdkPixbufAnimationIter}
	args: #( #self #cObject )>! !

!GdkPixbufAnimationIter class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_pixbuf_animation_iter_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkPixbufAnimationIter!

!GdkPixbufAnimationIter methodsFor: 'C call-outs'!
getDelayTime
    <cCall: 'gdk_pixbuf_animation_iter_get_delay_time' returning: #int
	args: #( #self )>! !

!GdkPixbufAnimationIter methodsFor: 'C call-outs'!
getPixbuf
    <cCall: 'gdk_pixbuf_animation_iter_get_pixbuf' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GdkPixbufAnimationIter methodsFor: 'C call-outs'!
onCurrentlyLoadingFrame
    <cCall: 'gdk_pixbuf_animation_iter_on_currently_loading_frame' returning: #boolean
	args: #( #self )>! !

!GdkPixbufAnimationIter methodsFor: 'C call-outs'!
advance: currentTime
    <cCall: 'gdk_pixbuf_animation_iter_advance' returning: #boolean
	args: #( #self #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
nonAnimGetType
    <cCall: 'gdk_pixbuf_non_anim_get_type' returning: #long
	args: #( )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
nonAnimNew
    <cCall: 'gdk_pixbuf_non_anim_new' returning: #{GdkPixbufAnimation}
	args: #( #self )>! !

!GdkPixbufSimpleAnim class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_pixbuf_simple_anim_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkPixbufSimpleAnim!

!GdkPixbufSimpleAnim class methodsFor: 'C call-outs'!
iterGetType
    <cCall: 'gdk_pixbuf_simple_anim_iter_get_type' returning: #long
	args: #( )>! !

!GdkPixbufSimpleAnim class methodsFor: 'C call-outs'!
new: width height: height rate: rate
    <cCall: 'gdk_pixbuf_simple_anim_new' returning: #{GdkPixbufSimpleAnim}
	args: #( #int #int #float )>! !

!GdkPixbufSimpleAnim methodsFor: 'C call-outs'!
addFrame: pixbuf
    <cCall: 'gdk_pixbuf_simple_anim_add_frame' returning: #void
	args: #( #self #cObject )>! !

!GdkPixbufSimpleAnim methodsFor: 'C call-outs'!
setLoop: loop
    <cCall: 'gdk_pixbuf_simple_anim_set_loop' returning: #void
	args: #( #self #boolean )>! !

!GdkPixbufSimpleAnim methodsFor: 'C call-outs'!
getLoop
    <cCall: 'gdk_pixbuf_simple_anim_get_loop' returning: #boolean
	args: #( #self )>! !

!GdkPixbufFormat class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_pixbuf_format_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkPixbufFormat!

!GdkPixbuf class methodsFor: 'C call-outs'!
getFormats
    <cCall: 'gdk_pixbuf_get_formats' returning: #{GSList}
	args: #( )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
getName
    <cCall: 'gdk_pixbuf_format_get_name' returning: #string
	args: #( #self )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
getDescription
    <cCall: 'gdk_pixbuf_format_get_description' returning: #string
	args: #( #self )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
getMimeTypes
    <cCall: 'gdk_pixbuf_format_get_mime_types' returning: #string
	args: #( #self )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
getExtensions
    <cCall: 'gdk_pixbuf_format_get_extensions' returning: #string
	args: #( #self )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
isWritable
    <cCall: 'gdk_pixbuf_format_is_writable' returning: #boolean
	args: #( #self )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
isScalable
    <cCall: 'gdk_pixbuf_format_is_scalable' returning: #boolean
	args: #( #self )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
isDisabled
    <cCall: 'gdk_pixbuf_format_is_disabled' returning: #boolean
	args: #( #self )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
setDisabled: disabled
    <cCall: 'gdk_pixbuf_format_set_disabled' returning: #void
	args: #( #self #boolean )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
getLicense
    <cCall: 'gdk_pixbuf_format_get_license' returning: #string
	args: #( #self )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
getFileInfo: filename width: width height: height
    <cCall: 'gdk_pixbuf_get_file_info' returning: #{GdkPixbufFormat}
	args: #( #string #cObject #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
getFileInfoAsync: filename cancellable: cancellable callback: callback userData: userData
    <cCall: 'gdk_pixbuf_get_file_info_async' returning: #void
	args: #( #string #cObject #int #cObject )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
getFileInfoFinish: asyncResult width: width height: height error: error
    <cCall: 'gdk_pixbuf_get_file_info_finish' returning: #{GdkPixbufFormat}
	args: #( #cObject #cObject #cObject #cObject )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
copy
    <cCall: 'gdk_pixbuf_format_copy' returning: #{GdkPixbufFormat}
	args: #( #self )>! !

!GdkPixbufFormat methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gdk_pixbuf_format_free' returning: #void
	args: #( #self )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
setOption: key value: value
    <cCall: 'gdk_pixbuf_set_option' returning: #boolean
	args: #( #self #string #string )>! !

!GdkPixbufLoader class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_pixbuf_loader_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkPixbufLoader!

!GdkPixbufLoader class methodsFor: 'C call-outs'!
new
    <cCall: 'gdk_pixbuf_loader_new' returning: #{GdkPixbufLoader}
	args: #( )>! !

!GdkPixbufLoader class methodsFor: 'C call-outs'!
newWithType: imageType error: error
    <cCall: 'gdk_pixbuf_loader_new_with_type' returning: #{GdkPixbufLoader}
	args: #( #string #cObject )>! !

!GdkPixbufLoader class methodsFor: 'C call-outs'!
newWithMimeType: mimeType error: error
    <cCall: 'gdk_pixbuf_loader_new_with_mime_type' returning: #{GdkPixbufLoader}
	args: #( #string #cObject )>! !

!GdkPixbufLoader methodsFor: 'C call-outs'!
setSize: width height: height
    <cCall: 'gdk_pixbuf_loader_set_size' returning: #void
	args: #( #self #int #int )>! !

!GdkPixbufLoader methodsFor: 'C call-outs'!
write: buf count: count error: error
    <cCall: 'gdk_pixbuf_loader_write' returning: #boolean
	args: #( #self #cObject #int #cObject )>! !

!GdkPixbufLoader methodsFor: 'C call-outs'!
writeBytes: buffer error: error
    <cCall: 'gdk_pixbuf_loader_write_bytes' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GdkPixbufLoader methodsFor: 'C call-outs'!
getPixbuf
    <cCall: 'gdk_pixbuf_loader_get_pixbuf' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GdkPixbufLoader methodsFor: 'C call-outs'!
getAnimation
    <cCall: 'gdk_pixbuf_loader_get_animation' returning: #{GdkPixbufAnimation}
	args: #( #self )>! !

!GdkPixbufLoader methodsFor: 'C call-outs'!
close: error
    <cCall: 'gdk_pixbuf_loader_close' returning: #boolean
	args: #( #self #cObject )>! !

!GdkPixbufLoader methodsFor: 'C call-outs'!
getFormat
    <cCall: 'gdk_pixbuf_loader_get_format' returning: #{GdkPixbufFormat}
	args: #( #self )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
alphaModeGetType
    <cCall: 'gdk_pixbuf_alpha_mode_get_type' returning: #long
	args: #( )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
errorGetType
    <cCall: 'gdk_pixbuf_error_get_type' returning: #long
	args: #( )>! !

!GdkPixbuf class methodsFor: 'C call-outs'!
rotationGetType
    <cCall: 'gdk_pixbuf_rotation_get_type' returning: #long
	args: #( )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
renderThresholdAlpha: bitmap srcX: srcX srcY: srcY destX: destX destY: destY width: width height: height alphaThreshold: alphaThreshold
    <cCall: 'gdk_pixbuf_render_threshold_alpha' returning: #void
	args: #( #self #cObject #int #int #int #int #int #int #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
renderPixmapAndMaskForColormap: colormap pixmapReturn: pixmapReturn maskReturn: maskReturn alphaThreshold: alphaThreshold
    <cCall: 'gdk_pixbuf_render_pixmap_and_mask_for_colormap' returning: #void
	args: #( #self #cObject #cObject #cObject #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
renderPixmapAndMask: pixmapReturn maskReturn: maskReturn alphaThreshold: alphaThreshold
    <cCall: 'gdk_pixbuf_render_pixmap_and_mask' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getFromDrawable: src cmap: cmap srcX: srcX srcY: srcY destX: destX destY: destY width: width height: height
    <cCall: 'gdk_pixbuf_get_from_drawable' returning: #{GdkPixbuf}
	args: #( #self #cObject #cObject #int #int #int #int #int #int )>! !

!GdkPixbuf methodsFor: 'C call-outs'!
getFromImage: src cmap: cmap srcX: srcX srcY: srcY destX: destX destY: destY width: width height: height
    <cCall: 'gdk_pixbuf_get_from_image' returning: #{GdkPixbuf}
	args: #( #self #cObject #cObject #int #int #int #int #int #int )>! !

!PangoCairoFontMap class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_cairo_font_map_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoCairoFontMap!

!PangoCairoFontMap class methodsFor: 'C call-outs'!
new
    <cCall: 'pango_cairo_font_map_new' returning: #{PangoCairoFontMap}
	args: #( )>! !

!PangoCairoFontMap class methodsFor: 'C call-outs'!
newForFontType: fonttype
    <cCall: 'pango_cairo_font_map_new_for_font_type' returning: #{PangoCairoFontMap}
	args: #( #int )>! !

!PangoCairoFontMap class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'pango_cairo_font_map_get_default' returning: #{PangoFontMap}
	args: #( )>! !

!PangoCairoFontMap methodsFor: 'C call-outs'!
setDefault
    <cCall: 'pango_cairo_font_map_set_default' returning: #void
	args: #( #self )>! !

!PangoCairoFontMap methodsFor: 'C call-outs'!
setResolution: dpi
    <cCall: 'pango_cairo_font_map_set_resolution' returning: #void
	args: #( #self #double )>! !

!PangoCairoFontMap methodsFor: 'C call-outs'!
getResolution
    <cCall: 'pango_cairo_font_map_get_resolution' returning: #double
	args: #( #self )>! !

!PangoCairoFontMap methodsFor: 'C call-outs'!
createContext
    <cCall: 'pango_cairo_font_map_create_context' returning: #{PangoContext}
	args: #( #self )>! !

!PangoCairoFont class methodsFor: 'C call-outs'!
getType
    <cCall: 'pango_cairo_font_get_type' returning: #long
	args: #( )>! !

GLib registerType: PangoCairoFont!

!Pango class methodsFor: 'C call-outs'!
cairoUpdateContext: cr context: context
    <cCall: 'pango_cairo_update_context' returning: #void
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoContextSetFontOptions: context options: options
    <cCall: 'pango_cairo_context_set_font_options' returning: #void
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoContextSetResolution: context dpi: dpi
    <cCall: 'pango_cairo_context_set_resolution' returning: #void
	args: #( #cObject #double )>! !

!Pango class methodsFor: 'C call-outs'!
cairoContextGetResolution: context
    <cCall: 'pango_cairo_context_get_resolution' returning: #double
	args: #( #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoContextSetShapeRenderer: context func: func data: data dnotify: dnotify
    <cCall: 'pango_cairo_context_set_shape_renderer' returning: #void
	args: #( #cObject #cObject #cObject #int )>! !

!Pango class methodsFor: 'C call-outs'!
cairoContextGetShapeRenderer: context data: data
    <cCall: 'pango_cairo_context_get_shape_renderer' returning: #int
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoCreateContext: cr
    <cCall: 'pango_cairo_create_context' returning: #{PangoContext}
	args: #( #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoCreateLayout: cr
    <cCall: 'pango_cairo_create_layout' returning: #{PangoLayout}
	args: #( #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoUpdateLayout: cr layout: layout
    <cCall: 'pango_cairo_update_layout' returning: #void
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoShowGlyphString: cr font: font glyphs: glyphs
    <cCall: 'pango_cairo_show_glyph_string' returning: #void
	args: #( #cObject #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoShowGlyphItem: cr text: text glyphItem: glyphItem
    <cCall: 'pango_cairo_show_glyph_item' returning: #void
	args: #( #cObject #string #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoShowLayoutLine: cr line: line
    <cCall: 'pango_cairo_show_layout_line' returning: #void
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoShowLayout: cr layout: layout
    <cCall: 'pango_cairo_show_layout' returning: #void
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoShowErrorUnderline: cr x: x y: y width: width height: height
    <cCall: 'pango_cairo_show_error_underline' returning: #void
	args: #( #cObject #double #double #double #double )>! !

!Pango class methodsFor: 'C call-outs'!
cairoGlyphStringPath: cr font: font glyphs: glyphs
    <cCall: 'pango_cairo_glyph_string_path' returning: #void
	args: #( #cObject #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoLayoutLinePath: cr line: line
    <cCall: 'pango_cairo_layout_line_path' returning: #void
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoLayoutPath: cr layout: layout
    <cCall: 'pango_cairo_layout_path' returning: #void
	args: #( #cObject #cObject )>! !

!Pango class methodsFor: 'C call-outs'!
cairoErrorUnderlinePath: cr x: x y: y width: width height: height
    <cCall: 'pango_cairo_error_underline_path' returning: #void
	args: #( #cObject #double #double #double #double )>! !

!Gdk class methodsFor: 'C call-outs'!
cairoResetClip: cr drawable: drawable
    <cCall: 'gdk_cairo_reset_clip' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
cairoSetSourceColor: cr color: color
    <cCall: 'gdk_cairo_set_source_color' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
cairoSetSourcePixbuf: cr pixbuf: pixbuf pixbufX: pixbufX pixbufY: pixbufY
    <cCall: 'gdk_cairo_set_source_pixbuf' returning: #void
	args: #( #cObject #cObject #double #double )>! !

!Gdk class methodsFor: 'C call-outs'!
cairoSetSourcePixmap: cr pixmap: pixmap pixmapX: pixmapX pixmapY: pixmapY
    <cCall: 'gdk_cairo_set_source_pixmap' returning: #void
	args: #( #cObject #cObject #double #double )>! !

!Gdk class methodsFor: 'C call-outs'!
cairoSetSourceWindow: cr window: window x: x y: y
    <cCall: 'gdk_cairo_set_source_window' returning: #void
	args: #( #cObject #cObject #double #double )>! !

!Gdk class methodsFor: 'C call-outs'!
cairoRectangle: cr rectangle: rectangle
    <cCall: 'gdk_cairo_rectangle' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
cairoRegion: cr region: region
    <cCall: 'gdk_cairo_region' returning: #void
	args: #( #cObject #cObject )>! !

!GdkCursor class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_cursor_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkCursor!

!GdkCursor class methodsFor: 'C call-outs'!
newForDisplay: display cursorType: cursorType
    <cCall: 'gdk_cursor_new_for_display' returning: #{GdkCursor}
	args: #( #cObject #int )>! !

!GdkCursor class methodsFor: 'C call-outs'!
new: cursorType
    <cCall: 'gdk_cursor_new' returning: #{GdkCursor}
	args: #( #int )>! !

!GdkCursor class methodsFor: 'C call-outs'!
newFromPixmap: source mask: mask fg: fg bg: bg x: x y: y
    <cCall: 'gdk_cursor_new_from_pixmap' returning: #{GdkCursor}
	args: #( #cObject #cObject #cObject #cObject #int #int )>! !

!GdkCursor class methodsFor: 'C call-outs'!
newFromPixbuf: display pixbuf: pixbuf x: x y: y
    <cCall: 'gdk_cursor_new_from_pixbuf' returning: #{GdkCursor}
	args: #( #cObject #cObject #int #int )>! !

!GdkCursor methodsFor: 'C call-outs'!
getDisplay
    <cCall: 'gdk_cursor_get_display' returning: #{GdkDisplay}
	args: #( #self )>! !

!GdkCursor methodsFor: 'C call-outs'!
ref
    <cCall: 'gdk_cursor_ref' returning: #{GdkCursor}
	args: #( #self )>! !

!GdkCursor methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'gdk_cursor_unref' returning: #void
	args: #( #self )>! !

!GdkCursor class methodsFor: 'C call-outs'!
newFromName: display name: name
    <cCall: 'gdk_cursor_new_from_name' returning: #{GdkCursor}
	args: #( #cObject #string )>! !

!GdkCursor methodsFor: 'C call-outs'!
getImage
    <cCall: 'gdk_cursor_get_image' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GdkCursor methodsFor: 'C call-outs'!
getCursorType
    <cCall: 'gdk_cursor_get_cursor_type' returning: #int
	args: #( #self )>! !

!GdkDisplayManager class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_display_manager_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkDisplayManager!

!GdkDisplayManager class methodsFor: 'C call-outs'!
get
    <cCall: 'gdk_display_manager_get' returning: #{GdkDisplayManager}
	args: #( )>! !

!GdkDisplayManager methodsFor: 'C call-outs'!
getDefaultDisplay
    <cCall: 'gdk_display_manager_get_default_display' returning: #{GdkDisplay}
	args: #( #self )>! !

!GdkDisplayManager methodsFor: 'C call-outs'!
setDefaultDisplay: display
    <cCall: 'gdk_display_manager_set_default_display' returning: #void
	args: #( #self #cObject )>! !

!GdkDisplayManager methodsFor: 'C call-outs'!
listDisplays
    <cCall: 'gdk_display_manager_list_displays' returning: #{GSList}
	args: #( #self )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_drawable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkDrawable!

!GdkDrawable methodsFor: 'C call-outs'!
setColormap: colormap
    <cCall: 'gdk_drawable_set_colormap' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getColormap
    <cCall: 'gdk_drawable_get_colormap' returning: #{GdkColormap}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getDepth
    <cCall: 'gdk_drawable_get_depth' returning: #int
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getSize: width height: height
    <cCall: 'gdk_drawable_get_size' returning: #void
	args: #( #self #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getVisual
    <cCall: 'gdk_drawable_get_visual' returning: #{GdkVisual}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getScreen
    <cCall: 'gdk_drawable_get_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getDisplay
    <cCall: 'gdk_drawable_get_display' returning: #{GdkDisplay}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getClipRegion
    <cCall: 'gdk_drawable_get_clip_region' returning: #{GdkRegion}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getVisibleRegion
    <cCall: 'gdk_drawable_get_visible_region' returning: #{GdkRegion}
	args: #( #self )>! !

!GdkCursor class methodsFor: 'C call-outs'!
typeGetType
    <cCall: 'gdk_cursor_type_get_type' returning: #long
	args: #( )>! !

!GdkEvent class methodsFor: 'C call-outs'!
typeGetType
    <cCall: 'gdk_event_type_get_type' returning: #long
	args: #( )>! !

!GdkEvent class methodsFor: 'C call-outs'!
maskGetType
    <cCall: 'gdk_event_mask_get_type' returning: #long
	args: #( )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
stateGetType
    <cCall: 'gdk_window_state_get_type' returning: #long
	args: #( )>! !

!GdkFont class methodsFor: 'C call-outs'!
typeGetType
    <cCall: 'gdk_font_type_get_type' returning: #long
	args: #( )>! !

!GdkGCValues class methodsFor: 'C call-outs'!
maskGetType
    <cCall: 'gdk_gc_values_mask_get_type' returning: #long
	args: #( )>! !

!GdkImage class methodsFor: 'C call-outs'!
typeGetType
    <cCall: 'gdk_image_type_get_type' returning: #long
	args: #( )>! !

!GdkVisual class methodsFor: 'C call-outs'!
typeGetType
    <cCall: 'gdk_visual_type_get_type' returning: #long
	args: #( )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
classGetType
    <cCall: 'gdk_window_class_get_type' returning: #long
	args: #( )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
typeGetType
    <cCall: 'gdk_window_type_get_type' returning: #long
	args: #( )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
attributesTypeGetType
    <cCall: 'gdk_window_attributes_type_get_type' returning: #long
	args: #( )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
hintsGetType
    <cCall: 'gdk_window_hints_get_type' returning: #long
	args: #( )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
typeHintGetType
    <cCall: 'gdk_window_type_hint_get_type' returning: #long
	args: #( )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
edgeGetType
    <cCall: 'gdk_window_edge_get_type' returning: #long
	args: #( )>! !

!GdkFont class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_font_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkFont!

!GdkFont methodsFor: 'C call-outs'!
ref
    <cCall: 'gdk_font_ref' returning: #{GdkFont}
	args: #( #self )>! !

!GdkFont methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'gdk_font_unref' returning: #void
	args: #( #self )>! !

!GdkFont methodsFor: 'C call-outs'!
id
    <cCall: 'gdk_font_id' returning: #int
	args: #( #self )>! !

!GdkFont methodsFor: 'C call-outs'!
equal: fontb
    <cCall: 'gdk_font_equal' returning: #boolean
	args: #( #self #cObject )>! !

!GdkFont class methodsFor: 'C call-outs'!
loadForDisplay: display fontName: fontName
    <cCall: 'gdk_font_load_for_display' returning: #{GdkFont}
	args: #( #cObject #string )>! !

!Gdk class methodsFor: 'C call-outs'!
fontsetLoadForDisplay: display fontsetName: fontsetName
    <cCall: 'gdk_fontset_load_for_display' returning: #{GdkFont}
	args: #( #cObject #string )>! !

!GdkFont class methodsFor: 'C call-outs'!
fromDescriptionForDisplay: display fontDesc: fontDesc
    <cCall: 'gdk_font_from_description_for_display' returning: #{GdkFont}
	args: #( #cObject #cObject )>! !

!GdkImage class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_image_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkImage!

!GdkKeymap class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_keymap_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkKeymap!

!GdkKeymap class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'gdk_keymap_get_default' returning: #{GdkKeymap}
	args: #( )>! !

!GdkKeymap class methodsFor: 'C call-outs'!
getForDisplay: display
    <cCall: 'gdk_keymap_get_for_display' returning: #{GdkKeymap}
	args: #( #cObject )>! !

!GdkKeymap methodsFor: 'C call-outs'!
lookupKey: key
    <cCall: 'gdk_keymap_lookup_key' returning: #int
	args: #( #self #cObject )>! !

!GdkKeymap methodsFor: 'C call-outs'!
translateKeyboardState: hardwareKeycode state: state group: group keyval: keyval effectiveGroup: effectiveGroup level: level consumedModifiers: consumedModifiers
    <cCall: 'gdk_keymap_translate_keyboard_state' returning: #boolean
	args: #( #self #int #int #int #cObject #cObject #cObject #cObject )>! !

!GdkKeymap methodsFor: 'C call-outs'!
getEntriesForKeyval: keyval keys: keys nKeys: nKeys
    <cCall: 'gdk_keymap_get_entries_for_keyval' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GdkKeymap methodsFor: 'C call-outs'!
getEntriesForKeycode: hardwareKeycode keys: keys keyvals: keyvals nEntries: nEntries
    <cCall: 'gdk_keymap_get_entries_for_keycode' returning: #boolean
	args: #( #self #int #cObject #cObject #cObject )>! !

!GdkKeymap methodsFor: 'C call-outs'!
getDirection
    <cCall: 'gdk_keymap_get_direction' returning: #int
	args: #( #self )>! !

!GdkKeymap methodsFor: 'C call-outs'!
haveBidiLayouts
    <cCall: 'gdk_keymap_have_bidi_layouts' returning: #boolean
	args: #( #self )>! !

!GdkKeymap methodsFor: 'C call-outs'!
getCapsLockState
    <cCall: 'gdk_keymap_get_caps_lock_state' returning: #boolean
	args: #( #self )>! !

!GdkKeymap methodsFor: 'C call-outs'!
addVirtualModifiers: state
    <cCall: 'gdk_keymap_add_virtual_modifiers' returning: #void
	args: #( #self #cObject )>! !

!GdkKeymap methodsFor: 'C call-outs'!
mapVirtualModifiers: state
    <cCall: 'gdk_keymap_map_virtual_modifiers' returning: #boolean
	args: #( #self #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
keyvalName: keyval
    <cCall: 'gdk_keyval_name' returning: #string
	args: #( #int )>! !

!Gdk class methodsFor: 'C call-outs'!
keyvalFromName: keyvalName
    <cCall: 'gdk_keyval_from_name' returning: #int
	args: #( #string )>! !

!Gdk class methodsFor: 'C call-outs'!
keyvalConvertCase: symbol lower: lower upper: upper
    <cCall: 'gdk_keyval_convert_case' returning: #void
	args: #( #int #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
keyvalToUpper: keyval
    <cCall: 'gdk_keyval_to_upper' returning: #int
	args: #( #int )>! !

!Gdk class methodsFor: 'C call-outs'!
keyvalToLower: keyval
    <cCall: 'gdk_keyval_to_lower' returning: #int
	args: #( #int )>! !

!Gdk class methodsFor: 'C call-outs'!
keyvalIsUpper: keyval
    <cCall: 'gdk_keyval_is_upper' returning: #boolean
	args: #( #int )>! !

!Gdk class methodsFor: 'C call-outs'!
keyvalIsLower: keyval
    <cCall: 'gdk_keyval_is_lower' returning: #boolean
	args: #( #int )>! !

!Gdk class methodsFor: 'C call-outs'!
keyvalToUnicode: keyval
    <cCall: 'gdk_keyval_to_unicode' returning: #int
	args: #( #int )>! !

!Gdk class methodsFor: 'C call-outs'!
unicodeToKeyval: wc
    <cCall: 'gdk_unicode_to_keyval' returning: #int
	args: #( #int )>! !

!GdkPangoRenderer class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_pango_renderer_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkPangoRenderer!

!GdkPangoRenderer class methodsFor: 'C call-outs'!
new: screen
    <cCall: 'gdk_pango_renderer_new' returning: #{GdkPangoRenderer}
	args: #( #cObject )>! !

!GdkPangoRenderer class methodsFor: 'C call-outs'!
getDefault: screen
    <cCall: 'gdk_pango_renderer_get_default' returning: #{PangoRenderer}
	args: #( #cObject )>! !

!GdkPangoRenderer methodsFor: 'C call-outs'!
setDrawable: drawable
    <cCall: 'gdk_pango_renderer_set_drawable' returning: #void
	args: #( #self #cObject )>! !

!GdkPangoRenderer methodsFor: 'C call-outs'!
setGc: gc
    <cCall: 'gdk_pango_renderer_set_gc' returning: #void
	args: #( #self #cObject )>! !

!GdkPangoRenderer methodsFor: 'C call-outs'!
setStipple: part stipple: stipple
    <cCall: 'gdk_pango_renderer_set_stipple' returning: #void
	args: #( #self #int #cObject )>! !

!GdkPangoRenderer methodsFor: 'C call-outs'!
setOverrideColor: part color: color
    <cCall: 'gdk_pango_renderer_set_override_color' returning: #void
	args: #( #self #int #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
pangoContextGetForScreen: screen
    <cCall: 'gdk_pango_context_get_for_screen' returning: #{PangoContext}
	args: #( #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
pangoContextGet
    <cCall: 'gdk_pango_context_get' returning: #{PangoContext}
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
pangoLayoutLineGetClipRegion: line xOrigin: xOrigin yOrigin: yOrigin indexRanges: indexRanges nRanges: nRanges
    <cCall: 'gdk_pango_layout_line_get_clip_region' returning: #{GdkRegion}
	args: #( #cObject #int #int #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
pangoLayoutGetClipRegion: layout xOrigin: xOrigin yOrigin: yOrigin indexRanges: indexRanges nRanges: nRanges
    <cCall: 'gdk_pango_layout_get_clip_region' returning: #{GdkRegion}
	args: #( #cObject #int #int #cObject #int )>! !

!GdkPangoAttrStipple class methodsFor: 'C call-outs'!
new: stipple
    <cCall: 'gdk_pango_attr_stipple_new' returning: #{GdkPangoAttrStipple}
	args: #( #cObject )>! !

!GdkPangoAttrEmbossed class methodsFor: 'C call-outs'!
new: embossed
    <cCall: 'gdk_pango_attr_embossed_new' returning: #{GdkPangoAttrEmbossed}
	args: #( #boolean )>! !

!GdkPangoAttrEmbossColor class methodsFor: 'C call-outs'!
new: color
    <cCall: 'gdk_pango_attr_emboss_color_new' returning: #{GdkPangoAttrEmbossColor}
	args: #( #cObject )>! !

!GdkPixmap class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_pixmap_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkPixmap!

!GdkPixmap class methodsFor: 'C call-outs'!
new: drawable width: width height: height depth: depth
    <cCall: 'gdk_pixmap_new' returning: #{GdkPixmap}
	args: #( #cObject #int #int #int )>! !

!GdkPixmap methodsFor: 'C call-outs'!
getSize: width height: height
    <cCall: 'gdk_pixmap_get_size' returning: #void
	args: #( #self #cObject #cObject )>! !

!GdkPixmap class methodsFor: 'C call-outs'!
foreignNew: anid
    <cCall: 'gdk_pixmap_foreign_new' returning: #{GdkPixmap}
	args: #( #int )>! !

!GdkPixmap class methodsFor: 'C call-outs'!
lookup: anid
    <cCall: 'gdk_pixmap_lookup' returning: #{GdkPixmap}
	args: #( #int )>! !

!GdkPixmap class methodsFor: 'C call-outs'!
foreignNewForDisplay: display anid: anid
    <cCall: 'gdk_pixmap_foreign_new_for_display' returning: #{GdkPixmap}
	args: #( #cObject #int )>! !

!GdkPixmap class methodsFor: 'C call-outs'!
lookupForDisplay: display anid: anid
    <cCall: 'gdk_pixmap_lookup_for_display' returning: #{GdkPixmap}
	args: #( #cObject #int )>! !

!GdkPixmap class methodsFor: 'C call-outs'!
foreignNewForScreen: screen anid: anid width: width height: height depth: depth
    <cCall: 'gdk_pixmap_foreign_new_for_screen' returning: #{GdkPixmap}
	args: #( #cObject #int #int #int #int )>! !

!Gdk class methodsFor: 'C call-outs'!
atomIntern: atomName onlyIfExists: onlyIfExists
    <cCall: 'gdk_atom_intern' returning: #cObject
	args: #( #string #boolean )>! !

!Gdk class methodsFor: 'C call-outs'!
atomInternStaticString: atomName
    <cCall: 'gdk_atom_intern_static_string' returning: #cObject
	args: #( #string )>! !

!Gdk class methodsFor: 'C call-outs'!
atomName: atom
    <cCall: 'gdk_atom_name' returning: #string
	args: #( #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
propertyGet: window property: property type: type offset: offset length: length pdelete: pdelete actualPropertyType: actualPropertyType actualFormat: actualFormat actualLength: actualLength data: data
    <cCall: 'gdk_property_get' returning: #boolean
	args: #( #cObject #cObject #cObject #long #long #int #cObject #cObject #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
propertyChange: window property: property type: type format: format mode: mode data: data nelements: nelements
    <cCall: 'gdk_property_change' returning: #void
	args: #( #cObject #cObject #cObject #int #int #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
propertyDelete: window property: property
    <cCall: 'gdk_property_delete' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
textPropertyToUtf8ListForDisplay: display encoding: encoding format: format text: text length: length list: list
    <cCall: 'gdk_text_property_to_utf8_list_for_display' returning: #int
	args: #( #cObject #cObject #int #cObject #int #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
utf8ToStringTarget: str
    <cCall: 'gdk_utf8_to_string_target' returning: #string
	args: #( #string )>! !

!GdkRegion class methodsFor: 'C call-outs'!
new
    <cCall: 'gdk_region_new' returning: #{GdkRegion}
	args: #( )>! !

!GdkRegion methodsFor: 'C call-outs'!
copy
    <cCall: 'gdk_region_copy' returning: #{GdkRegion}
	args: #( #self )>! !

!GdkRegion class methodsFor: 'C call-outs'!
rectangle: rectangle
    <cCall: 'gdk_region_rectangle' returning: #{GdkRegion}
	args: #( #cObject )>! !

!GdkRegion methodsFor: 'C call-outs'!
destroy
    <cCall: 'gdk_region_destroy' returning: #void
	args: #( #self )>! !

!GdkRegion methodsFor: 'C call-outs'!
getClipbox: rectangle
    <cCall: 'gdk_region_get_clipbox' returning: #void
	args: #( #self #cObject )>! !

!GdkRegion methodsFor: 'C call-outs'!
getRectangles: rectangles nRectangles: nRectangles
    <cCall: 'gdk_region_get_rectangles' returning: #void
	args: #( #self #cObject #cObject )>! !

!GdkRegion methodsFor: 'C call-outs'!
empty
    <cCall: 'gdk_region_empty' returning: #boolean
	args: #( #self )>! !

!GdkRegion methodsFor: 'C call-outs'!
equal: region2
    <cCall: 'gdk_region_equal' returning: #boolean
	args: #( #self #cObject )>! !

!GdkRegion methodsFor: 'C call-outs'!
pointIn: x y: y
    <cCall: 'gdk_region_point_in' returning: #boolean
	args: #( #self #int #int )>! !

!GdkRegion methodsFor: 'C call-outs'!
rectIn: rectangle
    <cCall: 'gdk_region_rect_in' returning: #int
	args: #( #self #cObject )>! !

!GdkRegion methodsFor: 'C call-outs'!
offset: dx dy: dy
    <cCall: 'gdk_region_offset' returning: #void
	args: #( #self #int #int )>! !

!GdkRegion methodsFor: 'C call-outs'!
unionWithRect: rect
    <cCall: 'gdk_region_union_with_rect' returning: #void
	args: #( #self #cObject )>! !

!GdkRegion methodsFor: 'C call-outs'!
intersect: source2
    <cCall: 'gdk_region_intersect' returning: #void
	args: #( #self #cObject )>! !

!GdkRegion methodsFor: 'C call-outs'!
union: source2
    <cCall: 'gdk_region_union' returning: #void
	args: #( #self #cObject )>! !

!GdkRegion methodsFor: 'C call-outs'!
subtract: source2
    <cCall: 'gdk_region_subtract' returning: #void
	args: #( #self #cObject )>! !

!GdkRegion methodsFor: 'C call-outs'!
xor: source2
    <cCall: 'gdk_region_xor' returning: #void
	args: #( #self #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
selectionOwnerSet: owner selection: selection time: time sendEvent: sendEvent
    <cCall: 'gdk_selection_owner_set' returning: #boolean
	args: #( #cObject #cObject #int #boolean )>! !

!Gdk class methodsFor: 'C call-outs'!
selectionOwnerGet: selection
    <cCall: 'gdk_selection_owner_get' returning: #{GdkWindow}
	args: #( #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
selectionOwnerSetForDisplay: display owner: owner selection: selection time: time sendEvent: sendEvent
    <cCall: 'gdk_selection_owner_set_for_display' returning: #boolean
	args: #( #cObject #cObject #cObject #int #boolean )>! !

!Gdk class methodsFor: 'C call-outs'!
selectionOwnerGetForDisplay: display selection: selection
    <cCall: 'gdk_selection_owner_get_for_display' returning: #{GdkWindow}
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
selectionConvert: requestor selection: selection target: target time: time
    <cCall: 'gdk_selection_convert' returning: #void
	args: #( #cObject #cObject #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
selectionPropertyGet: requestor data: data propType: propType propFormat: propFormat
    <cCall: 'gdk_selection_property_get' returning: #int
	args: #( #cObject #cObject #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
selectionSendNotify: requestor selection: selection target: target property: property time: time
    <cCall: 'gdk_selection_send_notify' returning: #void
	args: #( #int #cObject #cObject #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
selectionSendNotifyForDisplay: display requestor: requestor selection: selection target: target property: property time: time
    <cCall: 'gdk_selection_send_notify_for_display' returning: #void
	args: #( #cObject #int #cObject #cObject #cObject #int )>! !

!GdkWindowObject class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_window_object_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkWindowObject!

!GdkDrawable methodsFor: 'C call-outs'!
new: attributes attributesMask: attributesMask
    <cCall: 'gdk_window_new' returning: #{GdkDrawable}
	args: #( #self #cObject #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
destroy
    <cCall: 'gdk_window_destroy' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getWindowType
    <cCall: 'gdk_window_get_window_type' returning: #int
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
isDestroyed
    <cCall: 'gdk_window_is_destroyed' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getScreen
    <cCall: 'gdk_window_get_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getDisplay
    <cCall: 'gdk_window_get_display' returning: #{GdkDisplay}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getVisual
    <cCall: 'gdk_window_get_visual' returning: #{GdkVisual}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getWidth
    <cCall: 'gdk_window_get_width' returning: #int
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getHeight
    <cCall: 'gdk_window_get_height' returning: #int
	args: #( #self )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
atPointer: winX winY: winY
    <cCall: 'gdk_window_at_pointer' returning: #{GdkWindow}
	args: #( #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
show
    <cCall: 'gdk_window_show' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
hide
    <cCall: 'gdk_window_hide' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
withdraw
    <cCall: 'gdk_window_withdraw' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
showUnraised
    <cCall: 'gdk_window_show_unraised' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
move: x y: y
    <cCall: 'gdk_window_move' returning: #void
	args: #( #self #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
resize: width height: height
    <cCall: 'gdk_window_resize' returning: #void
	args: #( #self #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
moveResize: x y: y width: width height: height
    <cCall: 'gdk_window_move_resize' returning: #void
	args: #( #self #int #int #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
reparent: newParent x: x y: y
    <cCall: 'gdk_window_reparent' returning: #void
	args: #( #self #cObject #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
clear
    <cCall: 'gdk_window_clear' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
clearArea: x y: y width: width height: height
    <cCall: 'gdk_window_clear_area' returning: #void
	args: #( #self #int #int #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
clearAreaE: x y: y width: width height: height
    <cCall: 'gdk_window_clear_area_e' returning: #void
	args: #( #self #int #int #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
raise
    <cCall: 'gdk_window_raise' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
lower
    <cCall: 'gdk_window_lower' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
restack: sibling above: above
    <cCall: 'gdk_window_restack' returning: #void
	args: #( #self #cObject #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
focus: timestamp
    <cCall: 'gdk_window_focus' returning: #void
	args: #( #self #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setUserData: userData
    <cCall: 'gdk_window_set_user_data' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setOverrideRedirect: overrideRedirect
    <cCall: 'gdk_window_set_override_redirect' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getAcceptFocus
    <cCall: 'gdk_window_get_accept_focus' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setAcceptFocus: acceptFocus
    <cCall: 'gdk_window_set_accept_focus' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getFocusOnMap
    <cCall: 'gdk_window_get_focus_on_map' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setFocusOnMap: focusOnMap
    <cCall: 'gdk_window_set_focus_on_map' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
addFilter: function data: data
    <cCall: 'gdk_window_add_filter' returning: #void
	args: #( #self #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
removeFilter: function data: data
    <cCall: 'gdk_window_remove_filter' returning: #void
	args: #( #self #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
scroll: dx dy: dy
    <cCall: 'gdk_window_scroll' returning: #void
	args: #( #self #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
moveRegion: region dx: dx dy: dy
    <cCall: 'gdk_window_move_region' returning: #void
	args: #( #self #cObject #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
ensureNative
    <cCall: 'gdk_window_ensure_native' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
shapeCombineMask: mask x: x y: y
    <cCall: 'gdk_window_shape_combine_mask' returning: #void
	args: #( #self #cObject #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
shapeCombineRegion: shapeRegion offsetX: offsetX offsetY: offsetY
    <cCall: 'gdk_window_shape_combine_region' returning: #void
	args: #( #self #cObject #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setChildShapes
    <cCall: 'gdk_window_set_child_shapes' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getComposited
    <cCall: 'gdk_window_get_composited' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setComposited: composited
    <cCall: 'gdk_window_set_composited' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
mergeChildShapes
    <cCall: 'gdk_window_merge_child_shapes' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
inputShapeCombineMask: mask x: x y: y
    <cCall: 'gdk_window_input_shape_combine_mask' returning: #void
	args: #( #self #cObject #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
inputShapeCombineRegion: shapeRegion offsetX: offsetX offsetY: offsetY
    <cCall: 'gdk_window_input_shape_combine_region' returning: #void
	args: #( #self #cObject #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setChildInputShapes
    <cCall: 'gdk_window_set_child_input_shapes' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
mergeChildInputShapes
    <cCall: 'gdk_window_merge_child_input_shapes' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
isVisible
    <cCall: 'gdk_window_is_visible' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
isViewable
    <cCall: 'gdk_window_is_viewable' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
isInputOnly
    <cCall: 'gdk_window_is_input_only' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
isShaped
    <cCall: 'gdk_window_is_shaped' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getState
    <cCall: 'gdk_window_get_state' returning: #int
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setStaticGravities: useStatic
    <cCall: 'gdk_window_set_static_gravities' returning: #boolean
	args: #( #self #boolean )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
foreignNew: anid
    <cCall: 'gdk_window_foreign_new' returning: #{GdkWindow}
	args: #( #int )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
lookup: anid
    <cCall: 'gdk_window_lookup' returning: #{GdkWindow}
	args: #( #int )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
foreignNewForDisplay: display anid: anid
    <cCall: 'gdk_window_foreign_new_for_display' returning: #{GdkWindow}
	args: #( #cObject #int )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
lookupForDisplay: display anid: anid
    <cCall: 'gdk_window_lookup_for_display' returning: #{GdkWindow}
	args: #( #cObject #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
hasNative
    <cCall: 'gdk_window_has_native' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setTypeHint: hint
    <cCall: 'gdk_window_set_type_hint' returning: #void
	args: #( #self #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getTypeHint
    <cCall: 'gdk_window_get_type_hint' returning: #int
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getModalHint
    <cCall: 'gdk_window_get_modal_hint' returning: #boolean
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setModalHint: modal
    <cCall: 'gdk_window_set_modal_hint' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setSkipTaskbarHint: skipsTaskbar
    <cCall: 'gdk_window_set_skip_taskbar_hint' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setSkipPagerHint: skipsPager
    <cCall: 'gdk_window_set_skip_pager_hint' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setUrgencyHint: urgent
    <cCall: 'gdk_window_set_urgency_hint' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setGeometryHints: geometry geomMask: geomMask
    <cCall: 'gdk_window_set_geometry_hints' returning: #void
	args: #( #self #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
setSmClientId: smClientId
    <cCall: 'gdk_set_sm_client_id' returning: #void
	args: #( #string )>! !

!GdkDrawable methodsFor: 'C call-outs'!
beginPaintRect: rectangle
    <cCall: 'gdk_window_begin_paint_rect' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
beginPaintRegion: region
    <cCall: 'gdk_window_begin_paint_region' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
endPaint
    <cCall: 'gdk_window_end_paint' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
flush
    <cCall: 'gdk_window_flush' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setTitle: title
    <cCall: 'gdk_window_set_title' returning: #void
	args: #( #self #string )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setRole: role
    <cCall: 'gdk_window_set_role' returning: #void
	args: #( #self #string )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setStartupId: startupId
    <cCall: 'gdk_window_set_startup_id' returning: #void
	args: #( #self #string )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setTransientFor: parent
    <cCall: 'gdk_window_set_transient_for' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setBackground: color
    <cCall: 'gdk_window_set_background' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setBackPixmap: pixmap parentRelative: parentRelative
    <cCall: 'gdk_window_set_back_pixmap' returning: #void
	args: #( #self #cObject #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setCursor: cursor
    <cCall: 'gdk_window_set_cursor' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getCursor
    <cCall: 'gdk_window_get_cursor' returning: #{GdkCursor}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getUserData: data
    <cCall: 'gdk_window_get_user_data' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getGeometry: x y: y width: width height: height depth: depth
    <cCall: 'gdk_window_get_geometry' returning: #void
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getPosition: x y: y
    <cCall: 'gdk_window_get_position' returning: #void
	args: #( #self #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getOrigin: x y: y
    <cCall: 'gdk_window_get_origin' returning: #int
	args: #( #self #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getRootCoords: x y: y rootX: rootX rootY: rootY
    <cCall: 'gdk_window_get_root_coords' returning: #void
	args: #( #self #int #int #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
coordsToParent: x y: y parentX: parentX parentY: parentY
    <cCall: 'gdk_window_coords_to_parent' returning: #void
	args: #( #self #double #double #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
coordsFromParent: parentX parentY: parentY x: x y: y
    <cCall: 'gdk_window_coords_from_parent' returning: #void
	args: #( #self #double #double #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getDeskrelativeOrigin: x y: y
    <cCall: 'gdk_window_get_deskrelative_origin' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getRootOrigin: x y: y
    <cCall: 'gdk_window_get_root_origin' returning: #void
	args: #( #self #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getFrameExtents: rect
    <cCall: 'gdk_window_get_frame_extents' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getPointer: x y: y mask: mask
    <cCall: 'gdk_window_get_pointer' returning: #{GdkWindow}
	args: #( #self #cObject #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getParent
    <cCall: 'gdk_window_get_parent' returning: #{GdkWindow}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getToplevel
    <cCall: 'gdk_window_get_toplevel' returning: #{GdkWindow}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getEffectiveParent
    <cCall: 'gdk_window_get_effective_parent' returning: #{GdkWindow}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getEffectiveToplevel
    <cCall: 'gdk_window_get_effective_toplevel' returning: #{GdkWindow}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getChildren
    <cCall: 'gdk_window_get_children' returning: #{GList}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
peekChildren
    <cCall: 'gdk_window_peek_children' returning: #{GList}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getEvents
    <cCall: 'gdk_window_get_events' returning: #int
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setEvents: eventMask
    <cCall: 'gdk_window_set_events' returning: #void
	args: #( #self #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setIconList: pixbufs
    <cCall: 'gdk_window_set_icon_list' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setIcon: iconWindow pixmap: pixmap mask: mask
    <cCall: 'gdk_window_set_icon' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setIconName: name
    <cCall: 'gdk_window_set_icon_name' returning: #void
	args: #( #self #string )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setGroup: leader
    <cCall: 'gdk_window_set_group' returning: #void
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getGroup
    <cCall: 'gdk_window_get_group' returning: #{GdkWindow}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setDecorations: decorations
    <cCall: 'gdk_window_set_decorations' returning: #void
	args: #( #self #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getDecorations: decorations
    <cCall: 'gdk_window_get_decorations' returning: #boolean
	args: #( #self #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setFunctions: functions
    <cCall: 'gdk_window_set_functions' returning: #void
	args: #( #self #int )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
getToplevels
    <cCall: 'gdk_window_get_toplevels' returning: #{GList}
	args: #( )>! !

!GdkDrawable methodsFor: 'C call-outs'!
beep
    <cCall: 'gdk_window_beep' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
iconify
    <cCall: 'gdk_window_iconify' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
deiconify
    <cCall: 'gdk_window_deiconify' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
stick
    <cCall: 'gdk_window_stick' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
unstick
    <cCall: 'gdk_window_unstick' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
maximize
    <cCall: 'gdk_window_maximize' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
unmaximize
    <cCall: 'gdk_window_unmaximize' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
fullscreen
    <cCall: 'gdk_window_fullscreen' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
unfullscreen
    <cCall: 'gdk_window_unfullscreen' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setKeepAbove: setting
    <cCall: 'gdk_window_set_keep_above' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setKeepBelow: setting
    <cCall: 'gdk_window_set_keep_below' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
setOpacity: opacity
    <cCall: 'gdk_window_set_opacity' returning: #void
	args: #( #self #double )>! !

!GdkDrawable methodsFor: 'C call-outs'!
registerDnd
    <cCall: 'gdk_window_register_dnd' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
beginResizeDrag: edge button: button rootX: rootX rootY: rootY timestamp: timestamp
    <cCall: 'gdk_window_begin_resize_drag' returning: #void
	args: #( #self #int #int #int #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
beginMoveDrag: button rootX: rootX rootY: rootY timestamp: timestamp
    <cCall: 'gdk_window_begin_move_drag' returning: #void
	args: #( #self #int #int #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
invalidateRect: rect invalidateChildren: invalidateChildren
    <cCall: 'gdk_window_invalidate_rect' returning: #void
	args: #( #self #cObject #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
invalidateRegion: region invalidateChildren: invalidateChildren
    <cCall: 'gdk_window_invalidate_region' returning: #void
	args: #( #self #cObject #boolean )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getUpdateArea
    <cCall: 'gdk_window_get_update_area' returning: #{GdkRegion}
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
freezeUpdates
    <cCall: 'gdk_window_freeze_updates' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
thawUpdates
    <cCall: 'gdk_window_thaw_updates' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
freezeToplevelUpdatesLibgtkOnly
    <cCall: 'gdk_window_freeze_toplevel_updates_libgtk_only' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
thawToplevelUpdatesLibgtkOnly
    <cCall: 'gdk_window_thaw_toplevel_updates_libgtk_only' returning: #void
	args: #( #self )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
processAllUpdates
    <cCall: 'gdk_window_process_all_updates' returning: #void
	args: #( )>! !

!GdkDrawable methodsFor: 'C call-outs'!
processUpdates: updateChildren
    <cCall: 'gdk_window_process_updates' returning: #void
	args: #( #self #boolean )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
setDebugUpdates: setting
    <cCall: 'gdk_window_set_debug_updates' returning: #void
	args: #( #boolean )>! !

!GdkDrawable class methodsFor: 'C call-outs'!
constrainSize: geometry flags: flags width: width height: height newWidth: newWidth newHeight: newHeight
    <cCall: 'gdk_window_constrain_size' returning: #void
	args: #( #cObject #int #int #int #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
getInternalPaintInfo: realDrawable xOffset: xOffset yOffset: yOffset
    <cCall: 'gdk_window_get_internal_paint_info' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
enableSynchronizedConfigure
    <cCall: 'gdk_window_enable_synchronized_configure' returning: #void
	args: #( #self )>! !

!GdkDrawable methodsFor: 'C call-outs'!
configureFinished
    <cCall: 'gdk_window_configure_finished' returning: #void
	args: #( #self )>! !

!Gdk class methodsFor: 'C call-outs'!
getDefaultRootWindow
    <cCall: 'gdk_get_default_root_window' returning: #{GdkWindow}
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
offscreenWindowGetPixmap: window
    <cCall: 'gdk_offscreen_window_get_pixmap' returning: #{GdkPixmap}
	args: #( #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
offscreenWindowSetEmbedder: window embedder: embedder
    <cCall: 'gdk_offscreen_window_set_embedder' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
offscreenWindowGetEmbedder: window
    <cCall: 'gdk_offscreen_window_get_embedder' returning: #{GdkWindow}
	args: #( #cObject )>! !

!GdkDrawable methodsFor: 'C call-outs'!
geometryChanged
    <cCall: 'gdk_window_geometry_changed' returning: #void
	args: #( #self )>! !

!GdkWindowRedirect class methodsFor: 'C call-outs'!
toDrawable: window drawable: drawable srcX: srcX srcY: srcY destX: destX destY: destY width: width height: height
    <cCall: 'gdk_window_redirect_to_drawable' returning: #void
	args: #( #cObject #cObject #int #int #int #int #int #int )>! !

!GdkDrawable methodsFor: 'C call-outs'!
removeRedirection
    <cCall: 'gdk_window_remove_redirection' returning: #void
	args: #( #self )>! !

!Gdk class methodsFor: 'C call-outs'!
testRenderSync: window
    <cCall: 'gdk_test_render_sync' returning: #void
	args: #( #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
testSimulateKey: window x: x y: y keyval: keyval modifiers: modifiers keyPressrelease: keyPressrelease
    <cCall: 'gdk_test_simulate_key' returning: #boolean
	args: #( #cObject #int #int #int #int #int )>! !

!Gdk class methodsFor: 'C call-outs'!
testSimulateButton: window x: x y: y button: button modifiers: modifiers buttonPressrelease: buttonPressrelease
    <cCall: 'gdk_test_simulate_button' returning: #boolean
	args: #( #cObject #int #int #int #int #int )>! !

!GdkVisual class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_visual_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkVisual!

!GdkVisual class methodsFor: 'C call-outs'!
getBestDepth
    <cCall: 'gdk_visual_get_best_depth' returning: #int
	args: #( )>! !

!GdkVisual class methodsFor: 'C call-outs'!
getBestType
    <cCall: 'gdk_visual_get_best_type' returning: #int
	args: #( )>! !

!GdkVisual class methodsFor: 'C call-outs'!
getSystem
    <cCall: 'gdk_visual_get_system' returning: #{GdkVisual}
	args: #( )>! !

!GdkVisual class methodsFor: 'C call-outs'!
getBest
    <cCall: 'gdk_visual_get_best' returning: #{GdkVisual}
	args: #( )>! !

!GdkVisual class methodsFor: 'C call-outs'!
getBestWithDepth: depth
    <cCall: 'gdk_visual_get_best_with_depth' returning: #{GdkVisual}
	args: #( #int )>! !

!GdkVisual class methodsFor: 'C call-outs'!
getBestWithType: visualType
    <cCall: 'gdk_visual_get_best_with_type' returning: #{GdkVisual}
	args: #( #int )>! !

!GdkVisual class methodsFor: 'C call-outs'!
getBestWithBoth: depth visualType: visualType
    <cCall: 'gdk_visual_get_best_with_both' returning: #{GdkVisual}
	args: #( #int #int )>! !

!Gdk class methodsFor: 'C call-outs'!
queryDepths: depths count: count
    <cCall: 'gdk_query_depths' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
queryVisualTypes: visualTypes count: count
    <cCall: 'gdk_query_visual_types' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
listVisuals
    <cCall: 'gdk_list_visuals' returning: #{GList}
	args: #( )>! !

!GdkVisual methodsFor: 'C call-outs'!
getScreen
    <cCall: 'gdk_visual_get_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!GdkVisual methodsFor: 'C call-outs'!
getVisualType
    <cCall: 'gdk_visual_get_visual_type' returning: #int
	args: #( #self )>! !

!GdkVisual methodsFor: 'C call-outs'!
getDepth
    <cCall: 'gdk_visual_get_depth' returning: #int
	args: #( #self )>! !

!GdkVisual methodsFor: 'C call-outs'!
getByteOrder
    <cCall: 'gdk_visual_get_byte_order' returning: #int
	args: #( #self )>! !

!GdkVisual methodsFor: 'C call-outs'!
getColormapSize
    <cCall: 'gdk_visual_get_colormap_size' returning: #int
	args: #( #self )>! !

!GdkVisual methodsFor: 'C call-outs'!
getBitsPerRgb
    <cCall: 'gdk_visual_get_bits_per_rgb' returning: #int
	args: #( #self )>! !

!GdkVisual methodsFor: 'C call-outs'!
getRedPixelDetails: mask shift: shift precision: precision
    <cCall: 'gdk_visual_get_red_pixel_details' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GdkVisual methodsFor: 'C call-outs'!
getGreenPixelDetails: mask shift: shift precision: precision
    <cCall: 'gdk_visual_get_green_pixel_details' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GdkVisual methodsFor: 'C call-outs'!
getBluePixelDetails: mask shift: shift precision: precision
    <cCall: 'gdk_visual_get_blue_pixel_details' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
parseArgs: argc argv: argv
    <cCall: 'gdk_parse_args' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
init: argc argv: argv
    <cCall: 'gdk_init' returning: #void
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
initCheck: argc argv: argv
    <cCall: 'gdk_init_check' returning: #boolean
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
addOptionEntriesLibgtkOnly: group
    <cCall: 'gdk_add_option_entries_libgtk_only' returning: #void
	args: #( #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
preParseLibgtkOnly
    <cCall: 'gdk_pre_parse_libgtk_only' returning: #void
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
setProgramClass: programClass
    <cCall: 'gdk_set_program_class' returning: #void
	args: #( #string )>! !

!Gdk class methodsFor: 'C call-outs'!
errorTrapPush
    <cCall: 'gdk_error_trap_push' returning: #void
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
errorTrapPop
    <cCall: 'gdk_error_trap_pop' returning: #int
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
getDisplay
    <cCall: 'gdk_get_display' returning: #string
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
pointerGrab: window ownerEvents: ownerEvents eventMask: eventMask confineTo: confineTo cursor: cursor time: time
    <cCall: 'gdk_pointer_grab' returning: #int
	args: #( #cObject #boolean #int #cObject #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
keyboardGrab: window ownerEvents: ownerEvents time: time
    <cCall: 'gdk_keyboard_grab' returning: #int
	args: #( #cObject #boolean #int )>! !

!Gdk class methodsFor: 'C call-outs'!
pointerGrabInfoLibgtkOnly: display grabWindow: grabWindow ownerEvents: ownerEvents
    <cCall: 'gdk_pointer_grab_info_libgtk_only' returning: #boolean
	args: #( #cObject #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
keyboardGrabInfoLibgtkOnly: display grabWindow: grabWindow ownerEvents: ownerEvents
    <cCall: 'gdk_keyboard_grab_info_libgtk_only' returning: #boolean
	args: #( #cObject #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
pointerUngrab: time
    <cCall: 'gdk_pointer_ungrab' returning: #void
	args: #( #int )>! !

!Gdk class methodsFor: 'C call-outs'!
keyboardUngrab: time
    <cCall: 'gdk_keyboard_ungrab' returning: #void
	args: #( #int )>! !

!Gdk class methodsFor: 'C call-outs'!
pointerIsGrabbed
    <cCall: 'gdk_pointer_is_grabbed' returning: #boolean
	args: #( )>! !

!GdkScreen class methodsFor: 'C call-outs'!
width
    <cCall: 'gdk_screen_width' returning: #int
	args: #( )>! !

!GdkScreen class methodsFor: 'C call-outs'!
height
    <cCall: 'gdk_screen_height' returning: #int
	args: #( )>! !

!GdkScreen class methodsFor: 'C call-outs'!
widthMm
    <cCall: 'gdk_screen_width_mm' returning: #int
	args: #( )>! !

!GdkScreen class methodsFor: 'C call-outs'!
heightMm
    <cCall: 'gdk_screen_height_mm' returning: #int
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
beep
    <cCall: 'gdk_beep' returning: #void
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
flush
    <cCall: 'gdk_flush' returning: #void
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
setDoubleClickTime: msec
    <cCall: 'gdk_set_double_click_time' returning: #void
	args: #( #int )>! !

!GdkRectangle methodsFor: 'C call-outs'!
intersect: src2 dest: dest
    <cCall: 'gdk_rectangle_intersect' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GdkRectangle methodsFor: 'C call-outs'!
union: src2 dest: dest
    <cCall: 'gdk_rectangle_union' returning: #void
	args: #( #self #cObject #cObject )>! !

!GdkRectangle class methodsFor: 'C call-outs'!
getType
    <cCall: 'gdk_rectangle_get_type' returning: #long
	args: #( )>! !

GLib registerType: GdkRectangle!

!GdkEvent methodsFor: 'C call-outs'!
sendClientMessage: winid
    <cCall: 'gdk_event_send_client_message' returning: #boolean
	args: #( #self #int )>! !

!GdkEvent methodsFor: 'C call-outs'!
sendClientmessageToall
    <cCall: 'gdk_event_send_clientmessage_toall' returning: #void
	args: #( #self )>! !

!GdkEvent class methodsFor: 'C call-outs'!
sendClientMessageForDisplay: display event: event winid: winid
    <cCall: 'gdk_event_send_client_message_for_display' returning: #boolean
	args: #( #cObject #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
notifyStartupComplete
    <cCall: 'gdk_notify_startup_complete' returning: #void
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
notifyStartupCompleteWithId: startupId
    <cCall: 'gdk_notify_startup_complete_with_id' returning: #void
	args: #( #string )>! !

!Gdk class methodsFor: 'C call-outs'!
threadsEnter
    <cCall: 'gdk_threads_enter' returning: #void
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
threadsLeave
    <cCall: 'gdk_threads_leave' returning: #void
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
threadsInit
    <cCall: 'gdk_threads_init' returning: #void
	args: #( )>! !

!Gdk class methodsFor: 'C call-outs'!
threadsAddIdleFull: priority function: function data: data notify: notify
    <cCall: 'gdk_threads_add_idle_full' returning: #int
	args: #( #int #cObject #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
threadsAddIdle: function data: data
    <cCall: 'gdk_threads_add_idle' returning: #int
	args: #( #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
threadsAddTimeoutFull: priority interval: interval function: function data: data notify: notify
    <cCall: 'gdk_threads_add_timeout_full' returning: #int
	args: #( #int #int #cObject #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
threadsAddTimeout: interval function: function data: data
    <cCall: 'gdk_threads_add_timeout' returning: #int
	args: #( #int #cObject #cObject )>! !

!Gdk class methodsFor: 'C call-outs'!
threadsAddTimeoutSecondsFull: priority interval: interval function: function data: data notify: notify
    <cCall: 'gdk_threads_add_timeout_seconds_full' returning: #int
	args: #( #int #int #cObject #cObject #int )>! !

!Gdk class methodsFor: 'C call-outs'!
threadsAddTimeoutSeconds: interval function: function data: data
    <cCall: 'gdk_threads_add_timeout_seconds' returning: #int
	args: #( #int #cObject #cObject )>! !

!GtkAccelGroup class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_accel_group_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkAccelGroup!

!GtkAccelGroup class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_accel_group_new' returning: #{GtkAccelGroup}
	args: #( )>! !

!GtkAccelGroup methodsFor: 'C call-outs'!
getIsLocked
    <cCall: 'gtk_accel_group_get_is_locked' returning: #boolean
	args: #( #self )>! !

!GtkAccelGroup methodsFor: 'C call-outs'!
lock
    <cCall: 'gtk_accel_group_lock' returning: #void
	args: #( #self )>! !

!GtkAccelGroup methodsFor: 'C call-outs'!
unlock
    <cCall: 'gtk_accel_group_unlock' returning: #void
	args: #( #self )>! !

!GtkAccelGroup methodsFor: 'C call-outs'!
disconnectKey: accelKey accelMods: accelMods
    <cCall: 'gtk_accel_group_disconnect_key' returning: #boolean
	args: #( #self #int #int )>! !

!GtkAccelGroup methodsFor: 'C call-outs'!
activate: accelQuark acceleratable: acceleratable accelKey: accelKey accelMods: accelMods
    <cCall: 'gtk_accel_group_activate' returning: #boolean
	args: #( #self #int #cObject #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
accelGroupsActivate: object accelKey: accelKey accelMods: accelMods
    <cCall: 'gtk_accel_groups_activate' returning: #boolean
	args: #( #cObject #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
accelGroupsFromObject: object
    <cCall: 'gtk_accel_groups_from_object' returning: #{GSList}
	args: #( #cObject )>! !

!GtkAccelGroup methodsFor: 'C call-outs'!
find: findFunc data: data
    <cCall: 'gtk_accel_group_find' returning: #{GtkAccelKey}
	args: #( #self #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
acceleratorValid: keyval modifiers: modifiers
    <cCall: 'gtk_accelerator_valid' returning: #boolean
	args: #( #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
acceleratorParse: accelerator acceleratorKey: acceleratorKey acceleratorMods: acceleratorMods
    <cCall: 'gtk_accelerator_parse' returning: #void
	args: #( #string #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
acceleratorName: acceleratorKey acceleratorMods: acceleratorMods
    <cCall: 'gtk_accelerator_name' returning: #string
	args: #( #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
acceleratorGetLabel: acceleratorKey acceleratorMods: acceleratorMods
    <cCall: 'gtk_accelerator_get_label' returning: #string
	args: #( #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
acceleratorSetDefaultModMask: defaultModMask
    <cCall: 'gtk_accelerator_set_default_mod_mask' returning: #void
	args: #( #int )>! !

!Gtk class methodsFor: 'C call-outs'!
acceleratorGetDefaultModMask
    <cCall: 'gtk_accelerator_get_default_mod_mask' returning: #int
	args: #( )>! !

!GtkAccelGroup methodsFor: 'C call-outs'!
query: accelKey accelMods: accelMods nEntries: nEntries
    <cCall: 'gtk_accel_group_query' returning: #{GtkAccelGroupEntry}
	args: #( #self #int #int #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
actionGetType
    <cCall: 'gtk_file_chooser_action_get_type' returning: #long
	args: #( )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
confirmationGetType
    <cCall: 'gtk_file_chooser_confirmation_get_type' returning: #long
	args: #( )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
errorGetType
    <cCall: 'gtk_file_chooser_error_get_type' returning: #long
	args: #( )>! !

!GtkObject class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_object_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkObject!

!GtkObject methodsFor: 'C call-outs'!
destroy
    <cCall: 'gtk_object_destroy' returning: #void
	args: #( #self )>! !

!GtkAdjustment class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_adjustment_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkAdjustment!

!GtkAdjustment class methodsFor: 'C call-outs'!
new: value lower: lower upper: upper stepIncrement: stepIncrement pageIncrement: pageIncrement pageSize: pageSize
    <cCall: 'gtk_adjustment_new' returning: #{GtkAdjustment}
	args: #( #double #double #double #double #double #double )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
changed
    <cCall: 'gtk_adjustment_changed' returning: #void
	args: #( #self )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
valueChanged
    <cCall: 'gtk_adjustment_value_changed' returning: #void
	args: #( #self )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
clampPage: lower upper: upper
    <cCall: 'gtk_adjustment_clamp_page' returning: #void
	args: #( #self #double #double )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
getValue
    <cCall: 'gtk_adjustment_get_value' returning: #double
	args: #( #self )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
setValue: value
    <cCall: 'gtk_adjustment_set_value' returning: #void
	args: #( #self #double )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
getLower
    <cCall: 'gtk_adjustment_get_lower' returning: #double
	args: #( #self )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
setLower: lower
    <cCall: 'gtk_adjustment_set_lower' returning: #void
	args: #( #self #double )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
getUpper
    <cCall: 'gtk_adjustment_get_upper' returning: #double
	args: #( #self )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
setUpper: upper
    <cCall: 'gtk_adjustment_set_upper' returning: #void
	args: #( #self #double )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
getStepIncrement
    <cCall: 'gtk_adjustment_get_step_increment' returning: #double
	args: #( #self )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
setStepIncrement: stepIncrement
    <cCall: 'gtk_adjustment_set_step_increment' returning: #void
	args: #( #self #double )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
getPageIncrement
    <cCall: 'gtk_adjustment_get_page_increment' returning: #double
	args: #( #self )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
setPageIncrement: pageIncrement
    <cCall: 'gtk_adjustment_set_page_increment' returning: #void
	args: #( #self #double )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
getPageSize
    <cCall: 'gtk_adjustment_get_page_size' returning: #double
	args: #( #self )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
setPageSize: pageSize
    <cCall: 'gtk_adjustment_set_page_size' returning: #void
	args: #( #self #double )>! !

!GtkAdjustment methodsFor: 'C call-outs'!
configure: value lower: lower upper: upper stepIncrement: stepIncrement pageIncrement: pageIncrement pageSize: pageSize
    <cCall: 'gtk_adjustment_configure' returning: #void
	args: #( #self #double #double #double #double #double #double )>! !

!GtkStyle class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_style_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkStyle!

!GtkStyle class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_style_new' returning: #{GtkStyle}
	args: #( )>! !

!GtkStyle methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_style_copy' returning: #{GtkStyle}
	args: #( #self )>! !

!GtkStyle methodsFor: 'C call-outs'!
attach: window
    <cCall: 'gtk_style_attach' returning: #{GtkStyle}
	args: #( #self #cObject )>! !

!GtkStyle methodsFor: 'C call-outs'!
detach
    <cCall: 'gtk_style_detach' returning: #void
	args: #( #self )>! !

!GtkStyle methodsFor: 'C call-outs'!
setBackground: window stateType: stateType
    <cCall: 'gtk_style_set_background' returning: #void
	args: #( #self #cObject #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
applyDefaultBackground: window setBg: setBg stateType: stateType area: area x: x y: y width: width height: height
    <cCall: 'gtk_style_apply_default_background' returning: #void
	args: #( #self #cObject #boolean #int #cObject #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
lookupIconSet: stockId
    <cCall: 'gtk_style_lookup_icon_set' returning: #{GtkIconSet}
	args: #( #self #string )>! !

!GtkStyle methodsFor: 'C call-outs'!
lookupColor: colorName color: color
    <cCall: 'gtk_style_lookup_color' returning: #boolean
	args: #( #self #string #cObject )>! !

!GtkStyle methodsFor: 'C call-outs'!
renderIcon: source direction: direction state: state size: size widget: widget detail: detail
    <cCall: 'gtk_style_render_icon' returning: #{GdkPixbuf}
	args: #( #self #cObject #int #int #int #cObject #string )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintHline: window stateType: stateType area: area widget: widget detail: detail x1: x1 x2: x2 y: y
    <cCall: 'gtk_paint_hline' returning: #void
	args: #( #self #cObject #int #cObject #cObject #string #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintVline: window stateType: stateType area: area widget: widget detail: detail y1: y1 y2: y2 x: x
    <cCall: 'gtk_paint_vline' returning: #void
	args: #( #self #cObject #int #cObject #cObject #string #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintShadow: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height
    <cCall: 'gtk_paint_shadow' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintPolygon: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail points: points nPoints: nPoints fill: fill
    <cCall: 'gtk_paint_polygon' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #cObject #int #boolean )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintArrow: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail arrowType: arrowType fill: fill x: x y: y width: width height: height
    <cCall: 'gtk_paint_arrow' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #boolean #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintDiamond: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height
    <cCall: 'gtk_paint_diamond' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintBox: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height
    <cCall: 'gtk_paint_box' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintFlatBox: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height
    <cCall: 'gtk_paint_flat_box' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintCheck: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height
    <cCall: 'gtk_paint_check' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintOption: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height
    <cCall: 'gtk_paint_option' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintTab: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height
    <cCall: 'gtk_paint_tab' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintShadowGap: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height gapSide: gapSide gapX: gapX gapWidth: gapWidth
    <cCall: 'gtk_paint_shadow_gap' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintBoxGap: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height gapSide: gapSide gapX: gapX gapWidth: gapWidth
    <cCall: 'gtk_paint_box_gap' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintExtension: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height gapSide: gapSide
    <cCall: 'gtk_paint_extension' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintFocus: window stateType: stateType area: area widget: widget detail: detail x: x y: y width: width height: height
    <cCall: 'gtk_paint_focus' returning: #void
	args: #( #self #cObject #int #cObject #cObject #string #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintSlider: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height orientation: orientation
    <cCall: 'gtk_paint_slider' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintHandle: window stateType: stateType shadowType: shadowType area: area widget: widget detail: detail x: x y: y width: width height: height orientation: orientation
    <cCall: 'gtk_paint_handle' returning: #void
	args: #( #self #cObject #int #int #cObject #cObject #string #int #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintExpander: window stateType: stateType area: area widget: widget detail: detail x: x y: y expanderStyle: expanderStyle
    <cCall: 'gtk_paint_expander' returning: #void
	args: #( #self #cObject #int #cObject #cObject #string #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintLayout: window stateType: stateType useText: useText area: area widget: widget detail: detail x: x y: y layout: layout
    <cCall: 'gtk_paint_layout' returning: #void
	args: #( #self #cObject #int #boolean #cObject #cObject #string #int #int #cObject )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintResizeGrip: window stateType: stateType area: area widget: widget detail: detail edge: edge x: x y: y width: width height: height
    <cCall: 'gtk_paint_resize_grip' returning: #void
	args: #( #self #cObject #int #cObject #cObject #string #int #int #int #int #int )>! !

!GtkStyle methodsFor: 'C call-outs'!
paintSpinner: window stateType: stateType area: area widget: widget detail: detail step: step x: x y: y width: width height: height
    <cCall: 'gtk_paint_spinner' returning: #void
	args: #( #self #cObject #int #cObject #cObject #string #int #int #int #int #int )>! !

!GtkBorder class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_border_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkBorder!

!GtkBorder class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_border_new' returning: #{GtkBorder}
	args: #( )>! !

!GtkBorder methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_border_copy' returning: #{GtkBorder}
	args: #( #self )>! !

!GtkBorder methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_border_free' returning: #void
	args: #( #self )>! !

!GtkStyle methodsFor: 'C call-outs'!
get: widgetType varargs: varargs
    <cCall: 'gtk_style_get' returning: #void
	args: #( #self #long #variadic )>! !

!GtkStyle class methodsFor: 'C call-outs'!
drawInsertionCursor: widget drawable: drawable area: area location: location isPrimary: isPrimary direction: direction drawArrow: drawArrow
    <cCall: 'gtk_draw_insertion_cursor' returning: #void
	args: #( #cObject #cObject #cObject #cObject #boolean #int #boolean )>! !

!Gtk class methodsFor: 'C call-outs'!
rcAddDefaultFile: filename
    <cCall: 'gtk_rc_add_default_file' returning: #void
	args: #( #string )>! !

!Gtk class methodsFor: 'C call-outs'!
rcSetDefaultFiles: filenames
    <cCall: 'gtk_rc_set_default_files' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
rcGetDefaultFiles
    <cCall: 'gtk_rc_get_default_files' returning: #string
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
rcGetStyle: widget
    <cCall: 'gtk_rc_get_style' returning: #{GtkStyle}
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
rcGetStyleByPaths: settings widgetPath: widgetPath classPath: classPath type: type
    <cCall: 'gtk_rc_get_style_by_paths' returning: #{GtkStyle}
	args: #( #cObject #string #string #long )>! !

!Gtk class methodsFor: 'C call-outs'!
rcReparseAllForSettings: settings forceLoad: forceLoad
    <cCall: 'gtk_rc_reparse_all_for_settings' returning: #boolean
	args: #( #cObject #boolean )>! !

!Gtk class methodsFor: 'C call-outs'!
rcResetStyles: settings
    <cCall: 'gtk_rc_reset_styles' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
rcParse: filename
    <cCall: 'gtk_rc_parse' returning: #void
	args: #( #string )>! !

!Gtk class methodsFor: 'C call-outs'!
rcParseString: rcString
    <cCall: 'gtk_rc_parse_string' returning: #void
	args: #( #string )>! !

!Gtk class methodsFor: 'C call-outs'!
rcReparseAll
    <cCall: 'gtk_rc_reparse_all' returning: #boolean
	args: #( )>! !

!GtkRcStyle class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_rc_style_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRcStyle!

!GtkRcStyle class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_rc_style_new' returning: #{GtkRcStyle}
	args: #( )>! !

!GtkRcStyle methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_rc_style_copy' returning: #{GtkRcStyle}
	args: #( #self )>! !

!Gtk class methodsFor: 'C call-outs'!
rcFindModuleInPath: moduleFile
    <cCall: 'gtk_rc_find_module_in_path' returning: #string
	args: #( #string )>! !

!Gtk class methodsFor: 'C call-outs'!
rcGetThemeDir
    <cCall: 'gtk_rc_get_theme_dir' returning: #string
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
rcGetModuleDir
    <cCall: 'gtk_rc_get_module_dir' returning: #string
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
rcGetImModulePath
    <cCall: 'gtk_rc_get_im_module_path' returning: #string
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
rcGetImModuleFile
    <cCall: 'gtk_rc_get_im_module_file' returning: #string
	args: #( )>! !

!GtkSettings class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_settings_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkSettings!

!GtkSettings class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'gtk_settings_get_default' returning: #{GtkSettings}
	args: #( )>! !

!GtkSettings class methodsFor: 'C call-outs'!
getForScreen: screen
    <cCall: 'gtk_settings_get_for_screen' returning: #{GtkSettings}
	args: #( #cObject )>! !

!GtkSettings class methodsFor: 'C call-outs'!
installProperty: pspec
    <cCall: 'gtk_settings_install_property' returning: #void
	args: #( #cObject )>! !

!GtkSettings class methodsFor: 'C call-outs'!
installPropertyParser: pspec parser: parser
    <cCall: 'gtk_settings_install_property_parser' returning: #void
	args: #( #cObject #int )>! !

!GtkSettings methodsFor: 'C call-outs'!
setPropertyValue: name svalue: svalue
    <cCall: 'gtk_settings_set_property_value' returning: #void
	args: #( #self #string #cObject )>! !

!GtkSettings methodsFor: 'C call-outs'!
setStringProperty: name vString: vString origin: origin
    <cCall: 'gtk_settings_set_string_property' returning: #void
	args: #( #self #string #string #string )>! !

!GtkSettings methodsFor: 'C call-outs'!
setLongProperty: name vLong: vLong origin: origin
    <cCall: 'gtk_settings_set_long_property' returning: #void
	args: #( #self #string #long #string )>! !

!GtkSettings methodsFor: 'C call-outs'!
setDoubleProperty: name vDouble: vDouble origin: origin
    <cCall: 'gtk_settings_set_double_property' returning: #void
	args: #( #self #string #double #string )>! !

!GtkWidget class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_widget_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkWidget!

!GtkWidget class methodsFor: 'C call-outs'!
new: type varargs: varargs
    <cCall: 'gtk_widget_new' returning: #{GtkWidget}
	args: #( #long #variadic )>! !

!GtkWidget methodsFor: 'C call-outs'!
destroy
    <cCall: 'gtk_widget_destroy' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
destroyed: widgetPointer
    <cCall: 'gtk_widget_destroyed' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
hideAll
    <cCall: 'gtk_widget_hide_all' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
unparent
    <cCall: 'gtk_widget_unparent' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
show
    <cCall: 'gtk_widget_show' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
showNow
    <cCall: 'gtk_widget_show_now' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
hide
    <cCall: 'gtk_widget_hide' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
showAll
    <cCall: 'gtk_widget_show_all' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setNoShowAll: noShowAll
    <cCall: 'gtk_widget_set_no_show_all' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getNoShowAll
    <cCall: 'gtk_widget_get_no_show_all' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
map
    <cCall: 'gtk_widget_map' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
unmap
    <cCall: 'gtk_widget_unmap' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
realize
    <cCall: 'gtk_widget_realize' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
unrealize
    <cCall: 'gtk_widget_unrealize' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
queueDraw
    <cCall: 'gtk_widget_queue_draw' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
queueDrawArea: x y: y width: width height: height
    <cCall: 'gtk_widget_queue_draw_area' returning: #void
	args: #( #self #int #int #int #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
queueResize
    <cCall: 'gtk_widget_queue_resize' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
queueResizeNoRedraw
    <cCall: 'gtk_widget_queue_resize_no_redraw' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
sizeRequest: requisition
    <cCall: 'gtk_widget_size_request' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
sizeAllocate: allocation
    <cCall: 'gtk_widget_size_allocate' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
getChildRequisition: requisition
    <cCall: 'gtk_widget_get_child_requisition' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
addAccelerator: accelSignal accelGroup: accelGroup accelKey: accelKey accelMods: accelMods accelFlags: accelFlags
    <cCall: 'gtk_widget_add_accelerator' returning: #void
	args: #( #self #string #cObject #int #int #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
removeAccelerator: accelGroup accelKey: accelKey accelMods: accelMods
    <cCall: 'gtk_widget_remove_accelerator' returning: #boolean
	args: #( #self #cObject #int #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
setAccelPath: accelPath accelGroup: accelGroup
    <cCall: 'gtk_widget_set_accel_path' returning: #void
	args: #( #self #string #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
listAccelClosures
    <cCall: 'gtk_widget_list_accel_closures' returning: #{GList}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
canActivateAccel: signalId
    <cCall: 'gtk_widget_can_activate_accel' returning: #boolean
	args: #( #self #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
mnemonicActivate: groupCycling
    <cCall: 'gtk_widget_mnemonic_activate' returning: #boolean
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
event: event
    <cCall: 'gtk_widget_event' returning: #boolean
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
sendExpose: event
    <cCall: 'gtk_widget_send_expose' returning: #int
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
sendFocusChange: event
    <cCall: 'gtk_widget_send_focus_change' returning: #boolean
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
activate
    <cCall: 'gtk_widget_activate' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setScrollAdjustments: hadjustment vadjustment: vadjustment
    <cCall: 'gtk_widget_set_scroll_adjustments' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
reparent: newParent
    <cCall: 'gtk_widget_reparent' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
intersect: area intersection: intersection
    <cCall: 'gtk_widget_intersect' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
regionIntersect: region
    <cCall: 'gtk_widget_region_intersect' returning: #{GdkRegion}
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
freezeChildNotify
    <cCall: 'gtk_widget_freeze_child_notify' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
childNotify: childProperty
    <cCall: 'gtk_widget_child_notify' returning: #void
	args: #( #self #string )>! !

!GtkWidget methodsFor: 'C call-outs'!
thawChildNotify
    <cCall: 'gtk_widget_thaw_child_notify' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setCanFocus: canFocus
    <cCall: 'gtk_widget_set_can_focus' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getCanFocus
    <cCall: 'gtk_widget_get_can_focus' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
hasFocus
    <cCall: 'gtk_widget_has_focus' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
isFocus
    <cCall: 'gtk_widget_is_focus' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
grabFocus
    <cCall: 'gtk_widget_grab_focus' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setCanDefault: canDefault
    <cCall: 'gtk_widget_set_can_default' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getCanDefault
    <cCall: 'gtk_widget_get_can_default' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
hasDefault
    <cCall: 'gtk_widget_has_default' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
grabDefault
    <cCall: 'gtk_widget_grab_default' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setReceivesDefault: receivesDefault
    <cCall: 'gtk_widget_set_receives_default' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getReceivesDefault
    <cCall: 'gtk_widget_get_receives_default' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
hasGrab
    <cCall: 'gtk_widget_has_grab' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setName: name
    <cCall: 'gtk_widget_set_name' returning: #void
	args: #( #self #string )>! !

!GtkWidget methodsFor: 'C call-outs'!
setState: state
    <cCall: 'gtk_widget_set_state' returning: #void
	args: #( #self #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
getState
    <cCall: 'gtk_widget_get_state' returning: #int
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setSensitive: sensitive
    <cCall: 'gtk_widget_set_sensitive' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getSensitive
    <cCall: 'gtk_widget_get_sensitive' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
isSensitive
    <cCall: 'gtk_widget_is_sensitive' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setVisible: visible
    <cCall: 'gtk_widget_set_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getVisible
    <cCall: 'gtk_widget_get_visible' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setHasWindow: hasWindow
    <cCall: 'gtk_widget_set_has_window' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getHasWindow
    <cCall: 'gtk_widget_get_has_window' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
isToplevel
    <cCall: 'gtk_widget_is_toplevel' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
isDrawable
    <cCall: 'gtk_widget_is_drawable' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setRealized: realized
    <cCall: 'gtk_widget_set_realized' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getRealized
    <cCall: 'gtk_widget_get_realized' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setMapped: mapped
    <cCall: 'gtk_widget_set_mapped' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getMapped
    <cCall: 'gtk_widget_get_mapped' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setAppPaintable: appPaintable
    <cCall: 'gtk_widget_set_app_paintable' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getAppPaintable
    <cCall: 'gtk_widget_get_app_paintable' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setDoubleBuffered: doubleBuffered
    <cCall: 'gtk_widget_set_double_buffered' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getDoubleBuffered
    <cCall: 'gtk_widget_get_double_buffered' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setRedrawOnAllocate: redrawOnAllocate
    <cCall: 'gtk_widget_set_redraw_on_allocate' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
setParent: parent
    <cCall: 'gtk_widget_set_parent' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
getParent
    <cCall: 'gtk_widget_get_parent' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setParentWindow: parentWindow
    <cCall: 'gtk_widget_set_parent_window' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
getParentWindow
    <cCall: 'gtk_widget_get_parent_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setChildVisible: isVisible
    <cCall: 'gtk_widget_set_child_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getChildVisible
    <cCall: 'gtk_widget_get_child_visible' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setWindow: window
    <cCall: 'gtk_widget_set_window' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
getWindow
    <cCall: 'gtk_widget_get_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getAllocation: allocation
    <cCall: 'gtk_widget_get_allocation' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
setAllocation: allocation
    <cCall: 'gtk_widget_set_allocation' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
getRequisition: requisition
    <cCall: 'gtk_widget_get_requisition' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
childFocus: direction
    <cCall: 'gtk_widget_child_focus' returning: #boolean
	args: #( #self #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
keynavFailed: direction
    <cCall: 'gtk_widget_keynav_failed' returning: #boolean
	args: #( #self #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
errorBell
    <cCall: 'gtk_widget_error_bell' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setSizeRequest: width height: height
    <cCall: 'gtk_widget_set_size_request' returning: #void
	args: #( #self #int #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
getSizeRequest: width height: height
    <cCall: 'gtk_widget_get_size_request' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
setEvents: events
    <cCall: 'gtk_widget_set_events' returning: #void
	args: #( #self #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
addEvents: events
    <cCall: 'gtk_widget_add_events' returning: #void
	args: #( #self #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
setExtensionEvents: mode
    <cCall: 'gtk_widget_set_extension_events' returning: #void
	args: #( #self #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
getExtensionEvents
    <cCall: 'gtk_widget_get_extension_events' returning: #int
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getToplevel
    <cCall: 'gtk_widget_get_toplevel' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getAncestor: widgetType
    <cCall: 'gtk_widget_get_ancestor' returning: #{GtkWidget}
	args: #( #self #long )>! !

!GtkWidget methodsFor: 'C call-outs'!
getColormap
    <cCall: 'gtk_widget_get_colormap' returning: #{GdkColormap}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getVisual
    <cCall: 'gtk_widget_get_visual' returning: #{GdkVisual}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getScreen
    <cCall: 'gtk_widget_get_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
hasScreen
    <cCall: 'gtk_widget_has_screen' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getDisplay
    <cCall: 'gtk_widget_get_display' returning: #{GdkDisplay}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getRootWindow
    <cCall: 'gtk_widget_get_root_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getSettings
    <cCall: 'gtk_widget_get_settings' returning: #{GtkSettings}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getClipboard: selection
    <cCall: 'gtk_widget_get_clipboard' returning: #{GtkClipboard}
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
getSnapshot: clipRect
    <cCall: 'gtk_widget_get_snapshot' returning: #{GdkPixmap}
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
getAccessible
    <cCall: 'gtk_widget_get_accessible' returning: #{AtkObject}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setColormap: colormap
    <cCall: 'gtk_widget_set_colormap' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
getEvents
    <cCall: 'gtk_widget_get_events' returning: #int
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getPointer: x y: y
    <cCall: 'gtk_widget_get_pointer' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
isAncestor: ancestor
    <cCall: 'gtk_widget_is_ancestor' returning: #boolean
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
translateCoordinates: destWidget srcX: srcX srcY: srcY destX: destX destY: destY
    <cCall: 'gtk_widget_translate_coordinates' returning: #boolean
	args: #( #self #cObject #int #int #cObject #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
hideOnDelete
    <cCall: 'gtk_widget_hide_on_delete' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
styleAttach
    <cCall: 'gtk_widget_style_attach' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
hasRcStyle
    <cCall: 'gtk_widget_has_rc_style' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setStyle: style
    <cCall: 'gtk_widget_set_style' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
ensureStyle
    <cCall: 'gtk_widget_ensure_style' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getStyle
    <cCall: 'gtk_widget_get_style' returning: #{GtkStyle}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
modifyStyle: style
    <cCall: 'gtk_widget_modify_style' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
getModifierStyle
    <cCall: 'gtk_widget_get_modifier_style' returning: #{GtkRcStyle}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
modifyFg: state color: color
    <cCall: 'gtk_widget_modify_fg' returning: #void
	args: #( #self #int #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
modifyBg: state color: color
    <cCall: 'gtk_widget_modify_bg' returning: #void
	args: #( #self #int #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
modifyText: state color: color
    <cCall: 'gtk_widget_modify_text' returning: #void
	args: #( #self #int #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
modifyBase: state color: color
    <cCall: 'gtk_widget_modify_base' returning: #void
	args: #( #self #int #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
modifyCursor: primary secondary: secondary
    <cCall: 'gtk_widget_modify_cursor' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
modifyFont: fontDesc
    <cCall: 'gtk_widget_modify_font' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
createPangoContext
    <cCall: 'gtk_widget_create_pango_context' returning: #{PangoContext}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
getPangoContext
    <cCall: 'gtk_widget_get_pango_context' returning: #{PangoContext}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
createPangoLayout: text
    <cCall: 'gtk_widget_create_pango_layout' returning: #{PangoLayout}
	args: #( #self #string )>! !

!GtkWidget methodsFor: 'C call-outs'!
renderIcon: stockId size: size detail: detail
    <cCall: 'gtk_widget_render_icon' returning: #{GdkPixbuf}
	args: #( #self #string #int #string )>! !

!GtkWidget methodsFor: 'C call-outs'!
setCompositeName: name
    <cCall: 'gtk_widget_set_composite_name' returning: #void
	args: #( #self #string )>! !

!GtkWidget methodsFor: 'C call-outs'!
getCompositeName
    <cCall: 'gtk_widget_get_composite_name' returning: #string
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
resetRcStyles
    <cCall: 'gtk_widget_reset_rc_styles' returning: #void
	args: #( #self )>! !

!GtkWidget class methodsFor: 'C call-outs'!
pushColormap: cmap
    <cCall: 'gtk_widget_push_colormap' returning: #void
	args: #( #cObject )>! !

!GtkWidget class methodsFor: 'C call-outs'!
pushCompositeChild
    <cCall: 'gtk_widget_push_composite_child' returning: #void
	args: #( )>! !

!GtkWidget class methodsFor: 'C call-outs'!
popCompositeChild
    <cCall: 'gtk_widget_pop_composite_child' returning: #void
	args: #( )>! !

!GtkWidget class methodsFor: 'C call-outs'!
popColormap
    <cCall: 'gtk_widget_pop_colormap' returning: #void
	args: #( )>! !

!GtkWidget class methodsFor: 'C call-outs'!
classInstallStyleProperty: klass pspec: pspec
    <cCall: 'gtk_widget_class_install_style_property' returning: #void
	args: #( #cObject #cObject )>! !

!GtkWidget class methodsFor: 'C call-outs'!
classInstallStylePropertyParser: klass pspec: pspec parser: parser
    <cCall: 'gtk_widget_class_install_style_property_parser' returning: #void
	args: #( #cObject #cObject #int )>! !

!GtkWidget class methodsFor: 'C call-outs'!
classFindStyleProperty: klass propertyName: propertyName
    <cCall: 'gtk_widget_class_find_style_property' returning: #{GParamSpec}
	args: #( #cObject #string )>! !

!GtkWidget class methodsFor: 'C call-outs'!
classListStyleProperties: klass nProperties: nProperties
    <cCall: 'gtk_widget_class_list_style_properties' returning: #{GParamSpec}
	args: #( #cObject #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
styleGet: firstPropertyName
    <cCall: 'gtk_widget_style_get' returning: #void
	args: #( #self #variadic )>! !

!GtkWidget class methodsFor: 'C call-outs'!
setDefaultColormap: colormap
    <cCall: 'gtk_widget_set_default_colormap' returning: #void
	args: #( #cObject )>! !

!GtkWidget class methodsFor: 'C call-outs'!
getDefaultStyle
    <cCall: 'gtk_widget_get_default_style' returning: #{GtkStyle}
	args: #( )>! !

!GtkWidget class methodsFor: 'C call-outs'!
getDefaultColormap
    <cCall: 'gtk_widget_get_default_colormap' returning: #{GdkColormap}
	args: #( )>! !

!GtkWidget class methodsFor: 'C call-outs'!
getDefaultVisual
    <cCall: 'gtk_widget_get_default_visual' returning: #{GdkVisual}
	args: #( )>! !

!GtkWidget methodsFor: 'C call-outs'!
setDirection: dir
    <cCall: 'gtk_widget_set_direction' returning: #void
	args: #( #self #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
getDirection
    <cCall: 'gtk_widget_get_direction' returning: #int
	args: #( #self )>! !

!GtkWidget class methodsFor: 'C call-outs'!
setDefaultDirection: dir
    <cCall: 'gtk_widget_set_default_direction' returning: #void
	args: #( #int )>! !

!GtkWidget class methodsFor: 'C call-outs'!
getDefaultDirection
    <cCall: 'gtk_widget_get_default_direction' returning: #int
	args: #( )>! !

!GtkWidget methodsFor: 'C call-outs'!
isComposited
    <cCall: 'gtk_widget_is_composited' returning: #boolean
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
shapeCombineMask: shapeMask offsetX: offsetX offsetY: offsetY
    <cCall: 'gtk_widget_shape_combine_mask' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
inputShapeCombineMask: shapeMask offsetX: offsetX offsetY: offsetY
    <cCall: 'gtk_widget_input_shape_combine_mask' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkWidget methodsFor: 'C call-outs'!
resetShapes
    <cCall: 'gtk_widget_reset_shapes' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
path: pathLength path: path pathReversed: pathReversed
    <cCall: 'gtk_widget_path' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
classPath: pathLength path: path pathReversed: pathReversed
    <cCall: 'gtk_widget_class_path' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
listMnemonicLabels
    <cCall: 'gtk_widget_list_mnemonic_labels' returning: #{GList}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
addMnemonicLabel: label
    <cCall: 'gtk_widget_add_mnemonic_label' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
removeMnemonicLabel: label
    <cCall: 'gtk_widget_remove_mnemonic_label' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
setTooltipWindow: customWindow
    <cCall: 'gtk_widget_set_tooltip_window' returning: #void
	args: #( #self #cObject )>! !

!GtkWidget methodsFor: 'C call-outs'!
getTooltipWindow
    <cCall: 'gtk_widget_get_tooltip_window' returning: #{GtkWindow}
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
triggerTooltipQuery
    <cCall: 'gtk_widget_trigger_tooltip_query' returning: #void
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setTooltipText: text
    <cCall: 'gtk_widget_set_tooltip_text' returning: #void
	args: #( #self #string )>! !

!GtkWidget methodsFor: 'C call-outs'!
getTooltipText
    <cCall: 'gtk_widget_get_tooltip_text' returning: #string
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setTooltipMarkup: markup
    <cCall: 'gtk_widget_set_tooltip_markup' returning: #void
	args: #( #self #string )>! !

!GtkWidget methodsFor: 'C call-outs'!
getTooltipMarkup
    <cCall: 'gtk_widget_get_tooltip_markup' returning: #string
	args: #( #self )>! !

!GtkWidget methodsFor: 'C call-outs'!
setHasTooltip: hasTooltip
    <cCall: 'gtk_widget_set_has_tooltip' returning: #void
	args: #( #self #boolean )>! !

!GtkWidget methodsFor: 'C call-outs'!
getHasTooltip
    <cCall: 'gtk_widget_get_has_tooltip' returning: #boolean
	args: #( #self )>! !

!GtkRequisition class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_requisition_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRequisition!

!GtkRequisition methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_requisition_copy' returning: #{GtkRequisition}
	args: #( #self )>! !

!GtkRequisition methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_requisition_free' returning: #void
	args: #( #self )>! !

!GtkContainer class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_container_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkContainer!

!GtkContainer methodsFor: 'C call-outs'!
setBorderWidth: borderWidth
    <cCall: 'gtk_container_set_border_width' returning: #void
	args: #( #self #int )>! !

!GtkContainer methodsFor: 'C call-outs'!
getBorderWidth
    <cCall: 'gtk_container_get_border_width' returning: #int
	args: #( #self )>! !

!GtkContainer methodsFor: 'C call-outs'!
add: widget
    <cCall: 'gtk_container_add' returning: #void
	args: #( #self #cObject )>! !

!GtkContainer methodsFor: 'C call-outs'!
remove: widget
    <cCall: 'gtk_container_remove' returning: #void
	args: #( #self #cObject )>! !

!GtkContainer methodsFor: 'C call-outs'!
setResizeMode: resizeMode
    <cCall: 'gtk_container_set_resize_mode' returning: #void
	args: #( #self #int )>! !

!GtkContainer methodsFor: 'C call-outs'!
getResizeMode
    <cCall: 'gtk_container_get_resize_mode' returning: #int
	args: #( #self )>! !

!GtkContainer methodsFor: 'C call-outs'!
checkResize
    <cCall: 'gtk_container_check_resize' returning: #void
	args: #( #self )>! !

!GtkContainer methodsFor: 'C call-outs'!
foreach: callback callbackData: callbackData
    <cCall: 'gtk_container_foreach' returning: #void
	args: #( #self #int #cObject )>! !

!GtkContainer methodsFor: 'C call-outs'!
getChildren
    <cCall: 'gtk_container_get_children' returning: #{GList}
	args: #( #self )>! !

!GtkContainer methodsFor: 'C call-outs'!
propagateExpose: child event: event
    <cCall: 'gtk_container_propagate_expose' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkContainer methodsFor: 'C call-outs'!
setFocusChain: focusableWidgets
    <cCall: 'gtk_container_set_focus_chain' returning: #void
	args: #( #self #cObject )>! !

!GtkContainer methodsFor: 'C call-outs'!
getFocusChain: focusableWidgets
    <cCall: 'gtk_container_get_focus_chain' returning: #boolean
	args: #( #self #cObject )>! !

!GtkContainer methodsFor: 'C call-outs'!
unsetFocusChain
    <cCall: 'gtk_container_unset_focus_chain' returning: #void
	args: #( #self )>! !

!GtkContainer methodsFor: 'C call-outs'!
setReallocateRedraws: needsRedraws
    <cCall: 'gtk_container_set_reallocate_redraws' returning: #void
	args: #( #self #boolean )>! !

!GtkContainer methodsFor: 'C call-outs'!
setFocusChild: child
    <cCall: 'gtk_container_set_focus_child' returning: #void
	args: #( #self #cObject )>! !

!GtkContainer methodsFor: 'C call-outs'!
setFocusVadjustment: adjustment
    <cCall: 'gtk_container_set_focus_vadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkContainer methodsFor: 'C call-outs'!
getFocusVadjustment
    <cCall: 'gtk_container_get_focus_vadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkContainer methodsFor: 'C call-outs'!
setFocusHadjustment: adjustment
    <cCall: 'gtk_container_set_focus_hadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkContainer methodsFor: 'C call-outs'!
getFocusHadjustment
    <cCall: 'gtk_container_get_focus_hadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkContainer methodsFor: 'C call-outs'!
resizeChildren
    <cCall: 'gtk_container_resize_children' returning: #void
	args: #( #self )>! !

!GtkContainer methodsFor: 'C call-outs'!
childType
    <cCall: 'gtk_container_child_type' returning: #long
	args: #( #self )>! !

!GtkContainer class methodsFor: 'C call-outs'!
classInstallChildProperty: cclass propertyId: propertyId pspec: pspec
    <cCall: 'gtk_container_class_install_child_property' returning: #void
	args: #( #cObject #int #cObject )>! !

!GtkContainer class methodsFor: 'C call-outs'!
classFindChildProperty: cclass propertyName: propertyName
    <cCall: 'gtk_container_class_find_child_property' returning: #{GParamSpec}
	args: #( #cObject #string )>! !

!GtkContainer class methodsFor: 'C call-outs'!
classListChildProperties: cclass nProperties: nProperties
    <cCall: 'gtk_container_class_list_child_properties' returning: #{GParamSpec}
	args: #( #cObject #cObject )>! !

!GtkContainer methodsFor: 'C call-outs'!
addWithProperties: widget varargs: varargs
    <cCall: 'gtk_container_add_with_properties' returning: #void
	args: #( #self #cObject #variadic )>! !

!GtkContainer methodsFor: 'C call-outs'!
childSet: child varargs: varargs
    <cCall: 'gtk_container_child_set' returning: #void
	args: #( #self #cObject #variadic )>! !

!GtkContainer methodsFor: 'C call-outs'!
childGet: child varargs: varargs
    <cCall: 'gtk_container_child_get' returning: #void
	args: #( #self #cObject #variadic )>! !

!GtkContainer methodsFor: 'C call-outs'!
forall: callback callbackData: callbackData
    <cCall: 'gtk_container_forall' returning: #void
	args: #( #self #int #cObject )>! !

!GtkBin class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_bin_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkBin!

!GtkBin methodsFor: 'C call-outs'!
getChild
    <cCall: 'gtk_bin_get_child' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkWindow class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_window_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkWindow!

!GtkWindow class methodsFor: 'C call-outs'!
new: type
    <cCall: 'gtk_window_new' returning: #{GtkWindow}
	args: #( #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
setTitle: title
    <cCall: 'gtk_window_set_title' returning: #void
	args: #( #self #string )>! !

!GtkWindow methodsFor: 'C call-outs'!
setWmclass: wmclassName wmclassClass: wmclassClass
    <cCall: 'gtk_window_set_wmclass' returning: #void
	args: #( #self #string #string )>! !

!GtkWindow methodsFor: 'C call-outs'!
setRole: role
    <cCall: 'gtk_window_set_role' returning: #void
	args: #( #self #string )>! !

!GtkWindow methodsFor: 'C call-outs'!
setStartupId: startupId
    <cCall: 'gtk_window_set_startup_id' returning: #void
	args: #( #self #string )>! !

!GtkWindow methodsFor: 'C call-outs'!
addAccelGroup: accelGroup
    <cCall: 'gtk_window_add_accel_group' returning: #void
	args: #( #self #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
removeAccelGroup: accelGroup
    <cCall: 'gtk_window_remove_accel_group' returning: #void
	args: #( #self #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
setPosition: position
    <cCall: 'gtk_window_set_position' returning: #void
	args: #( #self #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
activateFocus
    <cCall: 'gtk_window_activate_focus' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setFocus: focus
    <cCall: 'gtk_window_set_focus' returning: #void
	args: #( #self #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
getFocus
    <cCall: 'gtk_window_get_focus' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setDefault: defaultWidget
    <cCall: 'gtk_window_set_default' returning: #void
	args: #( #self #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
getDefaultWidget
    <cCall: 'gtk_window_get_default_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
activateDefault
    <cCall: 'gtk_window_activate_default' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setTransientFor: parent
    <cCall: 'gtk_window_set_transient_for' returning: #void
	args: #( #self #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
getTransientFor
    <cCall: 'gtk_window_get_transient_for' returning: #{GtkWindow}
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setOpacity: opacity
    <cCall: 'gtk_window_set_opacity' returning: #void
	args: #( #self #double )>! !

!GtkWindow methodsFor: 'C call-outs'!
getOpacity
    <cCall: 'gtk_window_get_opacity' returning: #double
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setTypeHint: hint
    <cCall: 'gtk_window_set_type_hint' returning: #void
	args: #( #self #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
getTypeHint
    <cCall: 'gtk_window_get_type_hint' returning: #int
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setSkipTaskbarHint: setting
    <cCall: 'gtk_window_set_skip_taskbar_hint' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getSkipTaskbarHint
    <cCall: 'gtk_window_get_skip_taskbar_hint' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setSkipPagerHint: setting
    <cCall: 'gtk_window_set_skip_pager_hint' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getSkipPagerHint
    <cCall: 'gtk_window_get_skip_pager_hint' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setUrgencyHint: setting
    <cCall: 'gtk_window_set_urgency_hint' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getUrgencyHint
    <cCall: 'gtk_window_get_urgency_hint' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setAcceptFocus: setting
    <cCall: 'gtk_window_set_accept_focus' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getAcceptFocus
    <cCall: 'gtk_window_get_accept_focus' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setFocusOnMap: setting
    <cCall: 'gtk_window_set_focus_on_map' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getFocusOnMap
    <cCall: 'gtk_window_get_focus_on_map' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setDestroyWithParent: setting
    <cCall: 'gtk_window_set_destroy_with_parent' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getDestroyWithParent
    <cCall: 'gtk_window_get_destroy_with_parent' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setMnemonicsVisible: setting
    <cCall: 'gtk_window_set_mnemonics_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getMnemonicsVisible
    <cCall: 'gtk_window_get_mnemonics_visible' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setResizable: resizable
    <cCall: 'gtk_window_set_resizable' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getResizable
    <cCall: 'gtk_window_get_resizable' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setGravity: gravity
    <cCall: 'gtk_window_set_gravity' returning: #void
	args: #( #self #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
getGravity
    <cCall: 'gtk_window_get_gravity' returning: #int
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setGeometryHints: geometryWidget geometry: geometry geomMask: geomMask
    <cCall: 'gtk_window_set_geometry_hints' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
setScreen: screen
    <cCall: 'gtk_window_set_screen' returning: #void
	args: #( #self #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
getScreen
    <cCall: 'gtk_window_get_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
isActive
    <cCall: 'gtk_window_is_active' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
hasToplevelFocus
    <cCall: 'gtk_window_has_toplevel_focus' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setDecorated: setting
    <cCall: 'gtk_window_set_decorated' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getDecorated
    <cCall: 'gtk_window_get_decorated' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setDeletable: setting
    <cCall: 'gtk_window_set_deletable' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getDeletable
    <cCall: 'gtk_window_get_deletable' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setIconList: list
    <cCall: 'gtk_window_set_icon_list' returning: #void
	args: #( #self #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
getIconList
    <cCall: 'gtk_window_get_icon_list' returning: #{GList}
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setIcon: icon
    <cCall: 'gtk_window_set_icon' returning: #void
	args: #( #self #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
setIconName: name
    <cCall: 'gtk_window_set_icon_name' returning: #void
	args: #( #self #string )>! !

!GtkWindow methodsFor: 'C call-outs'!
setIconFromFile: filename err: err
    <cCall: 'gtk_window_set_icon_from_file' returning: #boolean
	args: #( #self #string #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
getIcon
    <cCall: 'gtk_window_get_icon' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GtkWindow class methodsFor: 'C call-outs'!
setDefaultIconList: list
    <cCall: 'gtk_window_set_default_icon_list' returning: #void
	args: #( #cObject )>! !

!GtkWindow class methodsFor: 'C call-outs'!
getDefaultIconList
    <cCall: 'gtk_window_get_default_icon_list' returning: #{GList}
	args: #( )>! !

!GtkWindow class methodsFor: 'C call-outs'!
setDefaultIcon: icon
    <cCall: 'gtk_window_set_default_icon' returning: #void
	args: #( #cObject )>! !

!GtkWindow class methodsFor: 'C call-outs'!
setDefaultIconName: name
    <cCall: 'gtk_window_set_default_icon_name' returning: #void
	args: #( #string )>! !

!GtkWindow class methodsFor: 'C call-outs'!
setDefaultIconFromFile: filename err: err
    <cCall: 'gtk_window_set_default_icon_from_file' returning: #boolean
	args: #( #string #cObject )>! !

!GtkWindow class methodsFor: 'C call-outs'!
setAutoStartupNotification: setting
    <cCall: 'gtk_window_set_auto_startup_notification' returning: #void
	args: #( #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
setModal: modal
    <cCall: 'gtk_window_set_modal' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
getModal
    <cCall: 'gtk_window_get_modal' returning: #boolean
	args: #( #self )>! !

!GtkWindow class methodsFor: 'C call-outs'!
listToplevels
    <cCall: 'gtk_window_list_toplevels' returning: #{GList}
	args: #( )>! !

!GtkWindow methodsFor: 'C call-outs'!
addMnemonic: keyval target: target
    <cCall: 'gtk_window_add_mnemonic' returning: #void
	args: #( #self #int #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
removeMnemonic: keyval target: target
    <cCall: 'gtk_window_remove_mnemonic' returning: #void
	args: #( #self #int #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
mnemonicActivate: keyval modifier: modifier
    <cCall: 'gtk_window_mnemonic_activate' returning: #boolean
	args: #( #self #int #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
setMnemonicModifier: modifier
    <cCall: 'gtk_window_set_mnemonic_modifier' returning: #void
	args: #( #self #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
getMnemonicModifier
    <cCall: 'gtk_window_get_mnemonic_modifier' returning: #int
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
activateKey: event
    <cCall: 'gtk_window_activate_key' returning: #boolean
	args: #( #self #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
propagateKeyEvent: event
    <cCall: 'gtk_window_propagate_key_event' returning: #boolean
	args: #( #self #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
present
    <cCall: 'gtk_window_present' returning: #void
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
presentWithTime: timestamp
    <cCall: 'gtk_window_present_with_time' returning: #void
	args: #( #self #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
iconify
    <cCall: 'gtk_window_iconify' returning: #void
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
deiconify
    <cCall: 'gtk_window_deiconify' returning: #void
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
stick
    <cCall: 'gtk_window_stick' returning: #void
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
unstick
    <cCall: 'gtk_window_unstick' returning: #void
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
maximize
    <cCall: 'gtk_window_maximize' returning: #void
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
unmaximize
    <cCall: 'gtk_window_unmaximize' returning: #void
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
fullscreen
    <cCall: 'gtk_window_fullscreen' returning: #void
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
unfullscreen
    <cCall: 'gtk_window_unfullscreen' returning: #void
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
setKeepAbove: setting
    <cCall: 'gtk_window_set_keep_above' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
setKeepBelow: setting
    <cCall: 'gtk_window_set_keep_below' returning: #void
	args: #( #self #boolean )>! !

!GtkWindow methodsFor: 'C call-outs'!
beginResizeDrag: edge button: button rootX: rootX rootY: rootY timestamp: timestamp
    <cCall: 'gtk_window_begin_resize_drag' returning: #void
	args: #( #self #int #int #int #int #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
beginMoveDrag: button rootX: rootX rootY: rootY timestamp: timestamp
    <cCall: 'gtk_window_begin_move_drag' returning: #void
	args: #( #self #int #int #int #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
setDefaultSize: width height: height
    <cCall: 'gtk_window_set_default_size' returning: #void
	args: #( #self #int #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
getDefaultSize: width height: height
    <cCall: 'gtk_window_get_default_size' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
resize: width height: height
    <cCall: 'gtk_window_resize' returning: #void
	args: #( #self #int #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
getSize: width height: height
    <cCall: 'gtk_window_get_size' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
move: x y: y
    <cCall: 'gtk_window_move' returning: #void
	args: #( #self #int #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
getPosition: rootX rootY: rootY
    <cCall: 'gtk_window_get_position' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkWindow methodsFor: 'C call-outs'!
parseGeometry: geometry
    <cCall: 'gtk_window_parse_geometry' returning: #boolean
	args: #( #self #string )>! !

!GtkWindow methodsFor: 'C call-outs'!
getGroup
    <cCall: 'gtk_window_get_group' returning: #{GtkWindowGroup}
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
hasGroup
    <cCall: 'gtk_window_has_group' returning: #boolean
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
reshowWithInitialSize
    <cCall: 'gtk_window_reshow_with_initial_size' returning: #void
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
getWindowType
    <cCall: 'gtk_window_get_window_type' returning: #int
	args: #( #self )>! !

!GtkWindowGroup class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_window_group_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkWindowGroup!

!GtkWindowGroup class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_window_group_new' returning: #{GtkWindowGroup}
	args: #( )>! !

!GtkWindowGroup methodsFor: 'C call-outs'!
addWindow: window
    <cCall: 'gtk_window_group_add_window' returning: #void
	args: #( #self #cObject )>! !

!GtkWindowGroup methodsFor: 'C call-outs'!
removeWindow: window
    <cCall: 'gtk_window_group_remove_window' returning: #void
	args: #( #self #cObject )>! !

!GtkWindowGroup methodsFor: 'C call-outs'!
listWindows
    <cCall: 'gtk_window_group_list_windows' returning: #{GList}
	args: #( #self )>! !

!GtkWindow methodsFor: 'C call-outs'!
removeEmbeddedXid: xid
    <cCall: 'gtk_window_remove_embedded_xid' returning: #void
	args: #( #self #int )>! !

!GtkWindow methodsFor: 'C call-outs'!
addEmbeddedXid: xid
    <cCall: 'gtk_window_add_embedded_xid' returning: #void
	args: #( #self #int )>! !

!GtkWindowGroup methodsFor: 'C call-outs'!
getCurrentGrab
    <cCall: 'gtk_window_group_get_current_grab' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkDialog class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_dialog_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkDialog!

!GtkDialog class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_dialog_new' returning: #{GtkDialog}
	args: #( )>! !

!GtkDialog class methodsFor: 'C call-outs'!
newWithButtons: title parent: parent flags: flags varargs: varargs
    <cCall: 'gtk_dialog_new_with_buttons' returning: #{GtkDialog}
	args: #( #string #cObject #int #variadic )>! !

!GtkDialog methodsFor: 'C call-outs'!
addActionWidget: child responseId: responseId
    <cCall: 'gtk_dialog_add_action_widget' returning: #void
	args: #( #self #cObject #int )>! !

!GtkDialog methodsFor: 'C call-outs'!
addButton: buttonText responseId: responseId
    <cCall: 'gtk_dialog_add_button' returning: #{GtkWidget}
	args: #( #self #string #int )>! !

!GtkDialog methodsFor: 'C call-outs'!
addButtons: firstButtonText
    <cCall: 'gtk_dialog_add_buttons' returning: #void
	args: #( #self #variadic )>! !

!GtkDialog methodsFor: 'C call-outs'!
setResponseSensitive: responseId setting: setting
    <cCall: 'gtk_dialog_set_response_sensitive' returning: #void
	args: #( #self #int #boolean )>! !

!GtkDialog methodsFor: 'C call-outs'!
setDefaultResponse: responseId
    <cCall: 'gtk_dialog_set_default_response' returning: #void
	args: #( #self #int )>! !

!GtkDialog methodsFor: 'C call-outs'!
getWidgetForResponse: responseId
    <cCall: 'gtk_dialog_get_widget_for_response' returning: #{GtkWidget}
	args: #( #self #int )>! !

!GtkDialog methodsFor: 'C call-outs'!
getResponseForWidget: widget
    <cCall: 'gtk_dialog_get_response_for_widget' returning: #int
	args: #( #self #cObject )>! !

!GtkDialog methodsFor: 'C call-outs'!
setHasSeparator: setting
    <cCall: 'gtk_dialog_set_has_separator' returning: #void
	args: #( #self #boolean )>! !

!GtkDialog methodsFor: 'C call-outs'!
getHasSeparator
    <cCall: 'gtk_dialog_get_has_separator' returning: #boolean
	args: #( #self )>! !

!Gtk class methodsFor: 'C call-outs'!
alternativeDialogButtonOrder: screen
    <cCall: 'gtk_alternative_dialog_button_order' returning: #boolean
	args: #( #cObject )>! !

!GtkDialog methodsFor: 'C call-outs'!
setAlternativeButtonOrder: firstResponseId
    <cCall: 'gtk_dialog_set_alternative_button_order' returning: #void
	args: #( #self #variadic )>! !

!GtkDialog methodsFor: 'C call-outs'!
setAlternativeButtonOrderFromArray: nParams newOrder: newOrder
    <cCall: 'gtk_dialog_set_alternative_button_order_from_array' returning: #void
	args: #( #self #int #cObject )>! !

!GtkDialog methodsFor: 'C call-outs'!
response: responseId
    <cCall: 'gtk_dialog_response' returning: #void
	args: #( #self #int )>! !

!GtkDialog methodsFor: 'C call-outs'!
run
    <cCall: 'gtk_dialog_run' returning: #int
	args: #( #self )>! !

!GtkDialog methodsFor: 'C call-outs'!
getActionArea
    <cCall: 'gtk_dialog_get_action_area' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkDialog methodsFor: 'C call-outs'!
getContentArea
    <cCall: 'gtk_dialog_get_content_area' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkAboutDialog class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_about_dialog_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkAboutDialog!

!GtkAboutDialog class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_about_dialog_new' returning: #{GtkAboutDialog}
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
showAboutDialog: parent varargs: varargs
    <cCall: 'gtk_show_about_dialog' returning: #void
	args: #( #cObject #variadic )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setProgramName: name
    <cCall: 'gtk_about_dialog_set_program_name' returning: #void
	args: #( #self #string )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setVersion: version
    <cCall: 'gtk_about_dialog_set_version' returning: #void
	args: #( #self #string )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setCopyright: copyright
    <cCall: 'gtk_about_dialog_set_copyright' returning: #void
	args: #( #self #string )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setComments: comments
    <cCall: 'gtk_about_dialog_set_comments' returning: #void
	args: #( #self #string )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setLicense: license
    <cCall: 'gtk_about_dialog_set_license' returning: #void
	args: #( #self #string )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
getWrapLicense
    <cCall: 'gtk_about_dialog_get_wrap_license' returning: #boolean
	args: #( #self )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setWrapLicense: wrapLicense
    <cCall: 'gtk_about_dialog_set_wrap_license' returning: #void
	args: #( #self #boolean )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setWebsite: website
    <cCall: 'gtk_about_dialog_set_website' returning: #void
	args: #( #self #string )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setWebsiteLabel: websiteLabel
    <cCall: 'gtk_about_dialog_set_website_label' returning: #void
	args: #( #self #string )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setAuthors: authors
    <cCall: 'gtk_about_dialog_set_authors' returning: #void
	args: #( #self #cObject )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setDocumenters: documenters
    <cCall: 'gtk_about_dialog_set_documenters' returning: #void
	args: #( #self #cObject )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setArtists: artists
    <cCall: 'gtk_about_dialog_set_artists' returning: #void
	args: #( #self #cObject )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setTranslatorCredits: translatorCredits
    <cCall: 'gtk_about_dialog_set_translator_credits' returning: #void
	args: #( #self #string )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
getLogo
    <cCall: 'gtk_about_dialog_get_logo' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setLogo: logo
    <cCall: 'gtk_about_dialog_set_logo' returning: #void
	args: #( #self #cObject )>! !

!GtkAboutDialog methodsFor: 'C call-outs'!
setLogoIconName: iconName
    <cCall: 'gtk_about_dialog_set_logo_icon_name' returning: #void
	args: #( #self #string )>! !

!GtkMisc class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_misc_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkMisc!

!GtkMisc methodsFor: 'C call-outs'!
setAlignment: xalign yalign: yalign
    <cCall: 'gtk_misc_set_alignment' returning: #void
	args: #( #self #float #float )>! !

!GtkMisc methodsFor: 'C call-outs'!
getAlignment: xalign yalign: yalign
    <cCall: 'gtk_misc_get_alignment' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkMisc methodsFor: 'C call-outs'!
setPadding: xpad ypad: ypad
    <cCall: 'gtk_misc_set_padding' returning: #void
	args: #( #self #int #int )>! !

!GtkMisc methodsFor: 'C call-outs'!
getPadding: xpad ypad: ypad
    <cCall: 'gtk_misc_get_padding' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkMenuShell class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_menu_shell_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkMenuShell!

!GtkMenuShell methodsFor: 'C call-outs'!
append: child
    <cCall: 'gtk_menu_shell_append' returning: #void
	args: #( #self #cObject )>! !

!GtkMenuShell methodsFor: 'C call-outs'!
prepend: child
    <cCall: 'gtk_menu_shell_prepend' returning: #void
	args: #( #self #cObject )>! !

!GtkMenuShell methodsFor: 'C call-outs'!
insert: child position: position
    <cCall: 'gtk_menu_shell_insert' returning: #void
	args: #( #self #cObject #int )>! !

!GtkMenuShell methodsFor: 'C call-outs'!
deactivate
    <cCall: 'gtk_menu_shell_deactivate' returning: #void
	args: #( #self )>! !

!GtkMenuShell methodsFor: 'C call-outs'!
selectItem: menuItem
    <cCall: 'gtk_menu_shell_select_item' returning: #void
	args: #( #self #cObject )>! !

!GtkMenuShell methodsFor: 'C call-outs'!
deselect
    <cCall: 'gtk_menu_shell_deselect' returning: #void
	args: #( #self )>! !

!GtkMenuShell methodsFor: 'C call-outs'!
activateItem: menuItem forceDeactivate: forceDeactivate
    <cCall: 'gtk_menu_shell_activate_item' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkMenuShell methodsFor: 'C call-outs'!
selectFirst: searchSensitive
    <cCall: 'gtk_menu_shell_select_first' returning: #void
	args: #( #self #boolean )>! !

!GtkMenuShell methodsFor: 'C call-outs'!
cancel
    <cCall: 'gtk_menu_shell_cancel' returning: #void
	args: #( #self )>! !

!GtkMenuShell methodsFor: 'C call-outs'!
getTakeFocus
    <cCall: 'gtk_menu_shell_get_take_focus' returning: #boolean
	args: #( #self )>! !

!GtkMenuShell methodsFor: 'C call-outs'!
setTakeFocus: takeFocus
    <cCall: 'gtk_menu_shell_set_take_focus' returning: #void
	args: #( #self #boolean )>! !

!GtkMenu class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_menu_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkMenu!

!GtkMenu class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_menu_new' returning: #{GtkMenu}
	args: #( )>! !

!GtkMenu methodsFor: 'C call-outs'!
popup: parentMenuShell parentMenuItem: parentMenuItem func: func data: data button: button activateTime: activateTime
    <cCall: 'gtk_menu_popup' returning: #void
	args: #( #self #cObject #cObject #cObject #cObject #int #int )>! !

!GtkMenu methodsFor: 'C call-outs'!
reposition
    <cCall: 'gtk_menu_reposition' returning: #void
	args: #( #self )>! !

!GtkMenu methodsFor: 'C call-outs'!
popdown
    <cCall: 'gtk_menu_popdown' returning: #void
	args: #( #self )>! !

!GtkMenu methodsFor: 'C call-outs'!
getActive
    <cCall: 'gtk_menu_get_active' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkMenu methodsFor: 'C call-outs'!
setActive: index
    <cCall: 'gtk_menu_set_active' returning: #void
	args: #( #self #int )>! !

!GtkMenu methodsFor: 'C call-outs'!
setAccelGroup: accelGroup
    <cCall: 'gtk_menu_set_accel_group' returning: #void
	args: #( #self #cObject )>! !

!GtkMenu methodsFor: 'C call-outs'!
getAccelGroup
    <cCall: 'gtk_menu_get_accel_group' returning: #{GtkAccelGroup}
	args: #( #self )>! !

!GtkMenu methodsFor: 'C call-outs'!
setAccelPath: accelPath
    <cCall: 'gtk_menu_set_accel_path' returning: #void
	args: #( #self #string )>! !

!GtkMenu methodsFor: 'C call-outs'!
attachToWidget: attachWidget detacher: detacher
    <cCall: 'gtk_menu_attach_to_widget' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkMenu methodsFor: 'C call-outs'!
detach
    <cCall: 'gtk_menu_detach' returning: #void
	args: #( #self )>! !

!GtkMenu methodsFor: 'C call-outs'!
getAttachWidget
    <cCall: 'gtk_menu_get_attach_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkMenu methodsFor: 'C call-outs'!
setTearoffState: tornOff
    <cCall: 'gtk_menu_set_tearoff_state' returning: #void
	args: #( #self #boolean )>! !

!GtkMenu methodsFor: 'C call-outs'!
getTearoffState
    <cCall: 'gtk_menu_get_tearoff_state' returning: #boolean
	args: #( #self )>! !

!GtkMenu methodsFor: 'C call-outs'!
setTitle: title
    <cCall: 'gtk_menu_set_title' returning: #void
	args: #( #self #string )>! !

!GtkMenu methodsFor: 'C call-outs'!
reorderChild: child position: position
    <cCall: 'gtk_menu_reorder_child' returning: #void
	args: #( #self #cObject #int )>! !

!GtkMenu methodsFor: 'C call-outs'!
setScreen: screen
    <cCall: 'gtk_menu_set_screen' returning: #void
	args: #( #self #cObject )>! !

!GtkMenu methodsFor: 'C call-outs'!
attach: child leftAttach: leftAttach rightAttach: rightAttach topAttach: topAttach bottomAttach: bottomAttach
    <cCall: 'gtk_menu_attach' returning: #void
	args: #( #self #cObject #int #int #int #int )>! !

!GtkMenu methodsFor: 'C call-outs'!
setMonitor: monitorNum
    <cCall: 'gtk_menu_set_monitor' returning: #void
	args: #( #self #int )>! !

!GtkMenu methodsFor: 'C call-outs'!
getMonitor
    <cCall: 'gtk_menu_get_monitor' returning: #int
	args: #( #self )>! !

!GtkMenu class methodsFor: 'C call-outs'!
getForAttachWidget: widget
    <cCall: 'gtk_menu_get_for_attach_widget' returning: #{GList}
	args: #( #cObject )>! !

!GtkMenu methodsFor: 'C call-outs'!
setReserveToggleSize: reserveToggleSize
    <cCall: 'gtk_menu_set_reserve_toggle_size' returning: #void
	args: #( #self #boolean )>! !

!GtkMenu methodsFor: 'C call-outs'!
getReserveToggleSize
    <cCall: 'gtk_menu_get_reserve_toggle_size' returning: #boolean
	args: #( #self )>! !

!GtkLabel class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_label_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkLabel!

!GtkLabel class methodsFor: 'C call-outs'!
new: str
    <cCall: 'gtk_label_new' returning: #{GtkLabel}
	args: #( #string )>! !

!GtkLabel class methodsFor: 'C call-outs'!
newWithMnemonic: str
    <cCall: 'gtk_label_new_with_mnemonic' returning: #{GtkLabel}
	args: #( #string )>! !

!GtkLabel methodsFor: 'C call-outs'!
setText: str
    <cCall: 'gtk_label_set_text' returning: #void
	args: #( #self #string )>! !

!GtkLabel methodsFor: 'C call-outs'!
setAttributes: attrs
    <cCall: 'gtk_label_set_attributes' returning: #void
	args: #( #self #cObject )>! !

!GtkLabel methodsFor: 'C call-outs'!
getAttributes
    <cCall: 'gtk_label_get_attributes' returning: #{PangoAttrList}
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setLabel: str
    <cCall: 'gtk_label_set_label' returning: #void
	args: #( #self #string )>! !

!GtkLabel methodsFor: 'C call-outs'!
setMarkup: str
    <cCall: 'gtk_label_set_markup' returning: #void
	args: #( #self #string )>! !

!GtkLabel methodsFor: 'C call-outs'!
setUseMarkup: setting
    <cCall: 'gtk_label_set_use_markup' returning: #void
	args: #( #self #boolean )>! !

!GtkLabel methodsFor: 'C call-outs'!
getUseMarkup
    <cCall: 'gtk_label_get_use_markup' returning: #boolean
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setUseUnderline: setting
    <cCall: 'gtk_label_set_use_underline' returning: #void
	args: #( #self #boolean )>! !

!GtkLabel methodsFor: 'C call-outs'!
getUseUnderline
    <cCall: 'gtk_label_get_use_underline' returning: #boolean
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setMarkupWithMnemonic: str
    <cCall: 'gtk_label_set_markup_with_mnemonic' returning: #void
	args: #( #self #string )>! !

!GtkLabel methodsFor: 'C call-outs'!
getMnemonicKeyval
    <cCall: 'gtk_label_get_mnemonic_keyval' returning: #int
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setMnemonicWidget: widget
    <cCall: 'gtk_label_set_mnemonic_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkLabel methodsFor: 'C call-outs'!
getMnemonicWidget
    <cCall: 'gtk_label_get_mnemonic_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setTextWithMnemonic: str
    <cCall: 'gtk_label_set_text_with_mnemonic' returning: #void
	args: #( #self #string )>! !

!GtkLabel methodsFor: 'C call-outs'!
setJustify: jtype
    <cCall: 'gtk_label_set_justify' returning: #void
	args: #( #self #int )>! !

!GtkLabel methodsFor: 'C call-outs'!
getJustify
    <cCall: 'gtk_label_get_justify' returning: #int
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setEllipsize: mode
    <cCall: 'gtk_label_set_ellipsize' returning: #void
	args: #( #self #int )>! !

!GtkLabel methodsFor: 'C call-outs'!
getEllipsize
    <cCall: 'gtk_label_get_ellipsize' returning: #int
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setWidthChars: nChars
    <cCall: 'gtk_label_set_width_chars' returning: #void
	args: #( #self #int )>! !

!GtkLabel methodsFor: 'C call-outs'!
getWidthChars
    <cCall: 'gtk_label_get_width_chars' returning: #int
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setMaxWidthChars: nChars
    <cCall: 'gtk_label_set_max_width_chars' returning: #void
	args: #( #self #int )>! !

!GtkLabel methodsFor: 'C call-outs'!
getMaxWidthChars
    <cCall: 'gtk_label_get_max_width_chars' returning: #int
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setPattern: pattern
    <cCall: 'gtk_label_set_pattern' returning: #void
	args: #( #self #string )>! !

!GtkLabel methodsFor: 'C call-outs'!
setLineWrap: wrap
    <cCall: 'gtk_label_set_line_wrap' returning: #void
	args: #( #self #boolean )>! !

!GtkLabel methodsFor: 'C call-outs'!
getLineWrap
    <cCall: 'gtk_label_get_line_wrap' returning: #boolean
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setLineWrapMode: wrapMode
    <cCall: 'gtk_label_set_line_wrap_mode' returning: #void
	args: #( #self #int )>! !

!GtkLabel methodsFor: 'C call-outs'!
getLineWrapMode
    <cCall: 'gtk_label_get_line_wrap_mode' returning: #int
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setSelectable: setting
    <cCall: 'gtk_label_set_selectable' returning: #void
	args: #( #self #boolean )>! !

!GtkLabel methodsFor: 'C call-outs'!
getSelectable
    <cCall: 'gtk_label_get_selectable' returning: #boolean
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setAngle: angle
    <cCall: 'gtk_label_set_angle' returning: #void
	args: #( #self #double )>! !

!GtkLabel methodsFor: 'C call-outs'!
getAngle
    <cCall: 'gtk_label_get_angle' returning: #double
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
selectRegion: startOffset endOffset: endOffset
    <cCall: 'gtk_label_select_region' returning: #void
	args: #( #self #int #int )>! !

!GtkLabel methodsFor: 'C call-outs'!
getSelectionBounds: start end: end
    <cCall: 'gtk_label_get_selection_bounds' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkLabel methodsFor: 'C call-outs'!
getLayout
    <cCall: 'gtk_label_get_layout' returning: #{PangoLayout}
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
getLayoutOffsets: x y: y
    <cCall: 'gtk_label_get_layout_offsets' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkLabel methodsFor: 'C call-outs'!
setSingleLineMode: singleLineMode
    <cCall: 'gtk_label_set_single_line_mode' returning: #void
	args: #( #self #boolean )>! !

!GtkLabel methodsFor: 'C call-outs'!
getSingleLineMode
    <cCall: 'gtk_label_get_single_line_mode' returning: #boolean
	args: #( #self )>! !

!GtkLabel methodsFor: 'C call-outs'!
setTrackVisitedLinks: trackLinks
    <cCall: 'gtk_label_set_track_visited_links' returning: #void
	args: #( #self #boolean )>! !

!GtkLabel methodsFor: 'C call-outs'!
getTrackVisitedLinks
    <cCall: 'gtk_label_get_track_visited_links' returning: #boolean
	args: #( #self )>! !

!GtkAccelLabel class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_accel_label_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkAccelLabel!

!GtkAccelLabel class methodsFor: 'C call-outs'!
new: string
    <cCall: 'gtk_accel_label_new' returning: #{GtkAccelLabel}
	args: #( #string )>! !

!GtkAccelLabel methodsFor: 'C call-outs'!
getAccelWidget
    <cCall: 'gtk_accel_label_get_accel_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkAccelLabel methodsFor: 'C call-outs'!
getAccelWidth
    <cCall: 'gtk_accel_label_get_accel_width' returning: #int
	args: #( #self )>! !

!GtkAccelLabel methodsFor: 'C call-outs'!
setAccelWidget: accelWidget
    <cCall: 'gtk_accel_label_set_accel_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkAccelLabel methodsFor: 'C call-outs'!
refetch
    <cCall: 'gtk_accel_label_refetch' returning: #boolean
	args: #( #self )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
addEntry: accelPath accelKey: accelKey accelMods: accelMods
    <cCall: 'gtk_accel_map_add_entry' returning: #void
	args: #( #string #int #int )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
lookupEntry: accelPath key: key
    <cCall: 'gtk_accel_map_lookup_entry' returning: #boolean
	args: #( #string #cObject )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
changeEntry: accelPath accelKey: accelKey accelMods: accelMods replace: replace
    <cCall: 'gtk_accel_map_change_entry' returning: #boolean
	args: #( #string #int #int #boolean )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
load: fileName
    <cCall: 'gtk_accel_map_load' returning: #void
	args: #( #string )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
save: fileName
    <cCall: 'gtk_accel_map_save' returning: #void
	args: #( #string )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
foreach: data foreachFunc: foreachFunc
    <cCall: 'gtk_accel_map_foreach' returning: #void
	args: #( #cObject #int )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
loadFd: fd
    <cCall: 'gtk_accel_map_load_fd' returning: #void
	args: #( #int )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
saveFd: fd
    <cCall: 'gtk_accel_map_save_fd' returning: #void
	args: #( #int )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
lockPath: accelPath
    <cCall: 'gtk_accel_map_lock_path' returning: #void
	args: #( #string )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
unlockPath: accelPath
    <cCall: 'gtk_accel_map_unlock_path' returning: #void
	args: #( #string )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
addFilter: filterPattern
    <cCall: 'gtk_accel_map_add_filter' returning: #void
	args: #( #string )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
foreachUnfiltered: data foreachFunc: foreachFunc
    <cCall: 'gtk_accel_map_foreach_unfiltered' returning: #void
	args: #( #cObject #int )>! !

!GtkAccelMap class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_accel_map_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkAccelMap!

!GtkAccelMap class methodsFor: 'C call-outs'!
get
    <cCall: 'gtk_accel_map_get' returning: #{GtkAccelMap}
	args: #( )>! !

!GtkAccessible class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_accessible_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkAccessible!

!GtkAccessible methodsFor: 'C call-outs'!
setWidget: widget
    <cCall: 'gtk_accessible_set_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkAccessible methodsFor: 'C call-outs'!
getWidget
    <cCall: 'gtk_accessible_get_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkAccessible methodsFor: 'C call-outs'!
connectWidgetDestroyed
    <cCall: 'gtk_accessible_connect_widget_destroyed' returning: #void
	args: #( #self )>! !

!GtkAction class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_action_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkAction!

!GtkAction class methodsFor: 'C call-outs'!
new: name label: label tooltip: tooltip stockId: stockId
    <cCall: 'gtk_action_new' returning: #{GtkAction}
	args: #( #string #string #string #string )>! !

!GtkAction methodsFor: 'C call-outs'!
isSensitive
    <cCall: 'gtk_action_is_sensitive' returning: #boolean
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
getSensitive
    <cCall: 'gtk_action_get_sensitive' returning: #boolean
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
setSensitive: sensitive
    <cCall: 'gtk_action_set_sensitive' returning: #void
	args: #( #self #boolean )>! !

!GtkAction methodsFor: 'C call-outs'!
isVisible
    <cCall: 'gtk_action_is_visible' returning: #boolean
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
getVisible
    <cCall: 'gtk_action_get_visible' returning: #boolean
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
setVisible: visible
    <cCall: 'gtk_action_set_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkAction methodsFor: 'C call-outs'!
activate
    <cCall: 'gtk_action_activate' returning: #void
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
createIcon: iconSize
    <cCall: 'gtk_action_create_icon' returning: #{GtkWidget}
	args: #( #self #int )>! !

!GtkAction methodsFor: 'C call-outs'!
createMenuItem
    <cCall: 'gtk_action_create_menu_item' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
createToolItem
    <cCall: 'gtk_action_create_tool_item' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
createMenu
    <cCall: 'gtk_action_create_menu' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
getProxies
    <cCall: 'gtk_action_get_proxies' returning: #{GSList}
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
connectAccelerator
    <cCall: 'gtk_action_connect_accelerator' returning: #void
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
disconnectAccelerator
    <cCall: 'gtk_action_disconnect_accelerator' returning: #void
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
blockActivate
    <cCall: 'gtk_action_block_activate' returning: #void
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
unblockActivate
    <cCall: 'gtk_action_unblock_activate' returning: #void
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
setAccelPath: accelPath
    <cCall: 'gtk_action_set_accel_path' returning: #void
	args: #( #self #string )>! !

!GtkAction methodsFor: 'C call-outs'!
setAccelGroup: accelGroup
    <cCall: 'gtk_action_set_accel_group' returning: #void
	args: #( #self #cObject )>! !

!GtkAction methodsFor: 'C call-outs'!
setLabel: label
    <cCall: 'gtk_action_set_label' returning: #void
	args: #( #self #string )>! !

!GtkAction methodsFor: 'C call-outs'!
setShortLabel: shortLabel
    <cCall: 'gtk_action_set_short_label' returning: #void
	args: #( #self #string )>! !

!GtkAction methodsFor: 'C call-outs'!
setTooltip: tooltip
    <cCall: 'gtk_action_set_tooltip' returning: #void
	args: #( #self #string )>! !

!GtkAction methodsFor: 'C call-outs'!
setStockId: stockId
    <cCall: 'gtk_action_set_stock_id' returning: #void
	args: #( #self #string )>! !

!GtkAction methodsFor: 'C call-outs'!
setGicon: icon
    <cCall: 'gtk_action_set_gicon' returning: #void
	args: #( #self #cObject )>! !

!GtkAction methodsFor: 'C call-outs'!
getGicon
    <cCall: 'gtk_action_get_gicon' returning: #{GIcon}
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
setIconName: iconName
    <cCall: 'gtk_action_set_icon_name' returning: #void
	args: #( #self #string )>! !

!GtkAction methodsFor: 'C call-outs'!
setVisibleHorizontal: visibleHorizontal
    <cCall: 'gtk_action_set_visible_horizontal' returning: #void
	args: #( #self #boolean )>! !

!GtkAction methodsFor: 'C call-outs'!
getVisibleHorizontal
    <cCall: 'gtk_action_get_visible_horizontal' returning: #boolean
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
setVisibleVertical: visibleVertical
    <cCall: 'gtk_action_set_visible_vertical' returning: #void
	args: #( #self #boolean )>! !

!GtkAction methodsFor: 'C call-outs'!
getVisibleVertical
    <cCall: 'gtk_action_get_visible_vertical' returning: #boolean
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
setIsImportant: isImportant
    <cCall: 'gtk_action_set_is_important' returning: #void
	args: #( #self #boolean )>! !

!GtkAction methodsFor: 'C call-outs'!
getIsImportant
    <cCall: 'gtk_action_get_is_important' returning: #boolean
	args: #( #self )>! !

!GtkAction methodsFor: 'C call-outs'!
setAlwaysShowImage: alwaysShow
    <cCall: 'gtk_action_set_always_show_image' returning: #void
	args: #( #self #boolean )>! !

!GtkAction methodsFor: 'C call-outs'!
getAlwaysShowImage
    <cCall: 'gtk_action_get_always_show_image' returning: #boolean
	args: #( #self )>! !

!GtkActionGroup class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_action_group_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkActionGroup!

!GtkActionGroup class methodsFor: 'C call-outs'!
new: name
    <cCall: 'gtk_action_group_new' returning: #{GtkActionGroup}
	args: #( #string )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
getSensitive
    <cCall: 'gtk_action_group_get_sensitive' returning: #boolean
	args: #( #self )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
setSensitive: sensitive
    <cCall: 'gtk_action_group_set_sensitive' returning: #void
	args: #( #self #boolean )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
getVisible
    <cCall: 'gtk_action_group_get_visible' returning: #boolean
	args: #( #self )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
setVisible: visible
    <cCall: 'gtk_action_group_set_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
getAction: actionName
    <cCall: 'gtk_action_group_get_action' returning: #{GtkAction}
	args: #( #self #string )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
listActions
    <cCall: 'gtk_action_group_list_actions' returning: #{GList}
	args: #( #self )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
addAction: action
    <cCall: 'gtk_action_group_add_action' returning: #void
	args: #( #self #cObject )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
addActionWithAccel: action accelerator: accelerator
    <cCall: 'gtk_action_group_add_action_with_accel' returning: #void
	args: #( #self #cObject #string )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
removeAction: action
    <cCall: 'gtk_action_group_remove_action' returning: #void
	args: #( #self #cObject )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
addActions: entries nEntries: nEntries userData: userData
    <cCall: 'gtk_action_group_add_actions' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
addToggleActions: entries nEntries: nEntries userData: userData
    <cCall: 'gtk_action_group_add_toggle_actions' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
addActionsFull: entries nEntries: nEntries userData: userData destroy: destroy
    <cCall: 'gtk_action_group_add_actions_full' returning: #void
	args: #( #self #cObject #int #cObject #int )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
addToggleActionsFull: entries nEntries: nEntries userData: userData destroy: destroy
    <cCall: 'gtk_action_group_add_toggle_actions_full' returning: #void
	args: #( #self #cObject #int #cObject #int )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
setTranslateFunc: func data: data notify: notify
    <cCall: 'gtk_action_group_set_translate_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkActionGroup methodsFor: 'C call-outs'!
setTranslationDomain: domain
    <cCall: 'gtk_action_group_set_translation_domain' returning: #void
	args: #( #self #string )>! !

!GtkActivatable class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_activatable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkActivatable!

!GtkActivatable methodsFor: 'C call-outs'!
syncActionProperties: action
    <cCall: 'gtk_activatable_sync_action_properties' returning: #void
	args: #( #self #cObject )>! !

!GtkActivatable methodsFor: 'C call-outs'!
setRelatedAction: action
    <cCall: 'gtk_activatable_set_related_action' returning: #void
	args: #( #self #cObject )>! !

!GtkActivatable methodsFor: 'C call-outs'!
getRelatedAction
    <cCall: 'gtk_activatable_get_related_action' returning: #{GtkAction}
	args: #( #self )>! !

!GtkActivatable methodsFor: 'C call-outs'!
setUseActionAppearance: useAppearance
    <cCall: 'gtk_activatable_set_use_action_appearance' returning: #void
	args: #( #self #boolean )>! !

!GtkActivatable methodsFor: 'C call-outs'!
getUseActionAppearance
    <cCall: 'gtk_activatable_get_use_action_appearance' returning: #boolean
	args: #( #self )>! !

!GtkActivatable methodsFor: 'C call-outs'!
doSetRelatedAction: action
    <cCall: 'gtk_activatable_do_set_related_action' returning: #void
	args: #( #self #cObject )>! !

!GtkAlignment class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_alignment_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkAlignment!

!GtkAlignment class methodsFor: 'C call-outs'!
new: xalign yalign: yalign xscale: xscale yscale: yscale
    <cCall: 'gtk_alignment_new' returning: #{GtkAlignment}
	args: #( #float #float #float #float )>! !

!GtkAlignment methodsFor: 'C call-outs'!
set: xalign yalign: yalign xscale: xscale yscale: yscale
    <cCall: 'gtk_alignment_set' returning: #void
	args: #( #self #float #float #float #float )>! !

!GtkAlignment methodsFor: 'C call-outs'!
setPadding: paddingTop paddingBottom: paddingBottom paddingLeft: paddingLeft paddingRight: paddingRight
    <cCall: 'gtk_alignment_set_padding' returning: #void
	args: #( #self #int #int #int #int )>! !

!GtkAlignment methodsFor: 'C call-outs'!
getPadding: paddingTop paddingBottom: paddingBottom paddingLeft: paddingLeft paddingRight: paddingRight
    <cCall: 'gtk_alignment_get_padding' returning: #void
	args: #( #self #cObject #cObject #cObject #cObject )>! !

!GtkArrow class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_arrow_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkArrow!

!GtkArrow class methodsFor: 'C call-outs'!
new: arrowType shadowType: shadowType
    <cCall: 'gtk_arrow_new' returning: #{GtkArrow}
	args: #( #int #int )>! !

!GtkArrow methodsFor: 'C call-outs'!
set: arrowType shadowType: shadowType
    <cCall: 'gtk_arrow_set' returning: #void
	args: #( #self #int #int )>! !

!GtkFrame class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_frame_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkFrame!

!GtkFrame class methodsFor: 'C call-outs'!
new: label
    <cCall: 'gtk_frame_new' returning: #{GtkFrame}
	args: #( #string )>! !

!GtkFrame methodsFor: 'C call-outs'!
setLabel: label
    <cCall: 'gtk_frame_set_label' returning: #void
	args: #( #self #string )>! !

!GtkFrame methodsFor: 'C call-outs'!
setLabelWidget: labelWidget
    <cCall: 'gtk_frame_set_label_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkFrame methodsFor: 'C call-outs'!
getLabelWidget
    <cCall: 'gtk_frame_get_label_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkFrame methodsFor: 'C call-outs'!
setLabelAlign: xalign yalign: yalign
    <cCall: 'gtk_frame_set_label_align' returning: #void
	args: #( #self #float #float )>! !

!GtkFrame methodsFor: 'C call-outs'!
getLabelAlign: xalign yalign: yalign
    <cCall: 'gtk_frame_get_label_align' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkFrame methodsFor: 'C call-outs'!
setShadowType: type
    <cCall: 'gtk_frame_set_shadow_type' returning: #void
	args: #( #self #int )>! !

!GtkFrame methodsFor: 'C call-outs'!
getShadowType
    <cCall: 'gtk_frame_get_shadow_type' returning: #int
	args: #( #self )>! !

!GtkAspectFrame class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_aspect_frame_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkAspectFrame!

!GtkAspectFrame class methodsFor: 'C call-outs'!
new: label xalign: xalign yalign: yalign ratio: ratio obeyChild: obeyChild
    <cCall: 'gtk_aspect_frame_new' returning: #{GtkAspectFrame}
	args: #( #string #float #float #float #boolean )>! !

!GtkAspectFrame methodsFor: 'C call-outs'!
set: xalign yalign: yalign ratio: ratio obeyChild: obeyChild
    <cCall: 'gtk_aspect_frame_set' returning: #void
	args: #( #self #float #float #float #boolean )>! !

!GtkAssistant class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_assistant_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkAssistant!

!GtkAssistant class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_assistant_new' returning: #{GtkAssistant}
	args: #( )>! !

!GtkAssistant methodsFor: 'C call-outs'!
getCurrentPage
    <cCall: 'gtk_assistant_get_current_page' returning: #int
	args: #( #self )>! !

!GtkAssistant methodsFor: 'C call-outs'!
setCurrentPage: pageNum
    <cCall: 'gtk_assistant_set_current_page' returning: #void
	args: #( #self #int )>! !

!GtkAssistant methodsFor: 'C call-outs'!
getNPages
    <cCall: 'gtk_assistant_get_n_pages' returning: #int
	args: #( #self )>! !

!GtkAssistant methodsFor: 'C call-outs'!
getNthPage: pageNum
    <cCall: 'gtk_assistant_get_nth_page' returning: #{GtkWidget}
	args: #( #self #int )>! !

!GtkAssistant methodsFor: 'C call-outs'!
prependPage: page
    <cCall: 'gtk_assistant_prepend_page' returning: #int
	args: #( #self #cObject )>! !

!GtkAssistant methodsFor: 'C call-outs'!
appendPage: page
    <cCall: 'gtk_assistant_append_page' returning: #int
	args: #( #self #cObject )>! !

!GtkAssistant methodsFor: 'C call-outs'!
insertPage: page position: position
    <cCall: 'gtk_assistant_insert_page' returning: #int
	args: #( #self #cObject #int )>! !

!GtkAssistant methodsFor: 'C call-outs'!
setForwardPageFunc: pageFunc data: data destroy: destroy
    <cCall: 'gtk_assistant_set_forward_page_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkAssistant methodsFor: 'C call-outs'!
setPageType: page type: type
    <cCall: 'gtk_assistant_set_page_type' returning: #void
	args: #( #self #cObject #int )>! !

!GtkAssistant methodsFor: 'C call-outs'!
getPageType: page
    <cCall: 'gtk_assistant_get_page_type' returning: #int
	args: #( #self #cObject )>! !

!GtkAssistant methodsFor: 'C call-outs'!
setPageTitle: page title: title
    <cCall: 'gtk_assistant_set_page_title' returning: #void
	args: #( #self #cObject #string )>! !

!GtkAssistant methodsFor: 'C call-outs'!
setPageHeaderImage: page pixbuf: pixbuf
    <cCall: 'gtk_assistant_set_page_header_image' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkAssistant methodsFor: 'C call-outs'!
getPageHeaderImage: page
    <cCall: 'gtk_assistant_get_page_header_image' returning: #{GdkPixbuf}
	args: #( #self #cObject )>! !

!GtkAssistant methodsFor: 'C call-outs'!
setPageSideImage: page pixbuf: pixbuf
    <cCall: 'gtk_assistant_set_page_side_image' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkAssistant methodsFor: 'C call-outs'!
getPageSideImage: page
    <cCall: 'gtk_assistant_get_page_side_image' returning: #{GdkPixbuf}
	args: #( #self #cObject )>! !

!GtkAssistant methodsFor: 'C call-outs'!
setPageComplete: page complete: complete
    <cCall: 'gtk_assistant_set_page_complete' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkAssistant methodsFor: 'C call-outs'!
getPageComplete: page
    <cCall: 'gtk_assistant_get_page_complete' returning: #boolean
	args: #( #self #cObject )>! !

!GtkAssistant methodsFor: 'C call-outs'!
addActionWidget: child
    <cCall: 'gtk_assistant_add_action_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkAssistant methodsFor: 'C call-outs'!
removeActionWidget: child
    <cCall: 'gtk_assistant_remove_action_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkAssistant methodsFor: 'C call-outs'!
updateButtonsState
    <cCall: 'gtk_assistant_update_buttons_state' returning: #void
	args: #( #self )>! !

!GtkAssistant methodsFor: 'C call-outs'!
commit
    <cCall: 'gtk_assistant_commit' returning: #void
	args: #( #self )>! !

!GtkBox class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_box_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkBox!

!GtkBox methodsFor: 'C call-outs'!
packStart: child expand: expand fill: fill padding: padding
    <cCall: 'gtk_box_pack_start' returning: #void
	args: #( #self #cObject #boolean #boolean #int )>! !

!GtkBox methodsFor: 'C call-outs'!
packEnd: child expand: expand fill: fill padding: padding
    <cCall: 'gtk_box_pack_end' returning: #void
	args: #( #self #cObject #boolean #boolean #int )>! !

!GtkBox methodsFor: 'C call-outs'!
setHomogeneous: homogeneous
    <cCall: 'gtk_box_set_homogeneous' returning: #void
	args: #( #self #boolean )>! !

!GtkBox methodsFor: 'C call-outs'!
getHomogeneous
    <cCall: 'gtk_box_get_homogeneous' returning: #boolean
	args: #( #self )>! !

!GtkBox methodsFor: 'C call-outs'!
setSpacing: spacing
    <cCall: 'gtk_box_set_spacing' returning: #void
	args: #( #self #int )>! !

!GtkBox methodsFor: 'C call-outs'!
getSpacing
    <cCall: 'gtk_box_get_spacing' returning: #int
	args: #( #self )>! !

!GtkBox methodsFor: 'C call-outs'!
reorderChild: child position: position
    <cCall: 'gtk_box_reorder_child' returning: #void
	args: #( #self #cObject #int )>! !

!GtkBox methodsFor: 'C call-outs'!
queryChildPacking: child expand: expand fill: fill padding: padding packType: packType
    <cCall: 'gtk_box_query_child_packing' returning: #void
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GtkBox methodsFor: 'C call-outs'!
setChildPacking: child expand: expand fill: fill padding: padding packType: packType
    <cCall: 'gtk_box_set_child_packing' returning: #void
	args: #( #self #cObject #boolean #boolean #int #int )>! !

!GtkButtonBox class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_button_box_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkButtonBox!

!GtkButtonBox methodsFor: 'C call-outs'!
getLayout
    <cCall: 'gtk_button_box_get_layout' returning: #int
	args: #( #self )>! !

!GtkButtonBox methodsFor: 'C call-outs'!
setLayout: layoutStyle
    <cCall: 'gtk_button_box_set_layout' returning: #void
	args: #( #self #int )>! !

!GtkButtonBox methodsFor: 'C call-outs'!
getChildSecondary: child
    <cCall: 'gtk_button_box_get_child_secondary' returning: #boolean
	args: #( #self #cObject )>! !

!GtkButtonBox methodsFor: 'C call-outs'!
setChildSecondary: child isSecondary: isSecondary
    <cCall: 'gtk_button_box_set_child_secondary' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkBindingSet class methodsFor: 'C call-outs'!
new: setName
    <cCall: 'gtk_binding_set_new' returning: #{GtkBindingSet}
	args: #( #string )>! !

!GtkBindingSet class methodsFor: 'C call-outs'!
byClass: objectClass
    <cCall: 'gtk_binding_set_by_class' returning: #{GtkBindingSet}
	args: #( #cObject )>! !

!GtkBindingSet class methodsFor: 'C call-outs'!
find: setName
    <cCall: 'gtk_binding_set_find' returning: #{GtkBindingSet}
	args: #( #string )>! !

!Gtk class methodsFor: 'C call-outs'!
bindingsActivate: object keyval: keyval modifiers: modifiers
    <cCall: 'gtk_bindings_activate' returning: #boolean
	args: #( #cObject #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
bindingsActivateEvent: object event: event
    <cCall: 'gtk_bindings_activate_event' returning: #boolean
	args: #( #cObject #cObject )>! !

!GtkBindingSet methodsFor: 'C call-outs'!
activate: keyval modifiers: modifiers object: object
    <cCall: 'gtk_binding_set_activate' returning: #boolean
	args: #( #self #int #int #cObject )>! !

!GtkBindingEntry class methodsFor: 'C call-outs'!
skip: bindingSet keyval: keyval modifiers: modifiers
    <cCall: 'gtk_binding_entry_skip' returning: #void
	args: #( #cObject #int #int )>! !

!GtkBindingEntry class methodsFor: 'C call-outs'!
addSignal: bindingSet keyval: keyval modifiers: modifiers signalName: signalName nArgs: nArgs varargs: varargs
    <cCall: 'gtk_binding_entry_add_signal' returning: #void
	args: #( #cObject #int #int #string #int #variadic )>! !

!GtkBindingEntry class methodsFor: 'C call-outs'!
addSignall: bindingSet keyval: keyval modifiers: modifiers signalName: signalName bindingArgs: bindingArgs
    <cCall: 'gtk_binding_entry_add_signall' returning: #void
	args: #( #cObject #int #int #string #cObject )>! !

!GtkBindingEntry class methodsFor: 'C call-outs'!
remove: bindingSet keyval: keyval modifiers: modifiers
    <cCall: 'gtk_binding_entry_remove' returning: #void
	args: #( #cObject #int #int )>! !

!GtkBindingSet methodsFor: 'C call-outs'!
addPath: pathType pathPattern: pathPattern priority: priority
    <cCall: 'gtk_binding_set_add_path' returning: #void
	args: #( #self #int #string #int )>! !

!GtkBuilder class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_builder_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkBuilder!

!GtkBuilder class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_builder_new' returning: #{GtkBuilder}
	args: #( )>! !

!GtkBuilder methodsFor: 'C call-outs'!
addFromFile: filename error: error
    <cCall: 'gtk_builder_add_from_file' returning: #int
	args: #( #self #string #cObject )>! !

!GtkBuilder methodsFor: 'C call-outs'!
addFromString: buffer length: length error: error
    <cCall: 'gtk_builder_add_from_string' returning: #int
	args: #( #self #string #int #cObject )>! !

!GtkBuilder methodsFor: 'C call-outs'!
addObjectsFromFile: filename objectIds: objectIds error: error
    <cCall: 'gtk_builder_add_objects_from_file' returning: #int
	args: #( #self #string #cObject #cObject )>! !

!GtkBuilder methodsFor: 'C call-outs'!
addObjectsFromString: buffer length: length objectIds: objectIds error: error
    <cCall: 'gtk_builder_add_objects_from_string' returning: #int
	args: #( #self #string #int #cObject #cObject )>! !

!GtkBuilder methodsFor: 'C call-outs'!
getObject: name
    <cCall: 'gtk_builder_get_object' returning: #{GObject}
	args: #( #self #string )>! !

!GtkBuilder methodsFor: 'C call-outs'!
getObjects
    <cCall: 'gtk_builder_get_objects' returning: #{GSList}
	args: #( #self )>! !

!GtkBuilder methodsFor: 'C call-outs'!
connectSignals: userData
    <cCall: 'gtk_builder_connect_signals' returning: #void
	args: #( #self #cObject )>! !

!GtkBuilder methodsFor: 'C call-outs'!
connectSignalsFull: func userData: userData
    <cCall: 'gtk_builder_connect_signals_full' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkBuilder methodsFor: 'C call-outs'!
setTranslationDomain: domain
    <cCall: 'gtk_builder_set_translation_domain' returning: #void
	args: #( #self #string )>! !

!GtkBuilder methodsFor: 'C call-outs'!
getTypeFromName: typeName
    <cCall: 'gtk_builder_get_type_from_name' returning: #long
	args: #( #self #string )>! !

!GtkBuildable class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_buildable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkBuildable!

!GtkBuildable methodsFor: 'C call-outs'!
setName: name
    <cCall: 'gtk_buildable_set_name' returning: #void
	args: #( #self #string )>! !

!GtkBuildable methodsFor: 'C call-outs'!
addChild: builder child: child type: type
    <cCall: 'gtk_buildable_add_child' returning: #void
	args: #( #self #cObject #cObject #string )>! !

!GtkBuildable methodsFor: 'C call-outs'!
constructChild: builder name: name
    <cCall: 'gtk_buildable_construct_child' returning: #{GObject}
	args: #( #self #cObject #string )>! !

!GtkBuildable methodsFor: 'C call-outs'!
customTagStart: builder child: child tagname: tagname parser: parser data: data
    <cCall: 'gtk_buildable_custom_tag_start' returning: #boolean
	args: #( #self #cObject #cObject #string #cObject #cObject )>! !

!GtkBuildable methodsFor: 'C call-outs'!
customTagEnd: builder child: child tagname: tagname data: data
    <cCall: 'gtk_buildable_custom_tag_end' returning: #void
	args: #( #self #cObject #cObject #string #cObject )>! !

!GtkBuildable methodsFor: 'C call-outs'!
customFinished: builder child: child tagname: tagname data: data
    <cCall: 'gtk_buildable_custom_finished' returning: #void
	args: #( #self #cObject #cObject #string #cObject )>! !

!GtkBuildable methodsFor: 'C call-outs'!
parserFinished: builder
    <cCall: 'gtk_buildable_parser_finished' returning: #void
	args: #( #self #cObject )>! !

!GtkBuildable methodsFor: 'C call-outs'!
getInternalChild: builder childname: childname
    <cCall: 'gtk_buildable_get_internal_child' returning: #{GObject}
	args: #( #self #cObject #string )>! !

!GtkImage class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_image_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkImage!

!GtkImage class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_image_new' returning: #{GtkImage}
	args: #( )>! !

!GtkImage class methodsFor: 'C call-outs'!
newFromPixmap: pixmap mask: mask
    <cCall: 'gtk_image_new_from_pixmap' returning: #{GtkImage}
	args: #( #cObject #cObject )>! !

!GtkImage class methodsFor: 'C call-outs'!
newFromImage: image mask: mask
    <cCall: 'gtk_image_new_from_image' returning: #{GtkImage}
	args: #( #cObject #cObject )>! !

!GtkImage class methodsFor: 'C call-outs'!
newFromFile: filename
    <cCall: 'gtk_image_new_from_file' returning: #{GtkImage}
	args: #( #string )>! !

!GtkImage class methodsFor: 'C call-outs'!
newFromPixbuf: pixbuf
    <cCall: 'gtk_image_new_from_pixbuf' returning: #{GtkImage}
	args: #( #cObject )>! !

!GtkImage class methodsFor: 'C call-outs'!
newFromStock: stockId size: size
    <cCall: 'gtk_image_new_from_stock' returning: #{GtkImage}
	args: #( #string #int )>! !

!GtkImage class methodsFor: 'C call-outs'!
newFromIconSet: iconSet size: size
    <cCall: 'gtk_image_new_from_icon_set' returning: #{GtkImage}
	args: #( #cObject #int )>! !

!GtkImage class methodsFor: 'C call-outs'!
newFromAnimation: animation
    <cCall: 'gtk_image_new_from_animation' returning: #{GtkImage}
	args: #( #cObject )>! !

!GtkImage class methodsFor: 'C call-outs'!
newFromIconName: iconName size: size
    <cCall: 'gtk_image_new_from_icon_name' returning: #{GtkImage}
	args: #( #string #int )>! !

!GtkImage class methodsFor: 'C call-outs'!
newFromGicon: icon size: size
    <cCall: 'gtk_image_new_from_gicon' returning: #{GtkImage}
	args: #( #cObject #int )>! !

!GtkImage methodsFor: 'C call-outs'!
clear
    <cCall: 'gtk_image_clear' returning: #void
	args: #( #self )>! !

!GtkImage methodsFor: 'C call-outs'!
setFromPixmap: pixmap mask: mask
    <cCall: 'gtk_image_set_from_pixmap' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkImage methodsFor: 'C call-outs'!
setFromImage: gdkImage mask: mask
    <cCall: 'gtk_image_set_from_image' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkImage methodsFor: 'C call-outs'!
setFromFile: filename
    <cCall: 'gtk_image_set_from_file' returning: #void
	args: #( #self #string )>! !

!GtkImage methodsFor: 'C call-outs'!
setFromPixbuf: pixbuf
    <cCall: 'gtk_image_set_from_pixbuf' returning: #void
	args: #( #self #cObject )>! !

!GtkImage methodsFor: 'C call-outs'!
setFromStock: stockId size: size
    <cCall: 'gtk_image_set_from_stock' returning: #void
	args: #( #self #string #int )>! !

!GtkImage methodsFor: 'C call-outs'!
setFromIconSet: iconSet size: size
    <cCall: 'gtk_image_set_from_icon_set' returning: #void
	args: #( #self #cObject #int )>! !

!GtkImage methodsFor: 'C call-outs'!
setFromAnimation: animation
    <cCall: 'gtk_image_set_from_animation' returning: #void
	args: #( #self #cObject )>! !

!GtkImage methodsFor: 'C call-outs'!
setFromIconName: iconName size: size
    <cCall: 'gtk_image_set_from_icon_name' returning: #void
	args: #( #self #string #int )>! !

!GtkImage methodsFor: 'C call-outs'!
setFromGicon: icon size: size
    <cCall: 'gtk_image_set_from_gicon' returning: #void
	args: #( #self #cObject #int )>! !

!GtkImage methodsFor: 'C call-outs'!
setPixelSize: pixelSize
    <cCall: 'gtk_image_set_pixel_size' returning: #void
	args: #( #self #int )>! !

!GtkImage methodsFor: 'C call-outs'!
getStorageType
    <cCall: 'gtk_image_get_storage_type' returning: #int
	args: #( #self )>! !

!GtkImage methodsFor: 'C call-outs'!
getPixmap: pixmap mask: mask
    <cCall: 'gtk_image_get_pixmap' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkImage methodsFor: 'C call-outs'!
getImage: gdkImage mask: mask
    <cCall: 'gtk_image_get_image' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkImage methodsFor: 'C call-outs'!
getPixbuf
    <cCall: 'gtk_image_get_pixbuf' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GtkImage methodsFor: 'C call-outs'!
getStock: stockId size: size
    <cCall: 'gtk_image_get_stock' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkImage methodsFor: 'C call-outs'!
getIconSet: iconSet size: size
    <cCall: 'gtk_image_get_icon_set' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkImage methodsFor: 'C call-outs'!
getAnimation
    <cCall: 'gtk_image_get_animation' returning: #{GdkPixbufAnimation}
	args: #( #self )>! !

!GtkImage methodsFor: 'C call-outs'!
getIconName: iconName size: size
    <cCall: 'gtk_image_get_icon_name' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkImage methodsFor: 'C call-outs'!
getGicon: gicon size: size
    <cCall: 'gtk_image_get_gicon' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkImage methodsFor: 'C call-outs'!
getPixelSize
    <cCall: 'gtk_image_get_pixel_size' returning: #int
	args: #( #self )>! !

!GtkButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkButton!

!GtkButton class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_button_new' returning: #{GtkButton}
	args: #( )>! !

!GtkButton class methodsFor: 'C call-outs'!
newWithLabel: label
    <cCall: 'gtk_button_new_with_label' returning: #{GtkButton}
	args: #( #string )>! !

!GtkButton class methodsFor: 'C call-outs'!
newFromStock: stockId
    <cCall: 'gtk_button_new_from_stock' returning: #{GtkButton}
	args: #( #string )>! !

!GtkButton class methodsFor: 'C call-outs'!
newWithMnemonic: label
    <cCall: 'gtk_button_new_with_mnemonic' returning: #{GtkButton}
	args: #( #string )>! !

!GtkButton methodsFor: 'C call-outs'!
clicked
    <cCall: 'gtk_button_clicked' returning: #void
	args: #( #self )>! !

!GtkButton methodsFor: 'C call-outs'!
setRelief: newstyle
    <cCall: 'gtk_button_set_relief' returning: #void
	args: #( #self #int )>! !

!GtkButton methodsFor: 'C call-outs'!
getRelief
    <cCall: 'gtk_button_get_relief' returning: #int
	args: #( #self )>! !

!GtkButton methodsFor: 'C call-outs'!
setLabel: label
    <cCall: 'gtk_button_set_label' returning: #void
	args: #( #self #string )>! !

!GtkButton methodsFor: 'C call-outs'!
setUseUnderline: useUnderline
    <cCall: 'gtk_button_set_use_underline' returning: #void
	args: #( #self #boolean )>! !

!GtkButton methodsFor: 'C call-outs'!
getUseUnderline
    <cCall: 'gtk_button_get_use_underline' returning: #boolean
	args: #( #self )>! !

!GtkButton methodsFor: 'C call-outs'!
setUseStock: useStock
    <cCall: 'gtk_button_set_use_stock' returning: #void
	args: #( #self #boolean )>! !

!GtkButton methodsFor: 'C call-outs'!
getUseStock
    <cCall: 'gtk_button_get_use_stock' returning: #boolean
	args: #( #self )>! !

!GtkButton methodsFor: 'C call-outs'!
setFocusOnClick: focusOnClick
    <cCall: 'gtk_button_set_focus_on_click' returning: #void
	args: #( #self #boolean )>! !

!GtkButton methodsFor: 'C call-outs'!
getFocusOnClick
    <cCall: 'gtk_button_get_focus_on_click' returning: #boolean
	args: #( #self )>! !

!GtkButton methodsFor: 'C call-outs'!
setAlignment: xalign yalign: yalign
    <cCall: 'gtk_button_set_alignment' returning: #void
	args: #( #self #float #float )>! !

!GtkButton methodsFor: 'C call-outs'!
getAlignment: xalign yalign: yalign
    <cCall: 'gtk_button_get_alignment' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkButton methodsFor: 'C call-outs'!
setImage: image
    <cCall: 'gtk_button_set_image' returning: #void
	args: #( #self #cObject )>! !

!GtkButton methodsFor: 'C call-outs'!
getImage
    <cCall: 'gtk_button_get_image' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkButton methodsFor: 'C call-outs'!
setImagePosition: position
    <cCall: 'gtk_button_set_image_position' returning: #void
	args: #( #self #int )>! !

!GtkButton methodsFor: 'C call-outs'!
getImagePosition
    <cCall: 'gtk_button_get_image_position' returning: #int
	args: #( #self )>! !

!GtkButton methodsFor: 'C call-outs'!
getEventWindow
    <cCall: 'gtk_button_get_event_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkCalendar class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_calendar_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCalendar!

!GtkCalendar class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_calendar_new' returning: #{GtkCalendar}
	args: #( )>! !

!GtkCalendar methodsFor: 'C call-outs'!
selectMonth: month year: year
    <cCall: 'gtk_calendar_select_month' returning: #boolean
	args: #( #self #int #int )>! !

!GtkCalendar methodsFor: 'C call-outs'!
selectDay: day
    <cCall: 'gtk_calendar_select_day' returning: #void
	args: #( #self #int )>! !

!GtkCalendar methodsFor: 'C call-outs'!
markDay: day
    <cCall: 'gtk_calendar_mark_day' returning: #boolean
	args: #( #self #int )>! !

!GtkCalendar methodsFor: 'C call-outs'!
unmarkDay: day
    <cCall: 'gtk_calendar_unmark_day' returning: #boolean
	args: #( #self #int )>! !

!GtkCalendar methodsFor: 'C call-outs'!
clearMarks
    <cCall: 'gtk_calendar_clear_marks' returning: #void
	args: #( #self )>! !

!GtkCalendar methodsFor: 'C call-outs'!
setDisplayOptions: flags
    <cCall: 'gtk_calendar_set_display_options' returning: #void
	args: #( #self #int )>! !

!GtkCalendar methodsFor: 'C call-outs'!
getDate: year month: month day: day
    <cCall: 'gtk_calendar_get_date' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkCalendar methodsFor: 'C call-outs'!
setDetailFunc: func data: data destroy: destroy
    <cCall: 'gtk_calendar_set_detail_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkCalendar methodsFor: 'C call-outs'!
setDetailWidthChars: chars
    <cCall: 'gtk_calendar_set_detail_width_chars' returning: #void
	args: #( #self #int )>! !

!GtkCalendar methodsFor: 'C call-outs'!
setDetailHeightRows: rows
    <cCall: 'gtk_calendar_set_detail_height_rows' returning: #void
	args: #( #self #int )>! !

!GtkCalendar methodsFor: 'C call-outs'!
getDetailWidthChars
    <cCall: 'gtk_calendar_get_detail_width_chars' returning: #int
	args: #( #self )>! !

!GtkCalendar methodsFor: 'C call-outs'!
getDetailHeightRows
    <cCall: 'gtk_calendar_get_detail_height_rows' returning: #int
	args: #( #self )>! !

!GtkCellEditable class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_editable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellEditable!

!GtkCellEditable methodsFor: 'C call-outs'!
startEditing: event
    <cCall: 'gtk_cell_editable_start_editing' returning: #void
	args: #( #self #cObject )>! !

!GtkCellEditable methodsFor: 'C call-outs'!
editingDone
    <cCall: 'gtk_cell_editable_editing_done' returning: #void
	args: #( #self )>! !

!GtkCellEditable methodsFor: 'C call-outs'!
removeWidget
    <cCall: 'gtk_cell_editable_remove_widget' returning: #void
	args: #( #self )>! !

!GtkCellRenderer class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_renderer_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellRenderer!

!GtkCellRenderer methodsFor: 'C call-outs'!
getSize: widget cellArea: cellArea xOffset: xOffset yOffset: yOffset width: width height: height
    <cCall: 'gtk_cell_renderer_get_size' returning: #void
	args: #( #self #cObject #cObject #cObject #cObject #cObject #cObject )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
render: window widget: widget backgroundArea: backgroundArea cellArea: cellArea exposeArea: exposeArea flags: flags
    <cCall: 'gtk_cell_renderer_render' returning: #void
	args: #( #self #cObject #cObject #cObject #cObject #cObject #int )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
activate: event widget: widget path: path backgroundArea: backgroundArea cellArea: cellArea flags: flags
    <cCall: 'gtk_cell_renderer_activate' returning: #boolean
	args: #( #self #cObject #cObject #string #cObject #cObject #int )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
startEditing: event widget: widget path: path backgroundArea: backgroundArea cellArea: cellArea flags: flags
    <cCall: 'gtk_cell_renderer_start_editing' returning: #{GtkCellEditable}
	args: #( #self #cObject #cObject #string #cObject #cObject #int )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
setFixedSize: width height: height
    <cCall: 'gtk_cell_renderer_set_fixed_size' returning: #void
	args: #( #self #int #int )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
getFixedSize: width height: height
    <cCall: 'gtk_cell_renderer_get_fixed_size' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
setAlignment: xalign yalign: yalign
    <cCall: 'gtk_cell_renderer_set_alignment' returning: #void
	args: #( #self #float #float )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
getAlignment: xalign yalign: yalign
    <cCall: 'gtk_cell_renderer_get_alignment' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
setPadding: xpad ypad: ypad
    <cCall: 'gtk_cell_renderer_set_padding' returning: #void
	args: #( #self #int #int )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
getPadding: xpad ypad: ypad
    <cCall: 'gtk_cell_renderer_get_padding' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
setVisible: visible
    <cCall: 'gtk_cell_renderer_set_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
getVisible
    <cCall: 'gtk_cell_renderer_get_visible' returning: #boolean
	args: #( #self )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
setSensitive: sensitive
    <cCall: 'gtk_cell_renderer_set_sensitive' returning: #void
	args: #( #self #boolean )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
getSensitive
    <cCall: 'gtk_cell_renderer_get_sensitive' returning: #boolean
	args: #( #self )>! !

!GtkCellRenderer methodsFor: 'C call-outs'!
stopEditing: canceled
    <cCall: 'gtk_cell_renderer_stop_editing' returning: #void
	args: #( #self #boolean )>! !

!GtkTreePath class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_tree_path_new' returning: #{GtkTreePath}
	args: #( )>! !

!GtkTreePath class methodsFor: 'C call-outs'!
newFromString: path
    <cCall: 'gtk_tree_path_new_from_string' returning: #{GtkTreePath}
	args: #( #string )>! !

!GtkTreePath class methodsFor: 'C call-outs'!
newFromIndices: firstIndex
    <cCall: 'gtk_tree_path_new_from_indices' returning: #{GtkTreePath}
	args: #( #variadic )>! !

!GtkTreePath methodsFor: 'C call-outs'!
toString
    <cCall: 'gtk_tree_path_to_string' returning: #string
	args: #( #self )>! !

!GtkTreePath class methodsFor: 'C call-outs'!
newFirst
    <cCall: 'gtk_tree_path_new_first' returning: #{GtkTreePath}
	args: #( )>! !

!GtkTreePath methodsFor: 'C call-outs'!
appendIndex: index
    <cCall: 'gtk_tree_path_append_index' returning: #void
	args: #( #self #int )>! !

!GtkTreePath methodsFor: 'C call-outs'!
prependIndex: index
    <cCall: 'gtk_tree_path_prepend_index' returning: #void
	args: #( #self #int )>! !

!GtkTreePath methodsFor: 'C call-outs'!
getDepth
    <cCall: 'gtk_tree_path_get_depth' returning: #int
	args: #( #self )>! !

!GtkTreePath methodsFor: 'C call-outs'!
getIndices
    <cCall: 'gtk_tree_path_get_indices' returning: CInt type
	args: #( #self )>! !

!GtkTreePath methodsFor: 'C call-outs'!
getIndicesWithDepth: depth
    <cCall: 'gtk_tree_path_get_indices_with_depth' returning: CInt type
	args: #( #self #cObject )>! !

!GtkTreePath methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_tree_path_free' returning: #void
	args: #( #self )>! !

!GtkTreePath methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_tree_path_copy' returning: #{GtkTreePath}
	args: #( #self )>! !

!GtkTreePath class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_path_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreePath!

!GtkTreePath methodsFor: 'C call-outs'!
compare: b
    <cCall: 'gtk_tree_path_compare' returning: #int
	args: #( #self #cObject )>! !

!GtkTreePath methodsFor: 'C call-outs'!
next
    <cCall: 'gtk_tree_path_next' returning: #void
	args: #( #self )>! !

!GtkTreePath methodsFor: 'C call-outs'!
prev
    <cCall: 'gtk_tree_path_prev' returning: #boolean
	args: #( #self )>! !

!GtkTreePath methodsFor: 'C call-outs'!
up
    <cCall: 'gtk_tree_path_up' returning: #boolean
	args: #( #self )>! !

!GtkTreePath methodsFor: 'C call-outs'!
down
    <cCall: 'gtk_tree_path_down' returning: #void
	args: #( #self )>! !

!GtkTreePath methodsFor: 'C call-outs'!
isAncestor: descendant
    <cCall: 'gtk_tree_path_is_ancestor' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreePath methodsFor: 'C call-outs'!
isDescendant: ancestor
    <cCall: 'gtk_tree_path_is_descendant' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeRowReference class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_row_reference_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeRowReference!

!GtkTreeRowReference class methodsFor: 'C call-outs'!
new: model path: path
    <cCall: 'gtk_tree_row_reference_new' returning: #{GtkTreeRowReference}
	args: #( #cObject #cObject )>! !

!GtkTreeRowReference class methodsFor: 'C call-outs'!
newProxy: proxy model: model path: path
    <cCall: 'gtk_tree_row_reference_new_proxy' returning: #{GtkTreeRowReference}
	args: #( #cObject #cObject #cObject )>! !

!GtkTreeRowReference methodsFor: 'C call-outs'!
getPath
    <cCall: 'gtk_tree_row_reference_get_path' returning: #{GtkTreePath}
	args: #( #self )>! !

!GtkTreeRowReference methodsFor: 'C call-outs'!
getModel
    <cCall: 'gtk_tree_row_reference_get_model' returning: #{GtkTreeModel}
	args: #( #self )>! !

!GtkTreeRowReference methodsFor: 'C call-outs'!
valid
    <cCall: 'gtk_tree_row_reference_valid' returning: #boolean
	args: #( #self )>! !

!GtkTreeRowReference methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_tree_row_reference_copy' returning: #{GtkTreeRowReference}
	args: #( #self )>! !

!GtkTreeRowReference methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_tree_row_reference_free' returning: #void
	args: #( #self )>! !

!GtkTreeRowReference class methodsFor: 'C call-outs'!
inserted: proxy path: path
    <cCall: 'gtk_tree_row_reference_inserted' returning: #void
	args: #( #cObject #cObject )>! !

!GtkTreeRowReference class methodsFor: 'C call-outs'!
deleted: proxy path: path
    <cCall: 'gtk_tree_row_reference_deleted' returning: #void
	args: #( #cObject #cObject )>! !

!GtkTreeRowReference class methodsFor: 'C call-outs'!
reordered: proxy path: path iter: iter newOrder: newOrder
    <cCall: 'gtk_tree_row_reference_reordered' returning: #void
	args: #( #cObject #cObject #cObject #cObject )>! !

!GtkTreeIter methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_tree_iter_copy' returning: #{GtkTreeIter}
	args: #( #self )>! !

!GtkTreeIter methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_tree_iter_free' returning: #void
	args: #( #self )>! !

!GtkTreeIter class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_iter_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeIter!

!GtkTreeModel class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_model_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeModel!

!GtkTreeModel methodsFor: 'C call-outs'!
getFlags
    <cCall: 'gtk_tree_model_get_flags' returning: #int
	args: #( #self )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
getNColumns
    <cCall: 'gtk_tree_model_get_n_columns' returning: #int
	args: #( #self )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
getColumnType: index
    <cCall: 'gtk_tree_model_get_column_type' returning: #long
	args: #( #self #int )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
getIter: iter path: path
    <cCall: 'gtk_tree_model_get_iter' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
getIterFromString: iter pathString: pathString
    <cCall: 'gtk_tree_model_get_iter_from_string' returning: #boolean
	args: #( #self #cObject #string )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
getStringFromIter: iter
    <cCall: 'gtk_tree_model_get_string_from_iter' returning: #string
	args: #( #self #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
getIterFirst: iter
    <cCall: 'gtk_tree_model_get_iter_first' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
getPath: iter
    <cCall: 'gtk_tree_model_get_path' returning: #{GtkTreePath}
	args: #( #self #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
iterNext: iter
    <cCall: 'gtk_tree_model_iter_next' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
iterChildren: iter parent: parent
    <cCall: 'gtk_tree_model_iter_children' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
iterHasChild: iter
    <cCall: 'gtk_tree_model_iter_has_child' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
iterNChildren: iter
    <cCall: 'gtk_tree_model_iter_n_children' returning: #int
	args: #( #self #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
iterNthChild: iter parent: parent n: n
    <cCall: 'gtk_tree_model_iter_nth_child' returning: #boolean
	args: #( #self #cObject #cObject #int )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
iterParent: iter child: child
    <cCall: 'gtk_tree_model_iter_parent' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
refNode: iter
    <cCall: 'gtk_tree_model_ref_node' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
unrefNode: iter
    <cCall: 'gtk_tree_model_unref_node' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
get: iter varargs: varargs
    <cCall: 'gtk_tree_model_get' returning: #void
	args: #( #self #cObject #variadic )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
foreach: func userData: userData
    <cCall: 'gtk_tree_model_foreach' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
rowChanged: path iter: iter
    <cCall: 'gtk_tree_model_row_changed' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
rowInserted: path iter: iter
    <cCall: 'gtk_tree_model_row_inserted' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
rowHasChildToggled: path iter: iter
    <cCall: 'gtk_tree_model_row_has_child_toggled' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
rowDeleted: path
    <cCall: 'gtk_tree_model_row_deleted' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeModel methodsFor: 'C call-outs'!
rowsReordered: path iter: iter newOrder: newOrder
    <cCall: 'gtk_tree_model_rows_reordered' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTreeSortable class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_sortable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeSortable!

!GtkTreeSortable methodsFor: 'C call-outs'!
sortColumnChanged
    <cCall: 'gtk_tree_sortable_sort_column_changed' returning: #void
	args: #( #self )>! !

!GtkTreeSortable methodsFor: 'C call-outs'!
getSortColumnId: sortColumnId order: order
    <cCall: 'gtk_tree_sortable_get_sort_column_id' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeSortable methodsFor: 'C call-outs'!
setSortColumnId: sortColumnId order: order
    <cCall: 'gtk_tree_sortable_set_sort_column_id' returning: #void
	args: #( #self #int #int )>! !

!GtkTreeSortable methodsFor: 'C call-outs'!
setSortFunc: sortColumnId sortFunc: sortFunc userData: userData destroy: destroy
    <cCall: 'gtk_tree_sortable_set_sort_func' returning: #void
	args: #( #self #int #cObject #cObject #int )>! !

!GtkTreeSortable methodsFor: 'C call-outs'!
setDefaultSortFunc: sortFunc userData: userData destroy: destroy
    <cCall: 'gtk_tree_sortable_set_default_sort_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkTreeSortable methodsFor: 'C call-outs'!
hasDefaultSortFunc
    <cCall: 'gtk_tree_sortable_has_default_sort_func' returning: #boolean
	args: #( #self )>! !

!GtkTreeViewColumn class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_view_column_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeViewColumn!

!GtkTreeViewColumn class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_tree_view_column_new' returning: #{GtkTreeViewColumn}
	args: #( )>! !

!GtkTreeViewColumn class methodsFor: 'C call-outs'!
newWithAttributes: title cell: cell varargs: varargs
    <cCall: 'gtk_tree_view_column_new_with_attributes' returning: #{GtkTreeViewColumn}
	args: #( #string #cObject #variadic )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
packStart: cell expand: expand
    <cCall: 'gtk_tree_view_column_pack_start' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
packEnd: cell expand: expand
    <cCall: 'gtk_tree_view_column_pack_end' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
clear
    <cCall: 'gtk_tree_view_column_clear' returning: #void
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
addAttribute: cellRenderer attribute: attribute column: column
    <cCall: 'gtk_tree_view_column_add_attribute' returning: #void
	args: #( #self #cObject #string #int )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setAttributes: cellRenderer varargs: varargs
    <cCall: 'gtk_tree_view_column_set_attributes' returning: #void
	args: #( #self #cObject #variadic )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setCellDataFunc: cellRenderer func: func funcData: funcData destroy: destroy
    <cCall: 'gtk_tree_view_column_set_cell_data_func' returning: #void
	args: #( #self #cObject #cObject #cObject #int )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
clearAttributes: cellRenderer
    <cCall: 'gtk_tree_view_column_clear_attributes' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setSpacing: spacing
    <cCall: 'gtk_tree_view_column_set_spacing' returning: #void
	args: #( #self #int )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getSpacing
    <cCall: 'gtk_tree_view_column_get_spacing' returning: #int
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setVisible: visible
    <cCall: 'gtk_tree_view_column_set_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getVisible
    <cCall: 'gtk_tree_view_column_get_visible' returning: #boolean
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setResizable: resizable
    <cCall: 'gtk_tree_view_column_set_resizable' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getResizable
    <cCall: 'gtk_tree_view_column_get_resizable' returning: #boolean
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setSizing: type
    <cCall: 'gtk_tree_view_column_set_sizing' returning: #void
	args: #( #self #int )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getSizing
    <cCall: 'gtk_tree_view_column_get_sizing' returning: #int
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getWidth
    <cCall: 'gtk_tree_view_column_get_width' returning: #int
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getFixedWidth
    <cCall: 'gtk_tree_view_column_get_fixed_width' returning: #int
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setFixedWidth: fixedWidth
    <cCall: 'gtk_tree_view_column_set_fixed_width' returning: #void
	args: #( #self #int )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setMinWidth: minWidth
    <cCall: 'gtk_tree_view_column_set_min_width' returning: #void
	args: #( #self #int )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getMinWidth
    <cCall: 'gtk_tree_view_column_get_min_width' returning: #int
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setMaxWidth: maxWidth
    <cCall: 'gtk_tree_view_column_set_max_width' returning: #void
	args: #( #self #int )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getMaxWidth
    <cCall: 'gtk_tree_view_column_get_max_width' returning: #int
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
clicked
    <cCall: 'gtk_tree_view_column_clicked' returning: #void
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setTitle: title
    <cCall: 'gtk_tree_view_column_set_title' returning: #void
	args: #( #self #string )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setExpand: expand
    <cCall: 'gtk_tree_view_column_set_expand' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getExpand
    <cCall: 'gtk_tree_view_column_get_expand' returning: #boolean
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setClickable: clickable
    <cCall: 'gtk_tree_view_column_set_clickable' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getClickable
    <cCall: 'gtk_tree_view_column_get_clickable' returning: #boolean
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setWidget: widget
    <cCall: 'gtk_tree_view_column_set_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getWidget
    <cCall: 'gtk_tree_view_column_get_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setAlignment: xalign
    <cCall: 'gtk_tree_view_column_set_alignment' returning: #void
	args: #( #self #float )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getAlignment
    <cCall: 'gtk_tree_view_column_get_alignment' returning: #float
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setReorderable: reorderable
    <cCall: 'gtk_tree_view_column_set_reorderable' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getReorderable
    <cCall: 'gtk_tree_view_column_get_reorderable' returning: #boolean
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setSortColumnId: sortColumnId
    <cCall: 'gtk_tree_view_column_set_sort_column_id' returning: #void
	args: #( #self #int )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getSortColumnId
    <cCall: 'gtk_tree_view_column_get_sort_column_id' returning: #int
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setSortIndicator: setting
    <cCall: 'gtk_tree_view_column_set_sort_indicator' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getSortIndicator
    <cCall: 'gtk_tree_view_column_get_sort_indicator' returning: #boolean
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
setSortOrder: order
    <cCall: 'gtk_tree_view_column_set_sort_order' returning: #void
	args: #( #self #int )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getSortOrder
    <cCall: 'gtk_tree_view_column_get_sort_order' returning: #int
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
cellSetCellData: treeModel iter: iter isExpander: isExpander isExpanded: isExpanded
    <cCall: 'gtk_tree_view_column_cell_set_cell_data' returning: #void
	args: #( #self #cObject #cObject #boolean #boolean )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
cellGetSize: cellArea xOffset: xOffset yOffset: yOffset width: width height: height
    <cCall: 'gtk_tree_view_column_cell_get_size' returning: #void
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
cellIsVisible
    <cCall: 'gtk_tree_view_column_cell_is_visible' returning: #boolean
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
focusCell: cell
    <cCall: 'gtk_tree_view_column_focus_cell' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
cellGetPosition: cellRenderer startPos: startPos width: width
    <cCall: 'gtk_tree_view_column_cell_get_position' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
queueResize
    <cCall: 'gtk_tree_view_column_queue_resize' returning: #void
	args: #( #self )>! !

!GtkTreeViewColumn methodsFor: 'C call-outs'!
getTreeView
    <cCall: 'gtk_tree_view_column_get_tree_view' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkCellLayout class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_layout_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellLayout!

!GtkCellLayout methodsFor: 'C call-outs'!
packStart: cell expand: expand
    <cCall: 'gtk_cell_layout_pack_start' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkCellLayout methodsFor: 'C call-outs'!
packEnd: cell expand: expand
    <cCall: 'gtk_cell_layout_pack_end' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkCellLayout methodsFor: 'C call-outs'!
getCells
    <cCall: 'gtk_cell_layout_get_cells' returning: #{GList}
	args: #( #self )>! !

!GtkCellLayout methodsFor: 'C call-outs'!
clear
    <cCall: 'gtk_cell_layout_clear' returning: #void
	args: #( #self )>! !

!GtkCellLayout methodsFor: 'C call-outs'!
setAttributes: cell varargs: varargs
    <cCall: 'gtk_cell_layout_set_attributes' returning: #void
	args: #( #self #cObject #variadic )>! !

!GtkCellLayout methodsFor: 'C call-outs'!
addAttribute: cell attribute: attribute column: column
    <cCall: 'gtk_cell_layout_add_attribute' returning: #void
	args: #( #self #cObject #string #int )>! !

!GtkCellLayout methodsFor: 'C call-outs'!
setCellDataFunc: cell func: func funcData: funcData destroy: destroy
    <cCall: 'gtk_cell_layout_set_cell_data_func' returning: #void
	args: #( #self #cObject #cObject #cObject #int )>! !

!GtkCellLayout methodsFor: 'C call-outs'!
clearAttributes: cell
    <cCall: 'gtk_cell_layout_clear_attributes' returning: #void
	args: #( #self #cObject )>! !

!GtkCellLayout methodsFor: 'C call-outs'!
reorder: cell position: position
    <cCall: 'gtk_cell_layout_reorder' returning: #void
	args: #( #self #cObject #int )>! !

!GtkCellRendererText class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_renderer_text_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellRendererText!

!GtkCellRendererText class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_cell_renderer_text_new' returning: #{GtkCellRendererText}
	args: #( )>! !

!GtkCellRendererText methodsFor: 'C call-outs'!
setFixedHeightFromFont: numberOfRows
    <cCall: 'gtk_cell_renderer_text_set_fixed_height_from_font' returning: #void
	args: #( #self #int )>! !

!GtkCellRendererAccel class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_renderer_accel_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellRendererAccel!

!GtkCellRendererAccel class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_cell_renderer_accel_new' returning: #{GtkCellRendererAccel}
	args: #( )>! !

!GtkCellRendererCombo class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_renderer_combo_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellRendererCombo!

!GtkCellRendererCombo class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_cell_renderer_combo_new' returning: #{GtkCellRendererCombo}
	args: #( )>! !

!GtkCellRendererPixbuf class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_renderer_pixbuf_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellRendererPixbuf!

!GtkCellRendererPixbuf class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_cell_renderer_pixbuf_new' returning: #{GtkCellRendererPixbuf}
	args: #( )>! !

!GtkCellRendererProgress class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_renderer_progress_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellRendererProgress!

!GtkCellRendererProgress class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_cell_renderer_progress_new' returning: #{GtkCellRendererProgress}
	args: #( )>! !

!GtkCellRendererSpin class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_renderer_spin_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellRendererSpin!

!GtkCellRendererSpin class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_cell_renderer_spin_new' returning: #{GtkCellRendererSpin}
	args: #( )>! !

!GtkCellRendererSpinner class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_renderer_spinner_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellRendererSpinner!

!GtkCellRendererSpinner class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_cell_renderer_spinner_new' returning: #{GtkCellRendererSpinner}
	args: #( )>! !

!GtkCellRendererToggle class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_renderer_toggle_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellRendererToggle!

!GtkCellRendererToggle class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_cell_renderer_toggle_new' returning: #{GtkCellRendererToggle}
	args: #( )>! !

!GtkCellRendererToggle methodsFor: 'C call-outs'!
getRadio
    <cCall: 'gtk_cell_renderer_toggle_get_radio' returning: #boolean
	args: #( #self )>! !

!GtkCellRendererToggle methodsFor: 'C call-outs'!
setRadio: radio
    <cCall: 'gtk_cell_renderer_toggle_set_radio' returning: #void
	args: #( #self #boolean )>! !

!GtkCellRendererToggle methodsFor: 'C call-outs'!
getActive
    <cCall: 'gtk_cell_renderer_toggle_get_active' returning: #boolean
	args: #( #self )>! !

!GtkCellRendererToggle methodsFor: 'C call-outs'!
setActive: setting
    <cCall: 'gtk_cell_renderer_toggle_set_active' returning: #void
	args: #( #self #boolean )>! !

!GtkCellRendererToggle methodsFor: 'C call-outs'!
getActivatable
    <cCall: 'gtk_cell_renderer_toggle_get_activatable' returning: #boolean
	args: #( #self )>! !

!GtkCellRendererToggle methodsFor: 'C call-outs'!
setActivatable: setting
    <cCall: 'gtk_cell_renderer_toggle_set_activatable' returning: #void
	args: #( #self #boolean )>! !

!GtkCellView class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_cell_view_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCellView!

!GtkCellView class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_cell_view_new' returning: #{GtkCellView}
	args: #( )>! !

!GtkCellView class methodsFor: 'C call-outs'!
newWithText: text
    <cCall: 'gtk_cell_view_new_with_text' returning: #{GtkCellView}
	args: #( #string )>! !

!GtkCellView class methodsFor: 'C call-outs'!
newWithMarkup: markup
    <cCall: 'gtk_cell_view_new_with_markup' returning: #{GtkCellView}
	args: #( #string )>! !

!GtkCellView class methodsFor: 'C call-outs'!
newWithPixbuf: pixbuf
    <cCall: 'gtk_cell_view_new_with_pixbuf' returning: #{GtkCellView}
	args: #( #cObject )>! !

!GtkCellView methodsFor: 'C call-outs'!
setModel: model
    <cCall: 'gtk_cell_view_set_model' returning: #void
	args: #( #self #cObject )>! !

!GtkCellView methodsFor: 'C call-outs'!
getModel
    <cCall: 'gtk_cell_view_get_model' returning: #{GtkTreeModel}
	args: #( #self )>! !

!GtkCellView methodsFor: 'C call-outs'!
setDisplayedRow: path
    <cCall: 'gtk_cell_view_set_displayed_row' returning: #void
	args: #( #self #cObject )>! !

!GtkCellView methodsFor: 'C call-outs'!
getDisplayedRow
    <cCall: 'gtk_cell_view_get_displayed_row' returning: #{GtkTreePath}
	args: #( #self )>! !

!GtkCellView methodsFor: 'C call-outs'!
getSizeOfRow: path requisition: requisition
    <cCall: 'gtk_cell_view_get_size_of_row' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkCellView methodsFor: 'C call-outs'!
setBackgroundColor: color
    <cCall: 'gtk_cell_view_set_background_color' returning: #void
	args: #( #self #cObject )>! !

!GtkToggleButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_toggle_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkToggleButton!

!GtkToggleButton class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_toggle_button_new' returning: #{GtkToggleButton}
	args: #( )>! !

!GtkToggleButton class methodsFor: 'C call-outs'!
newWithLabel: label
    <cCall: 'gtk_toggle_button_new_with_label' returning: #{GtkToggleButton}
	args: #( #string )>! !

!GtkToggleButton class methodsFor: 'C call-outs'!
newWithMnemonic: label
    <cCall: 'gtk_toggle_button_new_with_mnemonic' returning: #{GtkToggleButton}
	args: #( #string )>! !

!GtkToggleButton methodsFor: 'C call-outs'!
setMode: drawIndicator
    <cCall: 'gtk_toggle_button_set_mode' returning: #void
	args: #( #self #boolean )>! !

!GtkToggleButton methodsFor: 'C call-outs'!
getMode
    <cCall: 'gtk_toggle_button_get_mode' returning: #boolean
	args: #( #self )>! !

!GtkToggleButton methodsFor: 'C call-outs'!
setActive: isActive
    <cCall: 'gtk_toggle_button_set_active' returning: #void
	args: #( #self #boolean )>! !

!GtkToggleButton methodsFor: 'C call-outs'!
getActive
    <cCall: 'gtk_toggle_button_get_active' returning: #boolean
	args: #( #self )>! !

!GtkToggleButton methodsFor: 'C call-outs'!
toggled
    <cCall: 'gtk_toggle_button_toggled' returning: #void
	args: #( #self )>! !

!GtkToggleButton methodsFor: 'C call-outs'!
setInconsistent: setting
    <cCall: 'gtk_toggle_button_set_inconsistent' returning: #void
	args: #( #self #boolean )>! !

!GtkToggleButton methodsFor: 'C call-outs'!
getInconsistent
    <cCall: 'gtk_toggle_button_get_inconsistent' returning: #boolean
	args: #( #self )>! !

!GtkCheckButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_check_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCheckButton!

!GtkCheckButton class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_check_button_new' returning: #{GtkCheckButton}
	args: #( )>! !

!GtkCheckButton class methodsFor: 'C call-outs'!
newWithLabel: label
    <cCall: 'gtk_check_button_new_with_label' returning: #{GtkCheckButton}
	args: #( #string )>! !

!GtkCheckButton class methodsFor: 'C call-outs'!
newWithMnemonic: label
    <cCall: 'gtk_check_button_new_with_mnemonic' returning: #{GtkCheckButton}
	args: #( #string )>! !

!GtkItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkItem!

!GtkItem methodsFor: 'C call-outs'!
select
    <cCall: 'gtk_item_select' returning: #void
	args: #( #self )>! !

!GtkItem methodsFor: 'C call-outs'!
deselect
    <cCall: 'gtk_item_deselect' returning: #void
	args: #( #self )>! !

!GtkItem methodsFor: 'C call-outs'!
toggle
    <cCall: 'gtk_item_toggle' returning: #void
	args: #( #self )>! !

!GtkMenuItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_menu_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkMenuItem!

!GtkMenuItem class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_menu_item_new' returning: #{GtkMenuItem}
	args: #( )>! !

!GtkMenuItem class methodsFor: 'C call-outs'!
newWithLabel: label
    <cCall: 'gtk_menu_item_new_with_label' returning: #{GtkMenuItem}
	args: #( #string )>! !

!GtkMenuItem class methodsFor: 'C call-outs'!
newWithMnemonic: label
    <cCall: 'gtk_menu_item_new_with_mnemonic' returning: #{GtkMenuItem}
	args: #( #string )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
setSubmenu: submenu
    <cCall: 'gtk_menu_item_set_submenu' returning: #void
	args: #( #self #cObject )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
getSubmenu
    <cCall: 'gtk_menu_item_get_submenu' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
select
    <cCall: 'gtk_menu_item_select' returning: #void
	args: #( #self )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
deselect
    <cCall: 'gtk_menu_item_deselect' returning: #void
	args: #( #self )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
activate
    <cCall: 'gtk_menu_item_activate' returning: #void
	args: #( #self )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
toggleSizeRequest: requisition
    <cCall: 'gtk_menu_item_toggle_size_request' returning: #void
	args: #( #self #cObject )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
toggleSizeAllocate: allocation
    <cCall: 'gtk_menu_item_toggle_size_allocate' returning: #void
	args: #( #self #int )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
setRightJustified: rightJustified
    <cCall: 'gtk_menu_item_set_right_justified' returning: #void
	args: #( #self #boolean )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
getRightJustified
    <cCall: 'gtk_menu_item_get_right_justified' returning: #boolean
	args: #( #self )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
setAccelPath: accelPath
    <cCall: 'gtk_menu_item_set_accel_path' returning: #void
	args: #( #self #string )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
setLabel: label
    <cCall: 'gtk_menu_item_set_label' returning: #void
	args: #( #self #string )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
setUseUnderline: setting
    <cCall: 'gtk_menu_item_set_use_underline' returning: #void
	args: #( #self #boolean )>! !

!GtkMenuItem methodsFor: 'C call-outs'!
getUseUnderline
    <cCall: 'gtk_menu_item_get_use_underline' returning: #boolean
	args: #( #self )>! !

!GtkCheckMenuItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_check_menu_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCheckMenuItem!

!GtkCheckMenuItem class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_check_menu_item_new' returning: #{GtkCheckMenuItem}
	args: #( )>! !

!GtkCheckMenuItem class methodsFor: 'C call-outs'!
newWithLabel: label
    <cCall: 'gtk_check_menu_item_new_with_label' returning: #{GtkCheckMenuItem}
	args: #( #string )>! !

!GtkCheckMenuItem class methodsFor: 'C call-outs'!
newWithMnemonic: label
    <cCall: 'gtk_check_menu_item_new_with_mnemonic' returning: #{GtkCheckMenuItem}
	args: #( #string )>! !

!GtkCheckMenuItem methodsFor: 'C call-outs'!
setActive: isActive
    <cCall: 'gtk_check_menu_item_set_active' returning: #void
	args: #( #self #boolean )>! !

!GtkCheckMenuItem methodsFor: 'C call-outs'!
getActive
    <cCall: 'gtk_check_menu_item_get_active' returning: #boolean
	args: #( #self )>! !

!GtkCheckMenuItem methodsFor: 'C call-outs'!
toggled
    <cCall: 'gtk_check_menu_item_toggled' returning: #void
	args: #( #self )>! !

!GtkCheckMenuItem methodsFor: 'C call-outs'!
setInconsistent: setting
    <cCall: 'gtk_check_menu_item_set_inconsistent' returning: #void
	args: #( #self #boolean )>! !

!GtkCheckMenuItem methodsFor: 'C call-outs'!
getInconsistent
    <cCall: 'gtk_check_menu_item_get_inconsistent' returning: #boolean
	args: #( #self )>! !

!GtkCheckMenuItem methodsFor: 'C call-outs'!
setDrawAsRadio: drawAsRadio
    <cCall: 'gtk_check_menu_item_set_draw_as_radio' returning: #void
	args: #( #self #boolean )>! !

!GtkCheckMenuItem methodsFor: 'C call-outs'!
getDrawAsRadio
    <cCall: 'gtk_check_menu_item_get_draw_as_radio' returning: #boolean
	args: #( #self )>! !

!GtkTextTag class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_text_tag_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTextTag!

!GtkTextTag class methodsFor: 'C call-outs'!
new: name
    <cCall: 'gtk_text_tag_new' returning: #{GtkTextTag}
	args: #( #string )>! !

!GtkTextTag methodsFor: 'C call-outs'!
getPriority
    <cCall: 'gtk_text_tag_get_priority' returning: #int
	args: #( #self )>! !

!GtkTextTag methodsFor: 'C call-outs'!
setPriority: priority
    <cCall: 'gtk_text_tag_set_priority' returning: #void
	args: #( #self #int )>! !

!GtkTextTag methodsFor: 'C call-outs'!
event: eventObject event: event iter: iter
    <cCall: 'gtk_text_tag_event' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTextAttributes class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_text_attributes_new' returning: #{GtkTextAttributes}
	args: #( )>! !

!GtkTextAttributes methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_text_attributes_copy' returning: #{GtkTextAttributes}
	args: #( #self )>! !

!GtkTextAttributes methodsFor: 'C call-outs'!
copyValues: dest
    <cCall: 'gtk_text_attributes_copy_values' returning: #void
	args: #( #self #cObject )>! !

!GtkTextAttributes methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'gtk_text_attributes_unref' returning: #void
	args: #( #self )>! !

!GtkTextAttributes methodsFor: 'C call-outs'!
ref
    <cCall: 'gtk_text_attributes_ref' returning: #{GtkTextAttributes}
	args: #( #self )>! !

!GtkTextAttributes class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_text_attributes_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTextAttributes!

!GtkTextChildAnchor class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_text_child_anchor_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTextChildAnchor!

!GtkTextChildAnchor class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_text_child_anchor_new' returning: #{GtkTextChildAnchor}
	args: #( )>! !

!GtkTextChildAnchor methodsFor: 'C call-outs'!
getWidgets
    <cCall: 'gtk_text_child_anchor_get_widgets' returning: #{GList}
	args: #( #self )>! !

!GtkTextChildAnchor methodsFor: 'C call-outs'!
getDeleted
    <cCall: 'gtk_text_child_anchor_get_deleted' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getBuffer
    <cCall: 'gtk_text_iter_get_buffer' returning: #{GtkTextBuffer}
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_text_iter_copy' returning: #{GtkTextIter}
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_text_iter_free' returning: #void
	args: #( #self )>! !

!GtkTextIter class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_text_iter_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTextIter!

!GtkTextIter methodsFor: 'C call-outs'!
getOffset
    <cCall: 'gtk_text_iter_get_offset' returning: #int
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getLine
    <cCall: 'gtk_text_iter_get_line' returning: #int
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getLineOffset
    <cCall: 'gtk_text_iter_get_line_offset' returning: #int
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getLineIndex
    <cCall: 'gtk_text_iter_get_line_index' returning: #int
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getVisibleLineOffset
    <cCall: 'gtk_text_iter_get_visible_line_offset' returning: #int
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getVisibleLineIndex
    <cCall: 'gtk_text_iter_get_visible_line_index' returning: #int
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getChar
    <cCall: 'gtk_text_iter_get_char' returning: #int
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getSlice: end
    <cCall: 'gtk_text_iter_get_slice' returning: #string
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getText: end
    <cCall: 'gtk_text_iter_get_text' returning: #string
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getVisibleSlice: end
    <cCall: 'gtk_text_iter_get_visible_slice' returning: #string
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getVisibleText: end
    <cCall: 'gtk_text_iter_get_visible_text' returning: #string
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getPixbuf
    <cCall: 'gtk_text_iter_get_pixbuf' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getMarks
    <cCall: 'gtk_text_iter_get_marks' returning: #{GSList}
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getChildAnchor
    <cCall: 'gtk_text_iter_get_child_anchor' returning: #{GtkTextChildAnchor}
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getToggledTags: toggledOn
    <cCall: 'gtk_text_iter_get_toggled_tags' returning: #{GSList}
	args: #( #self #boolean )>! !

!GtkTextIter methodsFor: 'C call-outs'!
beginsTag: tag
    <cCall: 'gtk_text_iter_begins_tag' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
endsTag: tag
    <cCall: 'gtk_text_iter_ends_tag' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
togglesTag: tag
    <cCall: 'gtk_text_iter_toggles_tag' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
hasTag: tag
    <cCall: 'gtk_text_iter_has_tag' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getTags
    <cCall: 'gtk_text_iter_get_tags' returning: #{GSList}
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
editable: defaultSetting
    <cCall: 'gtk_text_iter_editable' returning: #boolean
	args: #( #self #boolean )>! !

!GtkTextIter methodsFor: 'C call-outs'!
canInsert: defaultEditability
    <cCall: 'gtk_text_iter_can_insert' returning: #boolean
	args: #( #self #boolean )>! !

!GtkTextIter methodsFor: 'C call-outs'!
startsWord
    <cCall: 'gtk_text_iter_starts_word' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
endsWord
    <cCall: 'gtk_text_iter_ends_word' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
insideWord
    <cCall: 'gtk_text_iter_inside_word' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
startsSentence
    <cCall: 'gtk_text_iter_starts_sentence' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
endsSentence
    <cCall: 'gtk_text_iter_ends_sentence' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
insideSentence
    <cCall: 'gtk_text_iter_inside_sentence' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
startsLine
    <cCall: 'gtk_text_iter_starts_line' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
endsLine
    <cCall: 'gtk_text_iter_ends_line' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
isCursorPosition
    <cCall: 'gtk_text_iter_is_cursor_position' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getCharsInLine
    <cCall: 'gtk_text_iter_get_chars_in_line' returning: #int
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getBytesInLine
    <cCall: 'gtk_text_iter_get_bytes_in_line' returning: #int
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getAttributes: values
    <cCall: 'gtk_text_iter_get_attributes' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
getLanguage
    <cCall: 'gtk_text_iter_get_language' returning: #{PangoLanguage}
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
isEnd
    <cCall: 'gtk_text_iter_is_end' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
isStart
    <cCall: 'gtk_text_iter_is_start' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardChar
    <cCall: 'gtk_text_iter_forward_char' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardChar
    <cCall: 'gtk_text_iter_backward_char' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardChars: count
    <cCall: 'gtk_text_iter_forward_chars' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardChars: count
    <cCall: 'gtk_text_iter_backward_chars' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardLine
    <cCall: 'gtk_text_iter_forward_line' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardLine
    <cCall: 'gtk_text_iter_backward_line' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardLines: count
    <cCall: 'gtk_text_iter_forward_lines' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardLines: count
    <cCall: 'gtk_text_iter_backward_lines' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardWordEnd
    <cCall: 'gtk_text_iter_forward_word_end' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardWordStart
    <cCall: 'gtk_text_iter_backward_word_start' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardWordEnds: count
    <cCall: 'gtk_text_iter_forward_word_ends' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardWordStarts: count
    <cCall: 'gtk_text_iter_backward_word_starts' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardVisibleLine
    <cCall: 'gtk_text_iter_forward_visible_line' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardVisibleLine
    <cCall: 'gtk_text_iter_backward_visible_line' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardVisibleLines: count
    <cCall: 'gtk_text_iter_forward_visible_lines' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardVisibleLines: count
    <cCall: 'gtk_text_iter_backward_visible_lines' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardVisibleWordEnd
    <cCall: 'gtk_text_iter_forward_visible_word_end' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardVisibleWordStart
    <cCall: 'gtk_text_iter_backward_visible_word_start' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardVisibleWordEnds: count
    <cCall: 'gtk_text_iter_forward_visible_word_ends' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardVisibleWordStarts: count
    <cCall: 'gtk_text_iter_backward_visible_word_starts' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardSentenceEnd
    <cCall: 'gtk_text_iter_forward_sentence_end' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardSentenceStart
    <cCall: 'gtk_text_iter_backward_sentence_start' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardSentenceEnds: count
    <cCall: 'gtk_text_iter_forward_sentence_ends' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardSentenceStarts: count
    <cCall: 'gtk_text_iter_backward_sentence_starts' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardCursorPosition
    <cCall: 'gtk_text_iter_forward_cursor_position' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardCursorPosition
    <cCall: 'gtk_text_iter_backward_cursor_position' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardCursorPositions: count
    <cCall: 'gtk_text_iter_forward_cursor_positions' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardCursorPositions: count
    <cCall: 'gtk_text_iter_backward_cursor_positions' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardVisibleCursorPosition
    <cCall: 'gtk_text_iter_forward_visible_cursor_position' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardVisibleCursorPosition
    <cCall: 'gtk_text_iter_backward_visible_cursor_position' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardVisibleCursorPositions: count
    <cCall: 'gtk_text_iter_forward_visible_cursor_positions' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardVisibleCursorPositions: count
    <cCall: 'gtk_text_iter_backward_visible_cursor_positions' returning: #boolean
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
setOffset: charOffset
    <cCall: 'gtk_text_iter_set_offset' returning: #void
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
setLine: lineNumber
    <cCall: 'gtk_text_iter_set_line' returning: #void
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
setLineOffset: charOnLine
    <cCall: 'gtk_text_iter_set_line_offset' returning: #void
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
setLineIndex: byteOnLine
    <cCall: 'gtk_text_iter_set_line_index' returning: #void
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardToEnd
    <cCall: 'gtk_text_iter_forward_to_end' returning: #void
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardToLineEnd
    <cCall: 'gtk_text_iter_forward_to_line_end' returning: #boolean
	args: #( #self )>! !

!GtkTextIter methodsFor: 'C call-outs'!
setVisibleLineOffset: charOnLine
    <cCall: 'gtk_text_iter_set_visible_line_offset' returning: #void
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
setVisibleLineIndex: byteOnLine
    <cCall: 'gtk_text_iter_set_visible_line_index' returning: #void
	args: #( #self #int )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardToTagToggle: tag
    <cCall: 'gtk_text_iter_forward_to_tag_toggle' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardToTagToggle: tag
    <cCall: 'gtk_text_iter_backward_to_tag_toggle' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardFindChar: pred userData: userData limit: limit
    <cCall: 'gtk_text_iter_forward_find_char' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardFindChar: pred userData: userData limit: limit
    <cCall: 'gtk_text_iter_backward_find_char' returning: #boolean
	args: #( #self #int #cObject #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
forwardSearch: str flags: flags matchStart: matchStart matchEnd: matchEnd limit: limit
    <cCall: 'gtk_text_iter_forward_search' returning: #boolean
	args: #( #self #string #int #cObject #cObject #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
backwardSearch: str flags: flags matchStart: matchStart matchEnd: matchEnd limit: limit
    <cCall: 'gtk_text_iter_backward_search' returning: #boolean
	args: #( #self #string #int #cObject #cObject #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
equal: rhs
    <cCall: 'gtk_text_iter_equal' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
compare: rhs
    <cCall: 'gtk_text_iter_compare' returning: #int
	args: #( #self #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
inRange: start end: end
    <cCall: 'gtk_text_iter_in_range' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTextIter methodsFor: 'C call-outs'!
order: second
    <cCall: 'gtk_text_iter_order' returning: #void
	args: #( #self #cObject )>! !

!GtkTargetList class methodsFor: 'C call-outs'!
new: targets ntargets: ntargets
    <cCall: 'gtk_target_list_new' returning: #{GtkTargetList}
	args: #( #cObject #int )>! !

!GtkTargetList methodsFor: 'C call-outs'!
ref
    <cCall: 'gtk_target_list_ref' returning: #{GtkTargetList}
	args: #( #self )>! !

!GtkTargetList methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'gtk_target_list_unref' returning: #void
	args: #( #self )>! !

!GtkTargetList methodsFor: 'C call-outs'!
add: target flags: flags info: info
    <cCall: 'gtk_target_list_add' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkTargetList methodsFor: 'C call-outs'!
addTextTargets: info
    <cCall: 'gtk_target_list_add_text_targets' returning: #void
	args: #( #self #int )>! !

!GtkTargetList methodsFor: 'C call-outs'!
addRichTextTargets: info deserializable: deserializable buffer: buffer
    <cCall: 'gtk_target_list_add_rich_text_targets' returning: #void
	args: #( #self #int #boolean #cObject )>! !

!GtkTargetList methodsFor: 'C call-outs'!
addImageTargets: info writable: writable
    <cCall: 'gtk_target_list_add_image_targets' returning: #void
	args: #( #self #int #boolean )>! !

!GtkTargetList methodsFor: 'C call-outs'!
addUriTargets: info
    <cCall: 'gtk_target_list_add_uri_targets' returning: #void
	args: #( #self #int )>! !

!GtkTargetList methodsFor: 'C call-outs'!
addTable: targets ntargets: ntargets
    <cCall: 'gtk_target_list_add_table' returning: #void
	args: #( #self #cObject #int )>! !

!GtkTargetList methodsFor: 'C call-outs'!
remove: target
    <cCall: 'gtk_target_list_remove' returning: #void
	args: #( #self #cObject )>! !

!GtkTargetList methodsFor: 'C call-outs'!
find: target info: info
    <cCall: 'gtk_target_list_find' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
targetTableNewFromList: list nTargets: nTargets
    <cCall: 'gtk_target_table_new_from_list' returning: #{GtkTargetEntry}
	args: #( #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
targetTableFree: targets nTargets: nTargets
    <cCall: 'gtk_target_table_free' returning: #void
	args: #( #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
selectionOwnerSet: widget selection: selection time: time
    <cCall: 'gtk_selection_owner_set' returning: #boolean
	args: #( #cObject #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
selectionOwnerSetForDisplay: display widget: widget selection: selection time: time
    <cCall: 'gtk_selection_owner_set_for_display' returning: #boolean
	args: #( #cObject #cObject #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
selectionAddTarget: widget selection: selection target: target info: info
    <cCall: 'gtk_selection_add_target' returning: #void
	args: #( #cObject #cObject #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
selectionAddTargets: widget selection: selection targets: targets ntargets: ntargets
    <cCall: 'gtk_selection_add_targets' returning: #void
	args: #( #cObject #cObject #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
selectionClearTargets: widget selection: selection
    <cCall: 'gtk_selection_clear_targets' returning: #void
	args: #( #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
selectionConvert: widget selection: selection target: target time: time
    <cCall: 'gtk_selection_convert' returning: #boolean
	args: #( #cObject #cObject #cObject #int )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
getSelection
    <cCall: 'gtk_selection_data_get_selection' returning: #cObject
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
getTarget
    <cCall: 'gtk_selection_data_get_target' returning: #cObject
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
getDataType
    <cCall: 'gtk_selection_data_get_data_type' returning: #cObject
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
getFormat
    <cCall: 'gtk_selection_data_get_format' returning: #int
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
getLength
    <cCall: 'gtk_selection_data_get_length' returning: #int
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
getDisplay
    <cCall: 'gtk_selection_data_get_display' returning: #{GdkDisplay}
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
set: type format: format data: data length: length
    <cCall: 'gtk_selection_data_set' returning: #void
	args: #( #self #cObject #int #cObject #int )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
setText: str len: len
    <cCall: 'gtk_selection_data_set_text' returning: #boolean
	args: #( #self #string #int )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
getText
    <cCall: 'gtk_selection_data_get_text' returning: CInt type
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
setPixbuf: pixbuf
    <cCall: 'gtk_selection_data_set_pixbuf' returning: #boolean
	args: #( #self #cObject )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
getPixbuf
    <cCall: 'gtk_selection_data_get_pixbuf' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
setUris: uris
    <cCall: 'gtk_selection_data_set_uris' returning: #boolean
	args: #( #self #cObject )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
getUris
    <cCall: 'gtk_selection_data_get_uris' returning: #string
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
getTargets: targets nAtoms: nAtoms
    <cCall: 'gtk_selection_data_get_targets' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
targetsIncludeText
    <cCall: 'gtk_selection_data_targets_include_text' returning: #boolean
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
targetsIncludeRichText: buffer
    <cCall: 'gtk_selection_data_targets_include_rich_text' returning: #boolean
	args: #( #self #cObject )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
targetsIncludeImage: writable
    <cCall: 'gtk_selection_data_targets_include_image' returning: #boolean
	args: #( #self #boolean )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
targetsIncludeUri
    <cCall: 'gtk_selection_data_targets_include_uri' returning: #boolean
	args: #( #self )>! !

!Gtk class methodsFor: 'C call-outs'!
targetsIncludeText: targets nTargets: nTargets
    <cCall: 'gtk_targets_include_text' returning: #boolean
	args: #( #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
targetsIncludeRichText: targets nTargets: nTargets buffer: buffer
    <cCall: 'gtk_targets_include_rich_text' returning: #boolean
	args: #( #cObject #int #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
targetsIncludeImage: targets nTargets: nTargets writable: writable
    <cCall: 'gtk_targets_include_image' returning: #boolean
	args: #( #cObject #int #boolean )>! !

!Gtk class methodsFor: 'C call-outs'!
targetsIncludeUri: targets nTargets: nTargets
    <cCall: 'gtk_targets_include_uri' returning: #boolean
	args: #( #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
selectionRemoveAll: widget
    <cCall: 'gtk_selection_remove_all' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
selectionClear: widget event: event
    <cCall: 'gtk_selection_clear' returning: #boolean
	args: #( #cObject #cObject )>! !

!GtkSelectionData class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_selection_data_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkSelectionData!

!GtkSelectionData methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_selection_data_copy' returning: #{GtkSelectionData}
	args: #( #self )>! !

!GtkSelectionData methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_selection_data_free' returning: #void
	args: #( #self )>! !

!GtkTargetList class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_target_list_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTargetList!

!GtkClipboard class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_clipboard_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkClipboard!

!GtkClipboard class methodsFor: 'C call-outs'!
getForDisplay: display selection: selection
    <cCall: 'gtk_clipboard_get_for_display' returning: #{GtkClipboard}
	args: #( #cObject #cObject )>! !

!GtkClipboard class methodsFor: 'C call-outs'!
get: selection
    <cCall: 'gtk_clipboard_get' returning: #{GtkClipboard}
	args: #( #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
getDisplay
    <cCall: 'gtk_clipboard_get_display' returning: #{GdkDisplay}
	args: #( #self )>! !

!GtkClipboard methodsFor: 'C call-outs'!
setWithData: targets nTargets: nTargets getFunc: getFunc clearFunc: clearFunc userData: userData
    <cCall: 'gtk_clipboard_set_with_data' returning: #boolean
	args: #( #self #cObject #int #cObject #cObject #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
setWithOwner: targets nTargets: nTargets getFunc: getFunc clearFunc: clearFunc owner: owner
    <cCall: 'gtk_clipboard_set_with_owner' returning: #boolean
	args: #( #self #cObject #int #cObject #cObject #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
getOwner
    <cCall: 'gtk_clipboard_get_owner' returning: #{GObject}
	args: #( #self )>! !

!GtkClipboard methodsFor: 'C call-outs'!
clear
    <cCall: 'gtk_clipboard_clear' returning: #void
	args: #( #self )>! !

!GtkClipboard methodsFor: 'C call-outs'!
setText: text len: len
    <cCall: 'gtk_clipboard_set_text' returning: #void
	args: #( #self #string #int )>! !

!GtkClipboard methodsFor: 'C call-outs'!
setImage: pixbuf
    <cCall: 'gtk_clipboard_set_image' returning: #void
	args: #( #self #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
requestContents: target callback: callback userData: userData
    <cCall: 'gtk_clipboard_request_contents' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
requestText: callback userData: userData
    <cCall: 'gtk_clipboard_request_text' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
requestRichText: buffer callback: callback userData: userData
    <cCall: 'gtk_clipboard_request_rich_text' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
requestImage: callback userData: userData
    <cCall: 'gtk_clipboard_request_image' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
requestUris: callback userData: userData
    <cCall: 'gtk_clipboard_request_uris' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
requestTargets: callback userData: userData
    <cCall: 'gtk_clipboard_request_targets' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitForContents: target
    <cCall: 'gtk_clipboard_wait_for_contents' returning: #{GtkSelectionData}
	args: #( #self #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitForText
    <cCall: 'gtk_clipboard_wait_for_text' returning: #string
	args: #( #self )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitForRichText: buffer format: format length: length
    <cCall: 'gtk_clipboard_wait_for_rich_text' returning: CInt type
	args: #( #self #cObject #cObject #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitForImage
    <cCall: 'gtk_clipboard_wait_for_image' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitForUris
    <cCall: 'gtk_clipboard_wait_for_uris' returning: #string
	args: #( #self )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitForTargets: targets nTargets: nTargets
    <cCall: 'gtk_clipboard_wait_for_targets' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitIsTextAvailable
    <cCall: 'gtk_clipboard_wait_is_text_available' returning: #boolean
	args: #( #self )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitIsRichTextAvailable: buffer
    <cCall: 'gtk_clipboard_wait_is_rich_text_available' returning: #boolean
	args: #( #self #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitIsImageAvailable
    <cCall: 'gtk_clipboard_wait_is_image_available' returning: #boolean
	args: #( #self )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitIsUrisAvailable
    <cCall: 'gtk_clipboard_wait_is_uris_available' returning: #boolean
	args: #( #self )>! !

!GtkClipboard methodsFor: 'C call-outs'!
waitIsTargetAvailable: target
    <cCall: 'gtk_clipboard_wait_is_target_available' returning: #boolean
	args: #( #self #cObject )>! !

!GtkClipboard methodsFor: 'C call-outs'!
setCanStore: targets nTargets: nTargets
    <cCall: 'gtk_clipboard_set_can_store' returning: #void
	args: #( #self #cObject #int )>! !

!GtkClipboard methodsFor: 'C call-outs'!
store
    <cCall: 'gtk_clipboard_store' returning: #void
	args: #( #self )>! !

!GtkColorButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_color_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkColorButton!

!GtkColorButton class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_color_button_new' returning: #{GtkColorButton}
	args: #( )>! !

!GtkColorButton class methodsFor: 'C call-outs'!
newWithColor: color
    <cCall: 'gtk_color_button_new_with_color' returning: #{GtkColorButton}
	args: #( #cObject )>! !

!GtkColorButton methodsFor: 'C call-outs'!
setColor: color
    <cCall: 'gtk_color_button_set_color' returning: #void
	args: #( #self #cObject )>! !

!GtkColorButton methodsFor: 'C call-outs'!
setAlpha: alpha
    <cCall: 'gtk_color_button_set_alpha' returning: #void
	args: #( #self #int )>! !

!GtkColorButton methodsFor: 'C call-outs'!
getColor: color
    <cCall: 'gtk_color_button_get_color' returning: #void
	args: #( #self #cObject )>! !

!GtkColorButton methodsFor: 'C call-outs'!
getAlpha
    <cCall: 'gtk_color_button_get_alpha' returning: #int
	args: #( #self )>! !

!GtkColorButton methodsFor: 'C call-outs'!
setUseAlpha: useAlpha
    <cCall: 'gtk_color_button_set_use_alpha' returning: #void
	args: #( #self #boolean )>! !

!GtkColorButton methodsFor: 'C call-outs'!
getUseAlpha
    <cCall: 'gtk_color_button_get_use_alpha' returning: #boolean
	args: #( #self )>! !

!GtkColorButton methodsFor: 'C call-outs'!
setTitle: title
    <cCall: 'gtk_color_button_set_title' returning: #void
	args: #( #self #string )>! !

!GtkVBox class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_vbox_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkVBox!

!GtkVBox class methodsFor: 'C call-outs'!
new: homogeneous spacing: spacing
    <cCall: 'gtk_vbox_new' returning: #{GtkVBox}
	args: #( #boolean #int )>! !

!GtkColorSelection class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_color_selection_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkColorSelection!

!GtkColorSelection class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_color_selection_new' returning: #{GtkColorSelection}
	args: #( )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
getHasOpacityControl
    <cCall: 'gtk_color_selection_get_has_opacity_control' returning: #boolean
	args: #( #self )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
setHasOpacityControl: hasOpacity
    <cCall: 'gtk_color_selection_set_has_opacity_control' returning: #void
	args: #( #self #boolean )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
getHasPalette
    <cCall: 'gtk_color_selection_get_has_palette' returning: #boolean
	args: #( #self )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
setHasPalette: hasPalette
    <cCall: 'gtk_color_selection_set_has_palette' returning: #void
	args: #( #self #boolean )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
setCurrentColor: color
    <cCall: 'gtk_color_selection_set_current_color' returning: #void
	args: #( #self #cObject )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
setCurrentAlpha: alpha
    <cCall: 'gtk_color_selection_set_current_alpha' returning: #void
	args: #( #self #int )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
getCurrentColor: color
    <cCall: 'gtk_color_selection_get_current_color' returning: #void
	args: #( #self #cObject )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
getCurrentAlpha
    <cCall: 'gtk_color_selection_get_current_alpha' returning: #int
	args: #( #self )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
setPreviousColor: color
    <cCall: 'gtk_color_selection_set_previous_color' returning: #void
	args: #( #self #cObject )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
setPreviousAlpha: alpha
    <cCall: 'gtk_color_selection_set_previous_alpha' returning: #void
	args: #( #self #int )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
getPreviousColor: color
    <cCall: 'gtk_color_selection_get_previous_color' returning: #void
	args: #( #self #cObject )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
getPreviousAlpha
    <cCall: 'gtk_color_selection_get_previous_alpha' returning: #int
	args: #( #self )>! !

!GtkColorSelection methodsFor: 'C call-outs'!
isAdjusting
    <cCall: 'gtk_color_selection_is_adjusting' returning: #boolean
	args: #( #self )>! !

!GtkColorSelection class methodsFor: 'C call-outs'!
paletteFromString: str colors: colors nColors: nColors
    <cCall: 'gtk_color_selection_palette_from_string' returning: #boolean
	args: #( #string #cObject #cObject )>! !

!GtkColorSelection class methodsFor: 'C call-outs'!
paletteToString: colors nColors: nColors
    <cCall: 'gtk_color_selection_palette_to_string' returning: #string
	args: #( #cObject #int )>! !

!GtkColorSelection class methodsFor: 'C call-outs'!
setChangePaletteWithScreenHook: func
    <cCall: 'gtk_color_selection_set_change_palette_with_screen_hook' returning: #int
	args: #( #cObject )>! !

!GtkColorSelectionDialog class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_color_selection_dialog_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkColorSelectionDialog!

!GtkColorSelectionDialog class methodsFor: 'C call-outs'!
new: title
    <cCall: 'gtk_color_selection_dialog_new' returning: #{GtkColorSelectionDialog}
	args: #( #string )>! !

!GtkColorSelectionDialog methodsFor: 'C call-outs'!
getColorSelection
    <cCall: 'gtk_color_selection_dialog_get_color_selection' returning: #{GtkWidget}
	args: #( #self )>! !

!Gtk class methodsFor: 'C call-outs'!
dragGetData: widget context: context target: target time: time
    <cCall: 'gtk_drag_get_data' returning: #void
	args: #( #cObject #cObject #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
dragFinish: context success: success del: del time: time
    <cCall: 'gtk_drag_finish' returning: #void
	args: #( #cObject #boolean #boolean #int )>! !

!Gtk class methodsFor: 'C call-outs'!
dragGetSourceWidget: context
    <cCall: 'gtk_drag_get_source_widget' returning: #{GtkWidget}
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragHighlight: widget
    <cCall: 'gtk_drag_highlight' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragUnhighlight: widget
    <cCall: 'gtk_drag_unhighlight' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestSet: widget flags: flags targets: targets nTargets: nTargets actions: actions
    <cCall: 'gtk_drag_dest_set' returning: #void
	args: #( #cObject #int #cObject #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestSetProxy: widget proxyWindow: proxyWindow protocol: protocol useCoordinates: useCoordinates
    <cCall: 'gtk_drag_dest_set_proxy' returning: #void
	args: #( #cObject #cObject #int #boolean )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestUnset: widget
    <cCall: 'gtk_drag_dest_unset' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestFindTarget: widget context: context targetList: targetList
    <cCall: 'gtk_drag_dest_find_target' returning: #cObject
	args: #( #cObject #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestGetTargetList: widget
    <cCall: 'gtk_drag_dest_get_target_list' returning: #{GtkTargetList}
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestSetTargetList: widget targetList: targetList
    <cCall: 'gtk_drag_dest_set_target_list' returning: #void
	args: #( #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestAddTextTargets: widget
    <cCall: 'gtk_drag_dest_add_text_targets' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestAddImageTargets: widget
    <cCall: 'gtk_drag_dest_add_image_targets' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestAddUriTargets: widget
    <cCall: 'gtk_drag_dest_add_uri_targets' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestSetTrackMotion: widget trackMotion: trackMotion
    <cCall: 'gtk_drag_dest_set_track_motion' returning: #void
	args: #( #cObject #boolean )>! !

!Gtk class methodsFor: 'C call-outs'!
dragDestGetTrackMotion: widget
    <cCall: 'gtk_drag_dest_get_track_motion' returning: #boolean
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceSet: widget startButtonMask: startButtonMask targets: targets nTargets: nTargets actions: actions
    <cCall: 'gtk_drag_source_set' returning: #void
	args: #( #cObject #int #cObject #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceUnset: widget
    <cCall: 'gtk_drag_source_unset' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceGetTargetList: widget
    <cCall: 'gtk_drag_source_get_target_list' returning: #{GtkTargetList}
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceSetTargetList: widget targetList: targetList
    <cCall: 'gtk_drag_source_set_target_list' returning: #void
	args: #( #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceAddTextTargets: widget
    <cCall: 'gtk_drag_source_add_text_targets' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceAddImageTargets: widget
    <cCall: 'gtk_drag_source_add_image_targets' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceAddUriTargets: widget
    <cCall: 'gtk_drag_source_add_uri_targets' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceSetIcon: widget colormap: colormap pixmap: pixmap mask: mask
    <cCall: 'gtk_drag_source_set_icon' returning: #void
	args: #( #cObject #cObject #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceSetIconPixbuf: widget pixbuf: pixbuf
    <cCall: 'gtk_drag_source_set_icon_pixbuf' returning: #void
	args: #( #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceSetIconStock: widget stockId: stockId
    <cCall: 'gtk_drag_source_set_icon_stock' returning: #void
	args: #( #cObject #string )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSourceSetIconName: widget iconName: iconName
    <cCall: 'gtk_drag_source_set_icon_name' returning: #void
	args: #( #cObject #string )>! !

!Gtk class methodsFor: 'C call-outs'!
dragBegin: widget targets: targets actions: actions button: button event: event
    <cCall: 'gtk_drag_begin' returning: #{GdkDragContext}
	args: #( #cObject #cObject #int #int #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSetIconWidget: context widget: widget hotX: hotX hotY: hotY
    <cCall: 'gtk_drag_set_icon_widget' returning: #void
	args: #( #cObject #cObject #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSetIconPixmap: context colormap: colormap pixmap: pixmap mask: mask hotX: hotX hotY: hotY
    <cCall: 'gtk_drag_set_icon_pixmap' returning: #void
	args: #( #cObject #cObject #cObject #cObject #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSetIconPixbuf: context pixbuf: pixbuf hotX: hotX hotY: hotY
    <cCall: 'gtk_drag_set_icon_pixbuf' returning: #void
	args: #( #cObject #cObject #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSetIconStock: context stockId: stockId hotX: hotX hotY: hotY
    <cCall: 'gtk_drag_set_icon_stock' returning: #void
	args: #( #cObject #string #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSetIconName: context iconName: iconName hotX: hotX hotY: hotY
    <cCall: 'gtk_drag_set_icon_name' returning: #void
	args: #( #cObject #string #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
dragSetIconDefault: context
    <cCall: 'gtk_drag_set_icon_default' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
dragCheckThreshold: widget startX: startX startY: startY currentX: currentX currentY: currentY
    <cCall: 'gtk_drag_check_threshold' returning: #boolean
	args: #( #cObject #int #int #int #int )>! !

!GtkEditable class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_editable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkEditable!

!GtkEditable methodsFor: 'C call-outs'!
selectRegion: startPos endPos: endPos
    <cCall: 'gtk_editable_select_region' returning: #void
	args: #( #self #int #int )>! !

!GtkEditable methodsFor: 'C call-outs'!
getSelectionBounds: startPos endPos: endPos
    <cCall: 'gtk_editable_get_selection_bounds' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkEditable methodsFor: 'C call-outs'!
insertText: newText newTextLength: newTextLength position: position
    <cCall: 'gtk_editable_insert_text' returning: #void
	args: #( #self #string #int #cObject )>! !

!GtkEditable methodsFor: 'C call-outs'!
deleteText: startPos endPos: endPos
    <cCall: 'gtk_editable_delete_text' returning: #void
	args: #( #self #int #int )>! !

!GtkEditable methodsFor: 'C call-outs'!
getChars: startPos endPos: endPos
    <cCall: 'gtk_editable_get_chars' returning: #string
	args: #( #self #int #int )>! !

!GtkEditable methodsFor: 'C call-outs'!
cutClipboard
    <cCall: 'gtk_editable_cut_clipboard' returning: #void
	args: #( #self )>! !

!GtkEditable methodsFor: 'C call-outs'!
copyClipboard
    <cCall: 'gtk_editable_copy_clipboard' returning: #void
	args: #( #self )>! !

!GtkEditable methodsFor: 'C call-outs'!
pasteClipboard
    <cCall: 'gtk_editable_paste_clipboard' returning: #void
	args: #( #self )>! !

!GtkEditable methodsFor: 'C call-outs'!
deleteSelection
    <cCall: 'gtk_editable_delete_selection' returning: #void
	args: #( #self )>! !

!GtkEditable methodsFor: 'C call-outs'!
setPosition: position
    <cCall: 'gtk_editable_set_position' returning: #void
	args: #( #self #int )>! !

!GtkEditable methodsFor: 'C call-outs'!
getPosition
    <cCall: 'gtk_editable_get_position' returning: #int
	args: #( #self )>! !

!GtkEditable methodsFor: 'C call-outs'!
setEditable: isEditable
    <cCall: 'gtk_editable_set_editable' returning: #void
	args: #( #self #boolean )>! !

!GtkEditable methodsFor: 'C call-outs'!
getEditable
    <cCall: 'gtk_editable_get_editable' returning: #boolean
	args: #( #self )>! !

!GtkIMContext class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_im_context_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkIMContext!

!GtkIMContext methodsFor: 'C call-outs'!
setClientWindow: window
    <cCall: 'gtk_im_context_set_client_window' returning: #void
	args: #( #self #cObject )>! !

!GtkIMContext methodsFor: 'C call-outs'!
getPreeditString: str attrs: attrs cursorPos: cursorPos
    <cCall: 'gtk_im_context_get_preedit_string' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkIMContext methodsFor: 'C call-outs'!
filterKeypress: event
    <cCall: 'gtk_im_context_filter_keypress' returning: #boolean
	args: #( #self #cObject )>! !

!GtkIMContext methodsFor: 'C call-outs'!
focusIn
    <cCall: 'gtk_im_context_focus_in' returning: #void
	args: #( #self )>! !

!GtkIMContext methodsFor: 'C call-outs'!
focusOut
    <cCall: 'gtk_im_context_focus_out' returning: #void
	args: #( #self )>! !

!GtkIMContext methodsFor: 'C call-outs'!
reset
    <cCall: 'gtk_im_context_reset' returning: #void
	args: #( #self )>! !

!GtkIMContext methodsFor: 'C call-outs'!
setCursorLocation: area
    <cCall: 'gtk_im_context_set_cursor_location' returning: #void
	args: #( #self #cObject )>! !

!GtkIMContext methodsFor: 'C call-outs'!
setUsePreedit: usePreedit
    <cCall: 'gtk_im_context_set_use_preedit' returning: #void
	args: #( #self #boolean )>! !

!GtkIMContext methodsFor: 'C call-outs'!
setSurrounding: text len: len cursorIndex: cursorIndex
    <cCall: 'gtk_im_context_set_surrounding' returning: #void
	args: #( #self #string #int #int )>! !

!GtkIMContext methodsFor: 'C call-outs'!
getSurrounding: text cursorIndex: cursorIndex
    <cCall: 'gtk_im_context_get_surrounding' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkIMContext methodsFor: 'C call-outs'!
deleteSurrounding: offset nChars: nChars
    <cCall: 'gtk_im_context_delete_surrounding' returning: #boolean
	args: #( #self #int #int )>! !

!GtkEntryBuffer class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_entry_buffer_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkEntryBuffer!

!GtkEntryBuffer class methodsFor: 'C call-outs'!
new: initialChars nInitialChars: nInitialChars
    <cCall: 'gtk_entry_buffer_new' returning: #{GtkEntryBuffer}
	args: #( #string #int )>! !

!GtkEntryBuffer methodsFor: 'C call-outs'!
getBytes
    <cCall: 'gtk_entry_buffer_get_bytes' returning: #int
	args: #( #self )>! !

!GtkEntryBuffer methodsFor: 'C call-outs'!
getLength
    <cCall: 'gtk_entry_buffer_get_length' returning: #int
	args: #( #self )>! !

!GtkEntryBuffer methodsFor: 'C call-outs'!
setText: chars nChars: nChars
    <cCall: 'gtk_entry_buffer_set_text' returning: #void
	args: #( #self #string #int )>! !

!GtkEntryBuffer methodsFor: 'C call-outs'!
setMaxLength: maxLength
    <cCall: 'gtk_entry_buffer_set_max_length' returning: #void
	args: #( #self #int )>! !

!GtkEntryBuffer methodsFor: 'C call-outs'!
getMaxLength
    <cCall: 'gtk_entry_buffer_get_max_length' returning: #int
	args: #( #self )>! !

!GtkEntryBuffer methodsFor: 'C call-outs'!
insertText: position chars: chars nChars: nChars
    <cCall: 'gtk_entry_buffer_insert_text' returning: #int
	args: #( #self #int #string #int )>! !

!GtkEntryBuffer methodsFor: 'C call-outs'!
deleteText: position nChars: nChars
    <cCall: 'gtk_entry_buffer_delete_text' returning: #int
	args: #( #self #int #int )>! !

!GtkEntryBuffer methodsFor: 'C call-outs'!
emitInsertedText: position chars: chars nChars: nChars
    <cCall: 'gtk_entry_buffer_emit_inserted_text' returning: #void
	args: #( #self #int #string #int )>! !

!GtkEntryBuffer methodsFor: 'C call-outs'!
emitDeletedText: position nChars: nChars
    <cCall: 'gtk_entry_buffer_emit_deleted_text' returning: #void
	args: #( #self #int #int )>! !

!GtkListStore class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_list_store_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkListStore!

!GtkListStore class methodsFor: 'C call-outs'!
new: nColumns varargs: varargs
    <cCall: 'gtk_list_store_new' returning: #{GtkListStore}
	args: #( #int #variadic )>! !

!GtkListStore class methodsFor: 'C call-outs'!
newv: nColumns types: types
    <cCall: 'gtk_list_store_newv' returning: #{GtkListStore}
	args: #( #int #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
setColumnTypes: nColumns types: types
    <cCall: 'gtk_list_store_set_column_types' returning: #void
	args: #( #self #int #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
set: iter varargs: varargs
    <cCall: 'gtk_list_store_set' returning: #void
	args: #( #self #cObject #variadic )>! !

!GtkListStore methodsFor: 'C call-outs'!
remove: iter
    <cCall: 'gtk_list_store_remove' returning: #boolean
	args: #( #self #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
insert: iter position: position
    <cCall: 'gtk_list_store_insert' returning: #void
	args: #( #self #cObject #int )>! !

!GtkListStore methodsFor: 'C call-outs'!
insertBefore: iter sibling: sibling
    <cCall: 'gtk_list_store_insert_before' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
insertAfter: iter sibling: sibling
    <cCall: 'gtk_list_store_insert_after' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
insertWithValues: iter position: position varargs: varargs
    <cCall: 'gtk_list_store_insert_with_values' returning: #void
	args: #( #self #cObject #int #variadic )>! !

!GtkListStore methodsFor: 'C call-outs'!
prepend: iter
    <cCall: 'gtk_list_store_prepend' returning: #void
	args: #( #self #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
append: iter
    <cCall: 'gtk_list_store_append' returning: #void
	args: #( #self #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
clear
    <cCall: 'gtk_list_store_clear' returning: #void
	args: #( #self )>! !

!GtkListStore methodsFor: 'C call-outs'!
iterIsValid: iter
    <cCall: 'gtk_list_store_iter_is_valid' returning: #boolean
	args: #( #self #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
reorder: newOrder
    <cCall: 'gtk_list_store_reorder' returning: #void
	args: #( #self #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
swap: a b: b
    <cCall: 'gtk_list_store_swap' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
moveAfter: iter position: position
    <cCall: 'gtk_list_store_move_after' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkListStore methodsFor: 'C call-outs'!
moveBefore: iter position: position
    <cCall: 'gtk_list_store_move_before' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeModelFilter class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_model_filter_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeModelFilter!

!GtkTreeModelFilter class methodsFor: 'C call-outs'!
new: childModel root: root
    <cCall: 'gtk_tree_model_filter_new' returning: #{GtkTreeModelFilter}
	args: #( #cObject #cObject )>! !

!GtkTreeModelFilter methodsFor: 'C call-outs'!
setVisibleFunc: func data: data destroy: destroy
    <cCall: 'gtk_tree_model_filter_set_visible_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkTreeModelFilter methodsFor: 'C call-outs'!
setModifyFunc: nColumns types: types func: func data: data destroy: destroy
    <cCall: 'gtk_tree_model_filter_set_modify_func' returning: #void
	args: #( #self #int #cObject #cObject #cObject #int )>! !

!GtkTreeModelFilter methodsFor: 'C call-outs'!
setVisibleColumn: column
    <cCall: 'gtk_tree_model_filter_set_visible_column' returning: #void
	args: #( #self #int )>! !

!GtkTreeModelFilter methodsFor: 'C call-outs'!
getModel
    <cCall: 'gtk_tree_model_filter_get_model' returning: #{GtkTreeModel}
	args: #( #self )>! !

!GtkTreeModelFilter methodsFor: 'C call-outs'!
convertChildIterToIter: filterIter childIter: childIter
    <cCall: 'gtk_tree_model_filter_convert_child_iter_to_iter' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeModelFilter methodsFor: 'C call-outs'!
convertIterToChildIter: childIter filterIter: filterIter
    <cCall: 'gtk_tree_model_filter_convert_iter_to_child_iter' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeModelFilter methodsFor: 'C call-outs'!
convertChildPathToPath: childPath
    <cCall: 'gtk_tree_model_filter_convert_child_path_to_path' returning: #{GtkTreePath}
	args: #( #self #cObject )>! !

!GtkTreeModelFilter methodsFor: 'C call-outs'!
convertPathToChildPath: filterPath
    <cCall: 'gtk_tree_model_filter_convert_path_to_child_path' returning: #{GtkTreePath}
	args: #( #self #cObject )>! !

!GtkTreeModelFilter methodsFor: 'C call-outs'!
refilter
    <cCall: 'gtk_tree_model_filter_refilter' returning: #void
	args: #( #self )>! !

!GtkTreeModelFilter methodsFor: 'C call-outs'!
clearCache
    <cCall: 'gtk_tree_model_filter_clear_cache' returning: #void
	args: #( #self )>! !

!GtkEntryCompletion class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_entry_completion_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkEntryCompletion!

!GtkEntryCompletion class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_entry_completion_new' returning: #{GtkEntryCompletion}
	args: #( )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
getEntry
    <cCall: 'gtk_entry_completion_get_entry' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
setModel: model
    <cCall: 'gtk_entry_completion_set_model' returning: #void
	args: #( #self #cObject )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
getModel
    <cCall: 'gtk_entry_completion_get_model' returning: #{GtkTreeModel}
	args: #( #self )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
setMatchFunc: func funcData: funcData funcNotify: funcNotify
    <cCall: 'gtk_entry_completion_set_match_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
setMinimumKeyLength: length
    <cCall: 'gtk_entry_completion_set_minimum_key_length' returning: #void
	args: #( #self #int )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
getMinimumKeyLength
    <cCall: 'gtk_entry_completion_get_minimum_key_length' returning: #int
	args: #( #self )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
complete
    <cCall: 'gtk_entry_completion_complete' returning: #void
	args: #( #self )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
insertPrefix
    <cCall: 'gtk_entry_completion_insert_prefix' returning: #void
	args: #( #self )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
insertActionText: index text: text
    <cCall: 'gtk_entry_completion_insert_action_text' returning: #void
	args: #( #self #int #string )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
insertActionMarkup: index markup: markup
    <cCall: 'gtk_entry_completion_insert_action_markup' returning: #void
	args: #( #self #int #string )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
deleteAction: index
    <cCall: 'gtk_entry_completion_delete_action' returning: #void
	args: #( #self #int )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
setInlineCompletion: inlineCompletion
    <cCall: 'gtk_entry_completion_set_inline_completion' returning: #void
	args: #( #self #boolean )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
getInlineCompletion
    <cCall: 'gtk_entry_completion_get_inline_completion' returning: #boolean
	args: #( #self )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
setInlineSelection: inlineSelection
    <cCall: 'gtk_entry_completion_set_inline_selection' returning: #void
	args: #( #self #boolean )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
getInlineSelection
    <cCall: 'gtk_entry_completion_get_inline_selection' returning: #boolean
	args: #( #self )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
setPopupCompletion: popupCompletion
    <cCall: 'gtk_entry_completion_set_popup_completion' returning: #void
	args: #( #self #boolean )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
getPopupCompletion
    <cCall: 'gtk_entry_completion_get_popup_completion' returning: #boolean
	args: #( #self )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
setPopupSetWidth: popupSetWidth
    <cCall: 'gtk_entry_completion_set_popup_set_width' returning: #void
	args: #( #self #boolean )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
getPopupSetWidth
    <cCall: 'gtk_entry_completion_get_popup_set_width' returning: #boolean
	args: #( #self )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
setPopupSingleMatch: popupSingleMatch
    <cCall: 'gtk_entry_completion_set_popup_single_match' returning: #void
	args: #( #self #boolean )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
getPopupSingleMatch
    <cCall: 'gtk_entry_completion_get_popup_single_match' returning: #boolean
	args: #( #self )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
setTextColumn: column
    <cCall: 'gtk_entry_completion_set_text_column' returning: #void
	args: #( #self #int )>! !

!GtkEntryCompletion methodsFor: 'C call-outs'!
getTextColumn
    <cCall: 'gtk_entry_completion_get_text_column' returning: #int
	args: #( #self )>! !

!GtkEntry class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_entry_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkEntry!

!GtkEntry class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_entry_new' returning: #{GtkEntry}
	args: #( )>! !

!GtkEntry class methodsFor: 'C call-outs'!
newWithBuffer: buffer
    <cCall: 'gtk_entry_new_with_buffer' returning: #{GtkEntry}
	args: #( #cObject )>! !

!GtkEntry methodsFor: 'C call-outs'!
getBuffer
    <cCall: 'gtk_entry_get_buffer' returning: #{GtkEntryBuffer}
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setBuffer: buffer
    <cCall: 'gtk_entry_set_buffer' returning: #void
	args: #( #self #cObject )>! !

!GtkEntry methodsFor: 'C call-outs'!
getTextWindow
    <cCall: 'gtk_entry_get_text_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setVisibility: visible
    <cCall: 'gtk_entry_set_visibility' returning: #void
	args: #( #self #boolean )>! !

!GtkEntry methodsFor: 'C call-outs'!
getVisibility
    <cCall: 'gtk_entry_get_visibility' returning: #boolean
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setInvisibleChar: ch
    <cCall: 'gtk_entry_set_invisible_char' returning: #void
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
getInvisibleChar
    <cCall: 'gtk_entry_get_invisible_char' returning: #int
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
unsetInvisibleChar
    <cCall: 'gtk_entry_unset_invisible_char' returning: #void
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setHasFrame: setting
    <cCall: 'gtk_entry_set_has_frame' returning: #void
	args: #( #self #boolean )>! !

!GtkEntry methodsFor: 'C call-outs'!
getHasFrame
    <cCall: 'gtk_entry_get_has_frame' returning: #boolean
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setInnerBorder: border
    <cCall: 'gtk_entry_set_inner_border' returning: #void
	args: #( #self #cObject )>! !

!GtkEntry methodsFor: 'C call-outs'!
setOverwriteMode: overwrite
    <cCall: 'gtk_entry_set_overwrite_mode' returning: #void
	args: #( #self #boolean )>! !

!GtkEntry methodsFor: 'C call-outs'!
getOverwriteMode
    <cCall: 'gtk_entry_get_overwrite_mode' returning: #boolean
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setMaxLength: max
    <cCall: 'gtk_entry_set_max_length' returning: #void
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
getMaxLength
    <cCall: 'gtk_entry_get_max_length' returning: #int
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
getTextLength
    <cCall: 'gtk_entry_get_text_length' returning: #int
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setActivatesDefault: setting
    <cCall: 'gtk_entry_set_activates_default' returning: #void
	args: #( #self #boolean )>! !

!GtkEntry methodsFor: 'C call-outs'!
getActivatesDefault
    <cCall: 'gtk_entry_get_activates_default' returning: #boolean
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setWidthChars: nChars
    <cCall: 'gtk_entry_set_width_chars' returning: #void
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
getWidthChars
    <cCall: 'gtk_entry_get_width_chars' returning: #int
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setText: text
    <cCall: 'gtk_entry_set_text' returning: #void
	args: #( #self #string )>! !

!GtkEntry methodsFor: 'C call-outs'!
getLayout
    <cCall: 'gtk_entry_get_layout' returning: #{PangoLayout}
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
getLayoutOffsets: x y: y
    <cCall: 'gtk_entry_get_layout_offsets' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkEntry methodsFor: 'C call-outs'!
setAlignment: xalign
    <cCall: 'gtk_entry_set_alignment' returning: #void
	args: #( #self #float )>! !

!GtkEntry methodsFor: 'C call-outs'!
getAlignment
    <cCall: 'gtk_entry_get_alignment' returning: #float
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setCompletion: completion
    <cCall: 'gtk_entry_set_completion' returning: #void
	args: #( #self #cObject )>! !

!GtkEntry methodsFor: 'C call-outs'!
getCompletion
    <cCall: 'gtk_entry_get_completion' returning: #{GtkEntryCompletion}
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
layoutIndexToTextIndex: layoutIndex
    <cCall: 'gtk_entry_layout_index_to_text_index' returning: #int
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
textIndexToLayoutIndex: textIndex
    <cCall: 'gtk_entry_text_index_to_layout_index' returning: #int
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
setCursorHadjustment: adjustment
    <cCall: 'gtk_entry_set_cursor_hadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkEntry methodsFor: 'C call-outs'!
getCursorHadjustment
    <cCall: 'gtk_entry_get_cursor_hadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setProgressFraction: fraction
    <cCall: 'gtk_entry_set_progress_fraction' returning: #void
	args: #( #self #double )>! !

!GtkEntry methodsFor: 'C call-outs'!
getProgressFraction
    <cCall: 'gtk_entry_get_progress_fraction' returning: #double
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setProgressPulseStep: fraction
    <cCall: 'gtk_entry_set_progress_pulse_step' returning: #void
	args: #( #self #double )>! !

!GtkEntry methodsFor: 'C call-outs'!
getProgressPulseStep
    <cCall: 'gtk_entry_get_progress_pulse_step' returning: #double
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
progressPulse
    <cCall: 'gtk_entry_progress_pulse' returning: #void
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
setIconFromPixbuf: iconPos pixbuf: pixbuf
    <cCall: 'gtk_entry_set_icon_from_pixbuf' returning: #void
	args: #( #self #int #cObject )>! !

!GtkEntry methodsFor: 'C call-outs'!
setIconFromStock: iconPos stockId: stockId
    <cCall: 'gtk_entry_set_icon_from_stock' returning: #void
	args: #( #self #int #string )>! !

!GtkEntry methodsFor: 'C call-outs'!
setIconFromIconName: iconPos iconName: iconName
    <cCall: 'gtk_entry_set_icon_from_icon_name' returning: #void
	args: #( #self #int #string )>! !

!GtkEntry methodsFor: 'C call-outs'!
setIconFromGicon: iconPos icon: icon
    <cCall: 'gtk_entry_set_icon_from_gicon' returning: #void
	args: #( #self #int #cObject )>! !

!GtkEntry methodsFor: 'C call-outs'!
getIconStorageType: iconPos
    <cCall: 'gtk_entry_get_icon_storage_type' returning: #int
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
getIconPixbuf: iconPos
    <cCall: 'gtk_entry_get_icon_pixbuf' returning: #{GdkPixbuf}
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
getIconGicon: iconPos
    <cCall: 'gtk_entry_get_icon_gicon' returning: #{GIcon}
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
setIconActivatable: iconPos activatable: activatable
    <cCall: 'gtk_entry_set_icon_activatable' returning: #void
	args: #( #self #int #boolean )>! !

!GtkEntry methodsFor: 'C call-outs'!
getIconActivatable: iconPos
    <cCall: 'gtk_entry_get_icon_activatable' returning: #boolean
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
setIconSensitive: iconPos sensitive: sensitive
    <cCall: 'gtk_entry_set_icon_sensitive' returning: #void
	args: #( #self #int #boolean )>! !

!GtkEntry methodsFor: 'C call-outs'!
getIconSensitive: iconPos
    <cCall: 'gtk_entry_get_icon_sensitive' returning: #boolean
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
getIconAtPos: x y: y
    <cCall: 'gtk_entry_get_icon_at_pos' returning: #int
	args: #( #self #int #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
setIconTooltipText: iconPos tooltip: tooltip
    <cCall: 'gtk_entry_set_icon_tooltip_text' returning: #void
	args: #( #self #int #string )>! !

!GtkEntry methodsFor: 'C call-outs'!
getIconTooltipText: iconPos
    <cCall: 'gtk_entry_get_icon_tooltip_text' returning: #string
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
setIconTooltipMarkup: iconPos tooltip: tooltip
    <cCall: 'gtk_entry_set_icon_tooltip_markup' returning: #void
	args: #( #self #int #string )>! !

!GtkEntry methodsFor: 'C call-outs'!
getIconTooltipMarkup: iconPos
    <cCall: 'gtk_entry_get_icon_tooltip_markup' returning: #string
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
setIconDragSource: iconPos targetList: targetList actions: actions
    <cCall: 'gtk_entry_set_icon_drag_source' returning: #void
	args: #( #self #int #cObject #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
getCurrentIconDragSource
    <cCall: 'gtk_entry_get_current_icon_drag_source' returning: #int
	args: #( #self )>! !

!GtkEntry methodsFor: 'C call-outs'!
getIconWindow: iconPos
    <cCall: 'gtk_entry_get_icon_window' returning: #{GdkWindow}
	args: #( #self #int )>! !

!GtkEntry methodsFor: 'C call-outs'!
imContextFilterKeypress: event
    <cCall: 'gtk_entry_im_context_filter_keypress' returning: #boolean
	args: #( #self #cObject )>! !

!GtkEntry methodsFor: 'C call-outs'!
resetImContext
    <cCall: 'gtk_entry_reset_im_context' returning: #void
	args: #( #self )>! !

!GtkTreeView class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_view_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeView!

!GtkTreeView class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_tree_view_new' returning: #{GtkTreeView}
	args: #( )>! !

!GtkTreeView class methodsFor: 'C call-outs'!
newWithModel: model
    <cCall: 'gtk_tree_view_new_with_model' returning: #{GtkTreeView}
	args: #( #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getModel
    <cCall: 'gtk_tree_view_get_model' returning: #{GtkTreeModel}
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setModel: model
    <cCall: 'gtk_tree_view_set_model' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getSelection
    <cCall: 'gtk_tree_view_get_selection' returning: #{GtkTreeSelection}
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getHadjustment
    <cCall: 'gtk_tree_view_get_hadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setHadjustment: adjustment
    <cCall: 'gtk_tree_view_set_hadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getVadjustment
    <cCall: 'gtk_tree_view_get_vadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setVadjustment: adjustment
    <cCall: 'gtk_tree_view_set_vadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getHeadersVisible
    <cCall: 'gtk_tree_view_get_headers_visible' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setHeadersVisible: headersVisible
    <cCall: 'gtk_tree_view_set_headers_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
columnsAutosize
    <cCall: 'gtk_tree_view_columns_autosize' returning: #void
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getHeadersClickable
    <cCall: 'gtk_tree_view_get_headers_clickable' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setHeadersClickable: setting
    <cCall: 'gtk_tree_view_set_headers_clickable' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setRulesHint: setting
    <cCall: 'gtk_tree_view_set_rules_hint' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getRulesHint
    <cCall: 'gtk_tree_view_get_rules_hint' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
appendColumn: column
    <cCall: 'gtk_tree_view_append_column' returning: #int
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
removeColumn: column
    <cCall: 'gtk_tree_view_remove_column' returning: #int
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
insertColumn: column position: position
    <cCall: 'gtk_tree_view_insert_column' returning: #int
	args: #( #self #cObject #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
insertColumnWithAttributes: position title: title cell: cell varargs: varargs
    <cCall: 'gtk_tree_view_insert_column_with_attributes' returning: #int
	args: #( #self #int #string #cObject #variadic )>! !

!GtkTreeView methodsFor: 'C call-outs'!
insertColumnWithDataFunc: position title: title cell: cell func: func data: data dnotify: dnotify
    <cCall: 'gtk_tree_view_insert_column_with_data_func' returning: #int
	args: #( #self #int #string #cObject #cObject #cObject #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getColumn: n
    <cCall: 'gtk_tree_view_get_column' returning: #{GtkTreeViewColumn}
	args: #( #self #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getColumns
    <cCall: 'gtk_tree_view_get_columns' returning: #{GList}
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
moveColumnAfter: column baseColumn: baseColumn
    <cCall: 'gtk_tree_view_move_column_after' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setExpanderColumn: column
    <cCall: 'gtk_tree_view_set_expander_column' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getExpanderColumn
    <cCall: 'gtk_tree_view_get_expander_column' returning: #{GtkTreeViewColumn}
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setColumnDragFunction: func userData: userData destroy: destroy
    <cCall: 'gtk_tree_view_set_column_drag_function' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
scrollToPoint: treeX treeY: treeY
    <cCall: 'gtk_tree_view_scroll_to_point' returning: #void
	args: #( #self #int #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
scrollToCell: path column: column useAlign: useAlign rowAlign: rowAlign colAlign: colAlign
    <cCall: 'gtk_tree_view_scroll_to_cell' returning: #void
	args: #( #self #cObject #cObject #boolean #float #float )>! !

!GtkTreeView methodsFor: 'C call-outs'!
rowActivated: path column: column
    <cCall: 'gtk_tree_view_row_activated' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
expandAll
    <cCall: 'gtk_tree_view_expand_all' returning: #void
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
collapseAll
    <cCall: 'gtk_tree_view_collapse_all' returning: #void
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
expandToPath: path
    <cCall: 'gtk_tree_view_expand_to_path' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
expandRow: path openAll: openAll
    <cCall: 'gtk_tree_view_expand_row' returning: #boolean
	args: #( #self #cObject #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
collapseRow: path
    <cCall: 'gtk_tree_view_collapse_row' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
mapExpandedRows: func data: data
    <cCall: 'gtk_tree_view_map_expanded_rows' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
rowExpanded: path
    <cCall: 'gtk_tree_view_row_expanded' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setReorderable: reorderable
    <cCall: 'gtk_tree_view_set_reorderable' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getReorderable
    <cCall: 'gtk_tree_view_get_reorderable' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setCursor: path focusColumn: focusColumn startEditing: startEditing
    <cCall: 'gtk_tree_view_set_cursor' returning: #void
	args: #( #self #cObject #cObject #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setCursorOnCell: path focusColumn: focusColumn focusCell: focusCell startEditing: startEditing
    <cCall: 'gtk_tree_view_set_cursor_on_cell' returning: #void
	args: #( #self #cObject #cObject #cObject #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getCursor: path focusColumn: focusColumn
    <cCall: 'gtk_tree_view_get_cursor' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getBinWindow
    <cCall: 'gtk_tree_view_get_bin_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getPathAtPos: x y: y path: path column: column cellX: cellX cellY: cellY
    <cCall: 'gtk_tree_view_get_path_at_pos' returning: #boolean
	args: #( #self #int #int #cObject #cObject #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getCellArea: path column: column rect: rect
    <cCall: 'gtk_tree_view_get_cell_area' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getBackgroundArea: path column: column rect: rect
    <cCall: 'gtk_tree_view_get_background_area' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getVisibleRect: visibleRect
    <cCall: 'gtk_tree_view_get_visible_rect' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getVisibleRange: startPath endPath: endPath
    <cCall: 'gtk_tree_view_get_visible_range' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
enableModelDragSource: startButtonMask targets: targets nTargets: nTargets actions: actions
    <cCall: 'gtk_tree_view_enable_model_drag_source' returning: #void
	args: #( #self #int #cObject #int #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
enableModelDragDest: targets nTargets: nTargets actions: actions
    <cCall: 'gtk_tree_view_enable_model_drag_dest' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
unsetRowsDragSource
    <cCall: 'gtk_tree_view_unset_rows_drag_source' returning: #void
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
unsetRowsDragDest
    <cCall: 'gtk_tree_view_unset_rows_drag_dest' returning: #void
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setDragDestRow: path pos: pos
    <cCall: 'gtk_tree_view_set_drag_dest_row' returning: #void
	args: #( #self #cObject #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getDragDestRow: path pos: pos
    <cCall: 'gtk_tree_view_get_drag_dest_row' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getDestRowAtPos: dragX dragY: dragY path: path pos: pos
    <cCall: 'gtk_tree_view_get_dest_row_at_pos' returning: #boolean
	args: #( #self #int #int #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
createRowDragIcon: path
    <cCall: 'gtk_tree_view_create_row_drag_icon' returning: #{GdkPixmap}
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setEnableSearch: enableSearch
    <cCall: 'gtk_tree_view_set_enable_search' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getEnableSearch
    <cCall: 'gtk_tree_view_get_enable_search' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getSearchColumn
    <cCall: 'gtk_tree_view_get_search_column' returning: #int
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setSearchColumn: column
    <cCall: 'gtk_tree_view_set_search_column' returning: #void
	args: #( #self #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getSearchEqualFunc
    <cCall: 'gtk_tree_view_get_search_equal_func' returning: #int
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setSearchEqualFunc: searchEqualFunc searchUserData: searchUserData searchDestroy: searchDestroy
    <cCall: 'gtk_tree_view_set_search_equal_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getSearchEntry
    <cCall: 'gtk_tree_view_get_search_entry' returning: #{GtkEntry}
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setSearchEntry: entry
    <cCall: 'gtk_tree_view_set_search_entry' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getSearchPositionFunc
    <cCall: 'gtk_tree_view_get_search_position_func' returning: #int
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setSearchPositionFunc: func data: data destroy: destroy
    <cCall: 'gtk_tree_view_set_search_position_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
convertWidgetToTreeCoords: wx wy: wy tx: tx ty: ty
    <cCall: 'gtk_tree_view_convert_widget_to_tree_coords' returning: #void
	args: #( #self #int #int #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
convertTreeToWidgetCoords: tx ty: ty wx: wx wy: wy
    <cCall: 'gtk_tree_view_convert_tree_to_widget_coords' returning: #void
	args: #( #self #int #int #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
convertWidgetToBinWindowCoords: wx wy: wy bx: bx by: by
    <cCall: 'gtk_tree_view_convert_widget_to_bin_window_coords' returning: #void
	args: #( #self #int #int #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
convertBinWindowToWidgetCoords: bx by: by wx: wx wy: wy
    <cCall: 'gtk_tree_view_convert_bin_window_to_widget_coords' returning: #void
	args: #( #self #int #int #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
convertTreeToBinWindowCoords: tx ty: ty bx: bx by: by
    <cCall: 'gtk_tree_view_convert_tree_to_bin_window_coords' returning: #void
	args: #( #self #int #int #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
convertBinWindowToTreeCoords: bx by: by tx: tx ty: ty
    <cCall: 'gtk_tree_view_convert_bin_window_to_tree_coords' returning: #void
	args: #( #self #int #int #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setDestroyCountFunc: func data: data destroy: destroy
    <cCall: 'gtk_tree_view_set_destroy_count_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setFixedHeightMode: enable
    <cCall: 'gtk_tree_view_set_fixed_height_mode' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getFixedHeightMode
    <cCall: 'gtk_tree_view_get_fixed_height_mode' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setHoverSelection: hover
    <cCall: 'gtk_tree_view_set_hover_selection' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getHoverSelection
    <cCall: 'gtk_tree_view_get_hover_selection' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setHoverExpand: expand
    <cCall: 'gtk_tree_view_set_hover_expand' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getHoverExpand
    <cCall: 'gtk_tree_view_get_hover_expand' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setRubberBanding: enable
    <cCall: 'gtk_tree_view_set_rubber_banding' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getRubberBanding
    <cCall: 'gtk_tree_view_get_rubber_banding' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
isRubberBandingActive
    <cCall: 'gtk_tree_view_is_rubber_banding_active' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getRowSeparatorFunc
    <cCall: 'gtk_tree_view_get_row_separator_func' returning: #int
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setRowSeparatorFunc: func data: data destroy: destroy
    <cCall: 'gtk_tree_view_set_row_separator_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getGridLines
    <cCall: 'gtk_tree_view_get_grid_lines' returning: #int
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setGridLines: gridLines
    <cCall: 'gtk_tree_view_set_grid_lines' returning: #void
	args: #( #self #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getEnableTreeLines
    <cCall: 'gtk_tree_view_get_enable_tree_lines' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setEnableTreeLines: enabled
    <cCall: 'gtk_tree_view_set_enable_tree_lines' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setShowExpanders: enabled
    <cCall: 'gtk_tree_view_set_show_expanders' returning: #void
	args: #( #self #boolean )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getShowExpanders
    <cCall: 'gtk_tree_view_get_show_expanders' returning: #boolean
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setLevelIndentation: indentation
    <cCall: 'gtk_tree_view_set_level_indentation' returning: #void
	args: #( #self #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getLevelIndentation
    <cCall: 'gtk_tree_view_get_level_indentation' returning: #int
	args: #( #self )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setTooltipRow: tooltip path: path
    <cCall: 'gtk_tree_view_set_tooltip_row' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setTooltipCell: tooltip path: path column: column cell: cell
    <cCall: 'gtk_tree_view_set_tooltip_cell' returning: #void
	args: #( #self #cObject #cObject #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getTooltipContext: x y: y keyboardTip: keyboardTip model: model path: path iter: iter
    <cCall: 'gtk_tree_view_get_tooltip_context' returning: #boolean
	args: #( #self #cObject #cObject #boolean #cObject #cObject #cObject )>! !

!GtkTreeView methodsFor: 'C call-outs'!
setTooltipColumn: column
    <cCall: 'gtk_tree_view_set_tooltip_column' returning: #void
	args: #( #self #int )>! !

!GtkTreeView methodsFor: 'C call-outs'!
getTooltipColumn
    <cCall: 'gtk_tree_view_get_tooltip_column' returning: #int
	args: #( #self )>! !

!GtkComboBox class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_combo_box_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkComboBox!

!GtkComboBox class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_combo_box_new' returning: #{GtkComboBox}
	args: #( )>! !

!GtkComboBox class methodsFor: 'C call-outs'!
newWithEntry
    <cCall: 'gtk_combo_box_new_with_entry' returning: #{GtkComboBox}
	args: #( )>! !

!GtkComboBox class methodsFor: 'C call-outs'!
newWithModel: model
    <cCall: 'gtk_combo_box_new_with_model' returning: #{GtkComboBox}
	args: #( #cObject )>! !

!GtkComboBox class methodsFor: 'C call-outs'!
newWithModelAndEntry: model
    <cCall: 'gtk_combo_box_new_with_model_and_entry' returning: #{GtkComboBox}
	args: #( #cObject )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getWrapWidth
    <cCall: 'gtk_combo_box_get_wrap_width' returning: #int
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setWrapWidth: width
    <cCall: 'gtk_combo_box_set_wrap_width' returning: #void
	args: #( #self #int )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getRowSpanColumn
    <cCall: 'gtk_combo_box_get_row_span_column' returning: #int
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setRowSpanColumn: rowSpan
    <cCall: 'gtk_combo_box_set_row_span_column' returning: #void
	args: #( #self #int )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getColumnSpanColumn
    <cCall: 'gtk_combo_box_get_column_span_column' returning: #int
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setColumnSpanColumn: columnSpan
    <cCall: 'gtk_combo_box_set_column_span_column' returning: #void
	args: #( #self #int )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getAddTearoffs
    <cCall: 'gtk_combo_box_get_add_tearoffs' returning: #boolean
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setAddTearoffs: addTearoffs
    <cCall: 'gtk_combo_box_set_add_tearoffs' returning: #void
	args: #( #self #boolean )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setTitle: title
    <cCall: 'gtk_combo_box_set_title' returning: #void
	args: #( #self #string )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getFocusOnClick
    <cCall: 'gtk_combo_box_get_focus_on_click' returning: #boolean
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setFocusOnClick: focusOnClick
    <cCall: 'gtk_combo_box_set_focus_on_click' returning: #void
	args: #( #self #boolean )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getActive
    <cCall: 'gtk_combo_box_get_active' returning: #int
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setActive: index
    <cCall: 'gtk_combo_box_set_active' returning: #void
	args: #( #self #int )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getActiveIter: iter
    <cCall: 'gtk_combo_box_get_active_iter' returning: #boolean
	args: #( #self #cObject )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setActiveIter: iter
    <cCall: 'gtk_combo_box_set_active_iter' returning: #void
	args: #( #self #cObject )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setModel: model
    <cCall: 'gtk_combo_box_set_model' returning: #void
	args: #( #self #cObject )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getModel
    <cCall: 'gtk_combo_box_get_model' returning: #{GtkTreeModel}
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getRowSeparatorFunc
    <cCall: 'gtk_combo_box_get_row_separator_func' returning: #int
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setRowSeparatorFunc: func data: data destroy: destroy
    <cCall: 'gtk_combo_box_set_row_separator_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setButtonSensitivity: sensitivity
    <cCall: 'gtk_combo_box_set_button_sensitivity' returning: #void
	args: #( #self #int )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getButtonSensitivity
    <cCall: 'gtk_combo_box_get_button_sensitivity' returning: #int
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getHasEntry
    <cCall: 'gtk_combo_box_get_has_entry' returning: #boolean
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
setEntryTextColumn: textColumn
    <cCall: 'gtk_combo_box_set_entry_text_column' returning: #void
	args: #( #self #int )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getEntryTextColumn
    <cCall: 'gtk_combo_box_get_entry_text_column' returning: #int
	args: #( #self )>! !

!GtkComboBox class methodsFor: 'C call-outs'!
newText
    <cCall: 'gtk_combo_box_new_text' returning: #{GtkComboBox}
	args: #( )>! !

!GtkComboBox methodsFor: 'C call-outs'!
appendText: text
    <cCall: 'gtk_combo_box_append_text' returning: #void
	args: #( #self #string )>! !

!GtkComboBox methodsFor: 'C call-outs'!
insertText: position text: text
    <cCall: 'gtk_combo_box_insert_text' returning: #void
	args: #( #self #int #string )>! !

!GtkComboBox methodsFor: 'C call-outs'!
prependText: text
    <cCall: 'gtk_combo_box_prepend_text' returning: #void
	args: #( #self #string )>! !

!GtkComboBox methodsFor: 'C call-outs'!
removeText: position
    <cCall: 'gtk_combo_box_remove_text' returning: #void
	args: #( #self #int )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getActiveText
    <cCall: 'gtk_combo_box_get_active_text' returning: #string
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
popup
    <cCall: 'gtk_combo_box_popup' returning: #void
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
popdown
    <cCall: 'gtk_combo_box_popdown' returning: #void
	args: #( #self )>! !

!GtkComboBox methodsFor: 'C call-outs'!
getPopupAccessible
    <cCall: 'gtk_combo_box_get_popup_accessible' returning: #{AtkObject}
	args: #( #self )>! !

!GtkComboBoxText class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_combo_box_text_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkComboBoxText!

!GtkComboBoxText class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_combo_box_text_new' returning: #{GtkComboBoxText}
	args: #( )>! !

!GtkComboBoxText class methodsFor: 'C call-outs'!
newWithEntry
    <cCall: 'gtk_combo_box_text_new_with_entry' returning: #{GtkComboBoxText}
	args: #( )>! !

!GtkComboBoxText methodsFor: 'C call-outs'!
appendText: text
    <cCall: 'gtk_combo_box_text_append_text' returning: #void
	args: #( #self #string )>! !

!GtkComboBoxText methodsFor: 'C call-outs'!
insertText: position text: text
    <cCall: 'gtk_combo_box_text_insert_text' returning: #void
	args: #( #self #int #string )>! !

!GtkComboBoxText methodsFor: 'C call-outs'!
prependText: text
    <cCall: 'gtk_combo_box_text_prepend_text' returning: #void
	args: #( #self #string )>! !

!GtkComboBoxText methodsFor: 'C call-outs'!
remove: position
    <cCall: 'gtk_combo_box_text_remove' returning: #void
	args: #( #self #int )>! !

!GtkComboBoxText methodsFor: 'C call-outs'!
getActiveText
    <cCall: 'gtk_combo_box_text_get_active_text' returning: #string
	args: #( #self )>! !

!GtkDrawingArea class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_drawing_area_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkDrawingArea!

!GtkDrawingArea class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_drawing_area_new' returning: #{GtkDrawingArea}
	args: #( )>! !

!GtkEventBox class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_event_box_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkEventBox!

!GtkEventBox class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_event_box_new' returning: #{GtkEventBox}
	args: #( )>! !

!GtkEventBox methodsFor: 'C call-outs'!
getVisibleWindow
    <cCall: 'gtk_event_box_get_visible_window' returning: #boolean
	args: #( #self )>! !

!GtkEventBox methodsFor: 'C call-outs'!
setVisibleWindow: visibleWindow
    <cCall: 'gtk_event_box_set_visible_window' returning: #void
	args: #( #self #boolean )>! !

!GtkEventBox methodsFor: 'C call-outs'!
getAboveChild
    <cCall: 'gtk_event_box_get_above_child' returning: #boolean
	args: #( #self )>! !

!GtkEventBox methodsFor: 'C call-outs'!
setAboveChild: aboveChild
    <cCall: 'gtk_event_box_set_above_child' returning: #void
	args: #( #self #boolean )>! !

!GtkExpander class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_expander_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkExpander!

!GtkExpander class methodsFor: 'C call-outs'!
new: label
    <cCall: 'gtk_expander_new' returning: #{GtkExpander}
	args: #( #string )>! !

!GtkExpander class methodsFor: 'C call-outs'!
newWithMnemonic: label
    <cCall: 'gtk_expander_new_with_mnemonic' returning: #{GtkExpander}
	args: #( #string )>! !

!GtkExpander methodsFor: 'C call-outs'!
setExpanded: expanded
    <cCall: 'gtk_expander_set_expanded' returning: #void
	args: #( #self #boolean )>! !

!GtkExpander methodsFor: 'C call-outs'!
getExpanded
    <cCall: 'gtk_expander_get_expanded' returning: #boolean
	args: #( #self )>! !

!GtkExpander methodsFor: 'C call-outs'!
setSpacing: spacing
    <cCall: 'gtk_expander_set_spacing' returning: #void
	args: #( #self #int )>! !

!GtkExpander methodsFor: 'C call-outs'!
getSpacing
    <cCall: 'gtk_expander_get_spacing' returning: #int
	args: #( #self )>! !

!GtkExpander methodsFor: 'C call-outs'!
setLabel: label
    <cCall: 'gtk_expander_set_label' returning: #void
	args: #( #self #string )>! !

!GtkExpander methodsFor: 'C call-outs'!
setUseUnderline: useUnderline
    <cCall: 'gtk_expander_set_use_underline' returning: #void
	args: #( #self #boolean )>! !

!GtkExpander methodsFor: 'C call-outs'!
getUseUnderline
    <cCall: 'gtk_expander_get_use_underline' returning: #boolean
	args: #( #self )>! !

!GtkExpander methodsFor: 'C call-outs'!
setUseMarkup: useMarkup
    <cCall: 'gtk_expander_set_use_markup' returning: #void
	args: #( #self #boolean )>! !

!GtkExpander methodsFor: 'C call-outs'!
getUseMarkup
    <cCall: 'gtk_expander_get_use_markup' returning: #boolean
	args: #( #self )>! !

!GtkExpander methodsFor: 'C call-outs'!
setLabelWidget: labelWidget
    <cCall: 'gtk_expander_set_label_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkExpander methodsFor: 'C call-outs'!
getLabelWidget
    <cCall: 'gtk_expander_get_label_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkExpander methodsFor: 'C call-outs'!
setLabelFill: labelFill
    <cCall: 'gtk_expander_set_label_fill' returning: #void
	args: #( #self #boolean )>! !

!GtkExpander methodsFor: 'C call-outs'!
getLabelFill
    <cCall: 'gtk_expander_get_label_fill' returning: #boolean
	args: #( #self )>! !

!GtkFixed class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_fixed_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkFixed!

!GtkFixed class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_fixed_new' returning: #{GtkFixed}
	args: #( )>! !

!GtkFixed methodsFor: 'C call-outs'!
put: widget x: x y: y
    <cCall: 'gtk_fixed_put' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkFixed methodsFor: 'C call-outs'!
move: widget x: x y: y
    <cCall: 'gtk_fixed_move' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkFileFilter class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_file_filter_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkFileFilter!

!GtkFileFilter class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_file_filter_new' returning: #{GtkFileFilter}
	args: #( )>! !

!GtkFileFilter methodsFor: 'C call-outs'!
setName: name
    <cCall: 'gtk_file_filter_set_name' returning: #void
	args: #( #self #string )>! !

!GtkFileFilter methodsFor: 'C call-outs'!
addMimeType: mimeType
    <cCall: 'gtk_file_filter_add_mime_type' returning: #void
	args: #( #self #string )>! !

!GtkFileFilter methodsFor: 'C call-outs'!
addPattern: pattern
    <cCall: 'gtk_file_filter_add_pattern' returning: #void
	args: #( #self #string )>! !

!GtkFileFilter methodsFor: 'C call-outs'!
addPixbufFormats
    <cCall: 'gtk_file_filter_add_pixbuf_formats' returning: #void
	args: #( #self )>! !

!GtkFileFilter methodsFor: 'C call-outs'!
addCustom: needed func: func data: data notify: notify
    <cCall: 'gtk_file_filter_add_custom' returning: #void
	args: #( #self #int #cObject #cObject #int )>! !

!GtkFileFilter methodsFor: 'C call-outs'!
getNeeded
    <cCall: 'gtk_file_filter_get_needed' returning: #int
	args: #( #self )>! !

!GtkFileFilter methodsFor: 'C call-outs'!
filter: filterInfo
    <cCall: 'gtk_file_filter_filter' returning: #boolean
	args: #( #self #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_file_chooser_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkFileChooserDialog!

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setAction: chooser action: action
    <cCall: 'gtk_file_chooser_set_action' returning: #void
	args: #( #cObject #int )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getAction: chooser
    <cCall: 'gtk_file_chooser_get_action' returning: #int
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setLocalOnly: chooser localOnly: localOnly
    <cCall: 'gtk_file_chooser_set_local_only' returning: #void
	args: #( #cObject #boolean )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getLocalOnly: chooser
    <cCall: 'gtk_file_chooser_get_local_only' returning: #boolean
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setSelectMultiple: chooser selectMultiple: selectMultiple
    <cCall: 'gtk_file_chooser_set_select_multiple' returning: #void
	args: #( #cObject #boolean )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getSelectMultiple: chooser
    <cCall: 'gtk_file_chooser_get_select_multiple' returning: #boolean
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setShowHidden: chooser showHidden: showHidden
    <cCall: 'gtk_file_chooser_set_show_hidden' returning: #void
	args: #( #cObject #boolean )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getShowHidden: chooser
    <cCall: 'gtk_file_chooser_get_show_hidden' returning: #boolean
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setDoOverwriteConfirmation: chooser doOverwriteConfirmation: doOverwriteConfirmation
    <cCall: 'gtk_file_chooser_set_do_overwrite_confirmation' returning: #void
	args: #( #cObject #boolean )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getDoOverwriteConfirmation: chooser
    <cCall: 'gtk_file_chooser_get_do_overwrite_confirmation' returning: #boolean
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setCreateFolders: chooser createFolders: createFolders
    <cCall: 'gtk_file_chooser_set_create_folders' returning: #void
	args: #( #cObject #boolean )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getCreateFolders: chooser
    <cCall: 'gtk_file_chooser_get_create_folders' returning: #boolean
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setCurrentName: chooser name: name
    <cCall: 'gtk_file_chooser_set_current_name' returning: #void
	args: #( #cObject #string )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getFilename: chooser
    <cCall: 'gtk_file_chooser_get_filename' returning: #string
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setFilename: chooser filename: filename
    <cCall: 'gtk_file_chooser_set_filename' returning: #boolean
	args: #( #cObject #string )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
selectFilename: chooser filename: filename
    <cCall: 'gtk_file_chooser_select_filename' returning: #boolean
	args: #( #cObject #string )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
unselectFilename: chooser filename: filename
    <cCall: 'gtk_file_chooser_unselect_filename' returning: #void
	args: #( #cObject #string )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
selectAll: chooser
    <cCall: 'gtk_file_chooser_select_all' returning: #void
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
unselectAll: chooser
    <cCall: 'gtk_file_chooser_unselect_all' returning: #void
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getFilenames: chooser
    <cCall: 'gtk_file_chooser_get_filenames' returning: #{GSList}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setCurrentFolder: chooser filename: filename
    <cCall: 'gtk_file_chooser_set_current_folder' returning: #boolean
	args: #( #cObject #string )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getCurrentFolder: chooser
    <cCall: 'gtk_file_chooser_get_current_folder' returning: #string
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getUri: chooser
    <cCall: 'gtk_file_chooser_get_uri' returning: #string
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setUri: chooser uri: uri
    <cCall: 'gtk_file_chooser_set_uri' returning: #boolean
	args: #( #cObject #string )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
selectUri: chooser uri: uri
    <cCall: 'gtk_file_chooser_select_uri' returning: #boolean
	args: #( #cObject #string )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
unselectUri: chooser uri: uri
    <cCall: 'gtk_file_chooser_unselect_uri' returning: #void
	args: #( #cObject #string )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getUris: chooser
    <cCall: 'gtk_file_chooser_get_uris' returning: #{GSList}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setCurrentFolderUri: chooser uri: uri
    <cCall: 'gtk_file_chooser_set_current_folder_uri' returning: #boolean
	args: #( #cObject #string )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getCurrentFolderUri: chooser
    <cCall: 'gtk_file_chooser_get_current_folder_uri' returning: #string
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getFile: chooser
    <cCall: 'gtk_file_chooser_get_file' returning: #{GFile}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setFile: chooser file: file error: error
    <cCall: 'gtk_file_chooser_set_file' returning: #boolean
	args: #( #cObject #cObject #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
selectFile: chooser file: file error: error
    <cCall: 'gtk_file_chooser_select_file' returning: #boolean
	args: #( #cObject #cObject #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
unselectFile: chooser file: file
    <cCall: 'gtk_file_chooser_unselect_file' returning: #void
	args: #( #cObject #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getFiles: chooser
    <cCall: 'gtk_file_chooser_get_files' returning: #{GSList}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setCurrentFolderFile: chooser file: file error: error
    <cCall: 'gtk_file_chooser_set_current_folder_file' returning: #boolean
	args: #( #cObject #cObject #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getCurrentFolderFile: chooser
    <cCall: 'gtk_file_chooser_get_current_folder_file' returning: #{GFile}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setPreviewWidget: chooser previewWidget: previewWidget
    <cCall: 'gtk_file_chooser_set_preview_widget' returning: #void
	args: #( #cObject #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getPreviewWidget: chooser
    <cCall: 'gtk_file_chooser_get_preview_widget' returning: #{GtkWidget}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setPreviewWidgetActive: chooser active: active
    <cCall: 'gtk_file_chooser_set_preview_widget_active' returning: #void
	args: #( #cObject #boolean )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getPreviewWidgetActive: chooser
    <cCall: 'gtk_file_chooser_get_preview_widget_active' returning: #boolean
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setUsePreviewLabel: chooser useLabel: useLabel
    <cCall: 'gtk_file_chooser_set_use_preview_label' returning: #void
	args: #( #cObject #boolean )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getUsePreviewLabel: chooser
    <cCall: 'gtk_file_chooser_get_use_preview_label' returning: #boolean
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getPreviewFilename: chooser
    <cCall: 'gtk_file_chooser_get_preview_filename' returning: #string
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getPreviewUri: chooser
    <cCall: 'gtk_file_chooser_get_preview_uri' returning: #string
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getPreviewFile: chooser
    <cCall: 'gtk_file_chooser_get_preview_file' returning: #{GFile}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setExtraWidget: chooser extraWidget: extraWidget
    <cCall: 'gtk_file_chooser_set_extra_widget' returning: #void
	args: #( #cObject #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getExtraWidget: chooser
    <cCall: 'gtk_file_chooser_get_extra_widget' returning: #{GtkWidget}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
addFilter: chooser filter: filter
    <cCall: 'gtk_file_chooser_add_filter' returning: #void
	args: #( #cObject #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
removeFilter: chooser filter: filter
    <cCall: 'gtk_file_chooser_remove_filter' returning: #void
	args: #( #cObject #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
listFilters: chooser
    <cCall: 'gtk_file_chooser_list_filters' returning: #{GSList}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
setFilter: chooser filter: filter
    <cCall: 'gtk_file_chooser_set_filter' returning: #void
	args: #( #cObject #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getFilter: chooser
    <cCall: 'gtk_file_chooser_get_filter' returning: #{GtkFileFilter}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
addShortcutFolder: chooser folder: folder error: error
    <cCall: 'gtk_file_chooser_add_shortcut_folder' returning: #boolean
	args: #( #cObject #string #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
removeShortcutFolder: chooser folder: folder error: error
    <cCall: 'gtk_file_chooser_remove_shortcut_folder' returning: #boolean
	args: #( #cObject #string #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
listShortcutFolders: chooser
    <cCall: 'gtk_file_chooser_list_shortcut_folders' returning: #{GSList}
	args: #( #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
addShortcutFolderUri: chooser uri: uri error: error
    <cCall: 'gtk_file_chooser_add_shortcut_folder_uri' returning: #boolean
	args: #( #cObject #string #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
removeShortcutFolderUri: chooser uri: uri error: error
    <cCall: 'gtk_file_chooser_remove_shortcut_folder_uri' returning: #boolean
	args: #( #cObject #string #cObject )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
listShortcutFolderUris: chooser
    <cCall: 'gtk_file_chooser_list_shortcut_folder_uris' returning: #{GSList}
	args: #( #cObject )>! !

!GtkHBox class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_hbox_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkHBox!

!GtkHBox class methodsFor: 'C call-outs'!
new: homogeneous spacing: spacing
    <cCall: 'gtk_hbox_new' returning: #{GtkHBox}
	args: #( #boolean #int )>! !

!GtkFileChooserButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_file_chooser_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkFileChooserButton!

!GtkFileChooserButton class methodsFor: 'C call-outs'!
new: title action: action
    <cCall: 'gtk_file_chooser_button_new' returning: #{GtkFileChooserButton}
	args: #( #string #int )>! !

!GtkFileChooserButton class methodsFor: 'C call-outs'!
newWithDialog: dialog
    <cCall: 'gtk_file_chooser_button_new_with_dialog' returning: #{GtkFileChooserButton}
	args: #( #cObject )>! !

!GtkFileChooserButton methodsFor: 'C call-outs'!
setTitle: title
    <cCall: 'gtk_file_chooser_button_set_title' returning: #void
	args: #( #self #string )>! !

!GtkFileChooserButton methodsFor: 'C call-outs'!
getWidthChars
    <cCall: 'gtk_file_chooser_button_get_width_chars' returning: #int
	args: #( #self )>! !

!GtkFileChooserButton methodsFor: 'C call-outs'!
setWidthChars: nChars
    <cCall: 'gtk_file_chooser_button_set_width_chars' returning: #void
	args: #( #self #int )>! !

!GtkFileChooserButton methodsFor: 'C call-outs'!
getFocusOnClick
    <cCall: 'gtk_file_chooser_button_get_focus_on_click' returning: #boolean
	args: #( #self )>! !

!GtkFileChooserButton methodsFor: 'C call-outs'!
setFocusOnClick: focusOnClick
    <cCall: 'gtk_file_chooser_button_set_focus_on_click' returning: #void
	args: #( #self #boolean )>! !

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_file_chooser_dialog_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkFileChooserDialog!

!GtkFileChooserDialog class methodsFor: 'C call-outs'!
new: title parent: parent action: action varargs: varargs
    <cCall: 'gtk_file_chooser_dialog_new' returning: #{GtkFileChooserDialog}
	args: #( #string #cObject #int #variadic )>! !

!GtkFileChooserWidget class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_file_chooser_widget_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkFileChooserWidget!

!GtkFileChooserWidget class methodsFor: 'C call-outs'!
new: action
    <cCall: 'gtk_file_chooser_widget_new' returning: #{GtkFileChooserWidget}
	args: #( #int )>! !

!GtkFontButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_font_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkFontButton!

!GtkFontButton class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_font_button_new' returning: #{GtkFontButton}
	args: #( )>! !

!GtkFontButton class methodsFor: 'C call-outs'!
newWithFont: fontname
    <cCall: 'gtk_font_button_new_with_font' returning: #{GtkFontButton}
	args: #( #string )>! !

!GtkFontButton methodsFor: 'C call-outs'!
setTitle: title
    <cCall: 'gtk_font_button_set_title' returning: #void
	args: #( #self #string )>! !

!GtkFontButton methodsFor: 'C call-outs'!
getUseFont
    <cCall: 'gtk_font_button_get_use_font' returning: #boolean
	args: #( #self )>! !

!GtkFontButton methodsFor: 'C call-outs'!
setUseFont: useFont
    <cCall: 'gtk_font_button_set_use_font' returning: #void
	args: #( #self #boolean )>! !

!GtkFontButton methodsFor: 'C call-outs'!
getUseSize
    <cCall: 'gtk_font_button_get_use_size' returning: #boolean
	args: #( #self )>! !

!GtkFontButton methodsFor: 'C call-outs'!
setUseSize: useSize
    <cCall: 'gtk_font_button_set_use_size' returning: #void
	args: #( #self #boolean )>! !

!GtkFontButton methodsFor: 'C call-outs'!
setFontName: fontname
    <cCall: 'gtk_font_button_set_font_name' returning: #boolean
	args: #( #self #string )>! !

!GtkFontButton methodsFor: 'C call-outs'!
getShowStyle
    <cCall: 'gtk_font_button_get_show_style' returning: #boolean
	args: #( #self )>! !

!GtkFontButton methodsFor: 'C call-outs'!
setShowStyle: showStyle
    <cCall: 'gtk_font_button_set_show_style' returning: #void
	args: #( #self #boolean )>! !

!GtkFontButton methodsFor: 'C call-outs'!
getShowSize
    <cCall: 'gtk_font_button_get_show_size' returning: #boolean
	args: #( #self )>! !

!GtkFontButton methodsFor: 'C call-outs'!
setShowSize: showSize
    <cCall: 'gtk_font_button_set_show_size' returning: #void
	args: #( #self #boolean )>! !

!GtkFontSelection class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_font_selection_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkFontSelection!

!GtkFontSelection class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_font_selection_new' returning: #{GtkFontSelection}
	args: #( )>! !

!GtkFontSelection methodsFor: 'C call-outs'!
getFamilyList
    <cCall: 'gtk_font_selection_get_family_list' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkFontSelection methodsFor: 'C call-outs'!
getFaceList
    <cCall: 'gtk_font_selection_get_face_list' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkFontSelection methodsFor: 'C call-outs'!
getSizeEntry
    <cCall: 'gtk_font_selection_get_size_entry' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkFontSelection methodsFor: 'C call-outs'!
getSizeList
    <cCall: 'gtk_font_selection_get_size_list' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkFontSelection methodsFor: 'C call-outs'!
getPreviewEntry
    <cCall: 'gtk_font_selection_get_preview_entry' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkFontSelection methodsFor: 'C call-outs'!
getSize
    <cCall: 'gtk_font_selection_get_size' returning: #int
	args: #( #self )>! !

!GtkFontSelection methodsFor: 'C call-outs'!
getFontName
    <cCall: 'gtk_font_selection_get_font_name' returning: #string
	args: #( #self )>! !

!GtkFontSelection methodsFor: 'C call-outs'!
setFontName: fontname
    <cCall: 'gtk_font_selection_set_font_name' returning: #boolean
	args: #( #self #string )>! !

!GtkFontSelection methodsFor: 'C call-outs'!
setPreviewText: text
    <cCall: 'gtk_font_selection_set_preview_text' returning: #void
	args: #( #self #string )>! !

!GtkFontSelectionDialog class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_font_selection_dialog_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkFontSelectionDialog!

!GtkFontSelectionDialog class methodsFor: 'C call-outs'!
new: title
    <cCall: 'gtk_font_selection_dialog_new' returning: #{GtkFontSelectionDialog}
	args: #( #string )>! !

!GtkFontSelectionDialog methodsFor: 'C call-outs'!
getOkButton
    <cCall: 'gtk_font_selection_dialog_get_ok_button' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkFontSelectionDialog methodsFor: 'C call-outs'!
getCancelButton
    <cCall: 'gtk_font_selection_dialog_get_cancel_button' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkFontSelectionDialog methodsFor: 'C call-outs'!
getFontSelection
    <cCall: 'gtk_font_selection_dialog_get_font_selection' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkFontSelectionDialog methodsFor: 'C call-outs'!
getFontName
    <cCall: 'gtk_font_selection_dialog_get_font_name' returning: #string
	args: #( #self )>! !

!GtkFontSelectionDialog methodsFor: 'C call-outs'!
setFontName: fontname
    <cCall: 'gtk_font_selection_dialog_set_font_name' returning: #boolean
	args: #( #self #string )>! !

!GtkFontSelectionDialog methodsFor: 'C call-outs'!
setPreviewText: text
    <cCall: 'gtk_font_selection_dialog_set_preview_text' returning: #void
	args: #( #self #string )>! !

!Gtk class methodsFor: 'C call-outs'!
gcGet: depth colormap: colormap values: values valuesMask: valuesMask
    <cCall: 'gtk_gc_get' returning: #{GdkGC}
	args: #( #int #cObject #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
gcRelease: gc
    <cCall: 'gtk_gc_release' returning: #void
	args: #( #cObject )>! !

!GtkHandleBox class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_handle_box_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkHandleBox!

!GtkHandleBox class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_handle_box_new' returning: #{GtkHandleBox}
	args: #( )>! !

!GtkHandleBox methodsFor: 'C call-outs'!
setShadowType: type
    <cCall: 'gtk_handle_box_set_shadow_type' returning: #void
	args: #( #self #int )>! !

!GtkHandleBox methodsFor: 'C call-outs'!
getShadowType
    <cCall: 'gtk_handle_box_get_shadow_type' returning: #int
	args: #( #self )>! !

!GtkHandleBox methodsFor: 'C call-outs'!
setHandlePosition: position
    <cCall: 'gtk_handle_box_set_handle_position' returning: #void
	args: #( #self #int )>! !

!GtkHandleBox methodsFor: 'C call-outs'!
getHandlePosition
    <cCall: 'gtk_handle_box_get_handle_position' returning: #int
	args: #( #self )>! !

!GtkHandleBox methodsFor: 'C call-outs'!
setSnapEdge: edge
    <cCall: 'gtk_handle_box_set_snap_edge' returning: #void
	args: #( #self #int )>! !

!GtkHandleBox methodsFor: 'C call-outs'!
getSnapEdge
    <cCall: 'gtk_handle_box_get_snap_edge' returning: #int
	args: #( #self )>! !

!GtkHandleBox methodsFor: 'C call-outs'!
getChildDetached
    <cCall: 'gtk_handle_box_get_child_detached' returning: #boolean
	args: #( #self )>! !

!GtkHButtonBox class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_hbutton_box_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkHButtonBox!

!GtkHButtonBox class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_hbutton_box_new' returning: #{GtkHButtonBox}
	args: #( )>! !

!GtkPaned class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_paned_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkPaned!

!GtkPaned methodsFor: 'C call-outs'!
add1: child
    <cCall: 'gtk_paned_add1' returning: #void
	args: #( #self #cObject )>! !

!GtkPaned methodsFor: 'C call-outs'!
add2: child
    <cCall: 'gtk_paned_add2' returning: #void
	args: #( #self #cObject )>! !

!GtkPaned methodsFor: 'C call-outs'!
pack1: child resize: resize shrink: shrink
    <cCall: 'gtk_paned_pack1' returning: #void
	args: #( #self #cObject #boolean #boolean )>! !

!GtkPaned methodsFor: 'C call-outs'!
pack2: child resize: resize shrink: shrink
    <cCall: 'gtk_paned_pack2' returning: #void
	args: #( #self #cObject #boolean #boolean )>! !

!GtkPaned methodsFor: 'C call-outs'!
getPosition
    <cCall: 'gtk_paned_get_position' returning: #int
	args: #( #self )>! !

!GtkPaned methodsFor: 'C call-outs'!
setPosition: position
    <cCall: 'gtk_paned_set_position' returning: #void
	args: #( #self #int )>! !

!GtkPaned methodsFor: 'C call-outs'!
getChild1
    <cCall: 'gtk_paned_get_child1' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkPaned methodsFor: 'C call-outs'!
getChild2
    <cCall: 'gtk_paned_get_child2' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkPaned methodsFor: 'C call-outs'!
getHandleWindow
    <cCall: 'gtk_paned_get_handle_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkHPaned class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_hpaned_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkHPaned!

!GtkHPaned class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_hpaned_new' returning: #{GtkHPaned}
	args: #( )>! !

!GtkRange class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_range_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRange!

!GtkRange methodsFor: 'C call-outs'!
setAdjustment: adjustment
    <cCall: 'gtk_range_set_adjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkRange methodsFor: 'C call-outs'!
getAdjustment
    <cCall: 'gtk_range_get_adjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
setInverted: setting
    <cCall: 'gtk_range_set_inverted' returning: #void
	args: #( #self #boolean )>! !

!GtkRange methodsFor: 'C call-outs'!
getInverted
    <cCall: 'gtk_range_get_inverted' returning: #boolean
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
setFlippable: flippable
    <cCall: 'gtk_range_set_flippable' returning: #void
	args: #( #self #boolean )>! !

!GtkRange methodsFor: 'C call-outs'!
getFlippable
    <cCall: 'gtk_range_get_flippable' returning: #boolean
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
setSliderSizeFixed: sizeFixed
    <cCall: 'gtk_range_set_slider_size_fixed' returning: #void
	args: #( #self #boolean )>! !

!GtkRange methodsFor: 'C call-outs'!
getSliderSizeFixed
    <cCall: 'gtk_range_get_slider_size_fixed' returning: #boolean
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
setMinSliderSize: minSize
    <cCall: 'gtk_range_set_min_slider_size' returning: #void
	args: #( #self #boolean )>! !

!GtkRange methodsFor: 'C call-outs'!
getMinSliderSize
    <cCall: 'gtk_range_get_min_slider_size' returning: #int
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
getRangeRect: rangeRect
    <cCall: 'gtk_range_get_range_rect' returning: #void
	args: #( #self #cObject )>! !

!GtkRange methodsFor: 'C call-outs'!
getSliderRange: sliderStart sliderEnd: sliderEnd
    <cCall: 'gtk_range_get_slider_range' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkRange methodsFor: 'C call-outs'!
setLowerStepperSensitivity: sensitivity
    <cCall: 'gtk_range_set_lower_stepper_sensitivity' returning: #void
	args: #( #self #int )>! !

!GtkRange methodsFor: 'C call-outs'!
getLowerStepperSensitivity
    <cCall: 'gtk_range_get_lower_stepper_sensitivity' returning: #int
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
setUpperStepperSensitivity: sensitivity
    <cCall: 'gtk_range_set_upper_stepper_sensitivity' returning: #void
	args: #( #self #int )>! !

!GtkRange methodsFor: 'C call-outs'!
getUpperStepperSensitivity
    <cCall: 'gtk_range_get_upper_stepper_sensitivity' returning: #int
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
setIncrements: step page: page
    <cCall: 'gtk_range_set_increments' returning: #void
	args: #( #self #double #double )>! !

!GtkRange methodsFor: 'C call-outs'!
setRange: min max: max
    <cCall: 'gtk_range_set_range' returning: #void
	args: #( #self #double #double )>! !

!GtkRange methodsFor: 'C call-outs'!
setValue: value
    <cCall: 'gtk_range_set_value' returning: #void
	args: #( #self #double )>! !

!GtkRange methodsFor: 'C call-outs'!
getValue
    <cCall: 'gtk_range_get_value' returning: #double
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
setShowFillLevel: showFillLevel
    <cCall: 'gtk_range_set_show_fill_level' returning: #void
	args: #( #self #boolean )>! !

!GtkRange methodsFor: 'C call-outs'!
getShowFillLevel
    <cCall: 'gtk_range_get_show_fill_level' returning: #boolean
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
setRestrictToFillLevel: restrictToFillLevel
    <cCall: 'gtk_range_set_restrict_to_fill_level' returning: #void
	args: #( #self #boolean )>! !

!GtkRange methodsFor: 'C call-outs'!
getRestrictToFillLevel
    <cCall: 'gtk_range_get_restrict_to_fill_level' returning: #boolean
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
setFillLevel: fillLevel
    <cCall: 'gtk_range_set_fill_level' returning: #void
	args: #( #self #double )>! !

!GtkRange methodsFor: 'C call-outs'!
getFillLevel
    <cCall: 'gtk_range_get_fill_level' returning: #double
	args: #( #self )>! !

!GtkRange methodsFor: 'C call-outs'!
setRoundDigits: roundDigits
    <cCall: 'gtk_range_set_round_digits' returning: #void
	args: #( #self #int )>! !

!GtkRange methodsFor: 'C call-outs'!
getRoundDigits
    <cCall: 'gtk_range_get_round_digits' returning: #int
	args: #( #self )>! !

!GtkScale class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_scale_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkScale!

!GtkScale methodsFor: 'C call-outs'!
setDigits: digits
    <cCall: 'gtk_scale_set_digits' returning: #void
	args: #( #self #int )>! !

!GtkScale methodsFor: 'C call-outs'!
getDigits
    <cCall: 'gtk_scale_get_digits' returning: #int
	args: #( #self )>! !

!GtkScale methodsFor: 'C call-outs'!
setDrawValue: drawValue
    <cCall: 'gtk_scale_set_draw_value' returning: #void
	args: #( #self #boolean )>! !

!GtkScale methodsFor: 'C call-outs'!
getDrawValue
    <cCall: 'gtk_scale_get_draw_value' returning: #boolean
	args: #( #self )>! !

!GtkScale methodsFor: 'C call-outs'!
setValuePos: pos
    <cCall: 'gtk_scale_set_value_pos' returning: #void
	args: #( #self #int )>! !

!GtkScale methodsFor: 'C call-outs'!
getValuePos
    <cCall: 'gtk_scale_get_value_pos' returning: #int
	args: #( #self )>! !

!GtkScale methodsFor: 'C call-outs'!
getLayout
    <cCall: 'gtk_scale_get_layout' returning: #{PangoLayout}
	args: #( #self )>! !

!GtkScale methodsFor: 'C call-outs'!
getLayoutOffsets: x y: y
    <cCall: 'gtk_scale_get_layout_offsets' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkScale methodsFor: 'C call-outs'!
addMark: value position: position markup: markup
    <cCall: 'gtk_scale_add_mark' returning: #void
	args: #( #self #double #int #string )>! !

!GtkScale methodsFor: 'C call-outs'!
clearMarks
    <cCall: 'gtk_scale_clear_marks' returning: #void
	args: #( #self )>! !

!GtkHScale class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_hscale_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkHScale!

!GtkHScale class methodsFor: 'C call-outs'!
new: adjustment
    <cCall: 'gtk_hscale_new' returning: #{GtkHScale}
	args: #( #cObject )>! !

!GtkHScale class methodsFor: 'C call-outs'!
newWithRange: min max: max step: step
    <cCall: 'gtk_hscale_new_with_range' returning: #{GtkHScale}
	args: #( #double #double #double )>! !

!GtkScrollbar class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_scrollbar_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkScrollbar!

!GtkHScrollbar class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_hscrollbar_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkHScrollbar!

!GtkHScrollbar class methodsFor: 'C call-outs'!
new: adjustment
    <cCall: 'gtk_hscrollbar_new' returning: #{GtkHScrollbar}
	args: #( #cObject )>! !

!GtkSeparator class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_separator_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkSeparator!

!GtkHSeparator class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_hseparator_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkHSeparator!

!GtkHSeparator class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_hseparator_new' returning: #{GtkHSeparator}
	args: #( )>! !

!GtkHSV class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_hsv_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkHSV!

!GtkHSV class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_hsv_new' returning: #{GtkHSV}
	args: #( )>! !

!GtkHSV methodsFor: 'C call-outs'!
setColor: h s: s v: v
    <cCall: 'gtk_hsv_set_color' returning: #void
	args: #( #self #double #double #double )>! !

!GtkHSV methodsFor: 'C call-outs'!
getColor: h s: s v: v
    <cCall: 'gtk_hsv_get_color' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkHSV methodsFor: 'C call-outs'!
setMetrics: size ringWidth: ringWidth
    <cCall: 'gtk_hsv_set_metrics' returning: #void
	args: #( #self #int #int )>! !

!GtkHSV methodsFor: 'C call-outs'!
getMetrics: size ringWidth: ringWidth
    <cCall: 'gtk_hsv_get_metrics' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkHSV methodsFor: 'C call-outs'!
isAdjusting
    <cCall: 'gtk_hsv_is_adjusting' returning: #boolean
	args: #( #self )>! !

!GtkHSV class methodsFor: 'C call-outs'!
toRgb: h s: s v: v r: r g: g b: b
    <cCall: 'gtk_hsv_to_rgb' returning: #void
	args: #( #double #double #double #cObject #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
rgbToHsv: r g: g b: b h: h s: s v: v
    <cCall: 'gtk_rgb_to_hsv' returning: #void
	args: #( #double #double #double #cObject #cObject #cObject )>! !

!GtkIconFactory class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_icon_factory_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkIconFactory!

!GtkIconFactory class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_icon_factory_new' returning: #{GtkIconFactory}
	args: #( )>! !

!GtkIconFactory methodsFor: 'C call-outs'!
add: stockId iconSet: iconSet
    <cCall: 'gtk_icon_factory_add' returning: #void
	args: #( #self #string #cObject )>! !

!GtkIconFactory methodsFor: 'C call-outs'!
lookup: stockId
    <cCall: 'gtk_icon_factory_lookup' returning: #{GtkIconSet}
	args: #( #self #string )>! !

!GtkIconFactory methodsFor: 'C call-outs'!
addDefault
    <cCall: 'gtk_icon_factory_add_default' returning: #void
	args: #( #self )>! !

!GtkIconFactory methodsFor: 'C call-outs'!
removeDefault
    <cCall: 'gtk_icon_factory_remove_default' returning: #void
	args: #( #self )>! !

!GtkIconFactory class methodsFor: 'C call-outs'!
lookupDefault: stockId
    <cCall: 'gtk_icon_factory_lookup_default' returning: #{GtkIconSet}
	args: #( #string )>! !

!Gtk class methodsFor: 'C call-outs'!
iconSizeLookup: size width: width height: height
    <cCall: 'gtk_icon_size_lookup' returning: #boolean
	args: #( #int #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
iconSizeLookupForSettings: settings size: size width: width height: height
    <cCall: 'gtk_icon_size_lookup_for_settings' returning: #boolean
	args: #( #cObject #int #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
iconSizeRegister: name width: width height: height
    <cCall: 'gtk_icon_size_register' returning: #int
	args: #( #string #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
iconSizeRegisterAlias: alias target: target
    <cCall: 'gtk_icon_size_register_alias' returning: #void
	args: #( #string #int )>! !

!Gtk class methodsFor: 'C call-outs'!
iconSizeFromName: name
    <cCall: 'gtk_icon_size_from_name' returning: #int
	args: #( #string )>! !

!GtkIconSet class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_icon_set_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkIconSet!

!GtkIconSet class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_icon_set_new' returning: #{GtkIconSet}
	args: #( )>! !

!GtkIconSet class methodsFor: 'C call-outs'!
newFromPixbuf: pixbuf
    <cCall: 'gtk_icon_set_new_from_pixbuf' returning: #{GtkIconSet}
	args: #( #cObject )>! !

!GtkIconSet methodsFor: 'C call-outs'!
ref
    <cCall: 'gtk_icon_set_ref' returning: #{GtkIconSet}
	args: #( #self )>! !

!GtkIconSet methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'gtk_icon_set_unref' returning: #void
	args: #( #self )>! !

!GtkIconSet methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_icon_set_copy' returning: #{GtkIconSet}
	args: #( #self )>! !

!GtkIconSet methodsFor: 'C call-outs'!
renderIcon: style direction: direction state: state size: size widget: widget detail: detail
    <cCall: 'gtk_icon_set_render_icon' returning: #{GdkPixbuf}
	args: #( #self #cObject #int #int #int #cObject #string )>! !

!GtkIconSet methodsFor: 'C call-outs'!
addSource: source
    <cCall: 'gtk_icon_set_add_source' returning: #void
	args: #( #self #cObject )>! !

!GtkIconSet methodsFor: 'C call-outs'!
getSizes: sizes nSizes: nSizes
    <cCall: 'gtk_icon_set_get_sizes' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkIconSource class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_icon_source_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkIconSource!

!GtkIconSource class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_icon_source_new' returning: #{GtkIconSource}
	args: #( )>! !

!GtkIconSource methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_icon_source_copy' returning: #{GtkIconSource}
	args: #( #self )>! !

!GtkIconSource methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_icon_source_free' returning: #void
	args: #( #self )>! !

!GtkIconSource methodsFor: 'C call-outs'!
setFilename: filename
    <cCall: 'gtk_icon_source_set_filename' returning: #void
	args: #( #self #string )>! !

!GtkIconSource methodsFor: 'C call-outs'!
setIconName: iconName
    <cCall: 'gtk_icon_source_set_icon_name' returning: #void
	args: #( #self #string )>! !

!GtkIconSource methodsFor: 'C call-outs'!
setPixbuf: pixbuf
    <cCall: 'gtk_icon_source_set_pixbuf' returning: #void
	args: #( #self #cObject )>! !

!GtkIconSource methodsFor: 'C call-outs'!
getPixbuf
    <cCall: 'gtk_icon_source_get_pixbuf' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GtkIconSource methodsFor: 'C call-outs'!
setDirectionWildcarded: setting
    <cCall: 'gtk_icon_source_set_direction_wildcarded' returning: #void
	args: #( #self #boolean )>! !

!GtkIconSource methodsFor: 'C call-outs'!
setStateWildcarded: setting
    <cCall: 'gtk_icon_source_set_state_wildcarded' returning: #void
	args: #( #self #boolean )>! !

!GtkIconSource methodsFor: 'C call-outs'!
setSizeWildcarded: setting
    <cCall: 'gtk_icon_source_set_size_wildcarded' returning: #void
	args: #( #self #boolean )>! !

!GtkIconSource methodsFor: 'C call-outs'!
getSizeWildcarded
    <cCall: 'gtk_icon_source_get_size_wildcarded' returning: #boolean
	args: #( #self )>! !

!GtkIconSource methodsFor: 'C call-outs'!
getStateWildcarded
    <cCall: 'gtk_icon_source_get_state_wildcarded' returning: #boolean
	args: #( #self )>! !

!GtkIconSource methodsFor: 'C call-outs'!
getDirectionWildcarded
    <cCall: 'gtk_icon_source_get_direction_wildcarded' returning: #boolean
	args: #( #self )>! !

!GtkIconSource methodsFor: 'C call-outs'!
setDirection: direction
    <cCall: 'gtk_icon_source_set_direction' returning: #void
	args: #( #self #int )>! !

!GtkIconSource methodsFor: 'C call-outs'!
setState: state
    <cCall: 'gtk_icon_source_set_state' returning: #void
	args: #( #self #int )>! !

!GtkIconSource methodsFor: 'C call-outs'!
setSize: size
    <cCall: 'gtk_icon_source_set_size' returning: #void
	args: #( #self #int )>! !

!GtkIconSource methodsFor: 'C call-outs'!
getDirection
    <cCall: 'gtk_icon_source_get_direction' returning: #int
	args: #( #self )>! !

!GtkIconSource methodsFor: 'C call-outs'!
getState
    <cCall: 'gtk_icon_source_get_state' returning: #int
	args: #( #self )>! !

!GtkIconSource methodsFor: 'C call-outs'!
getSize
    <cCall: 'gtk_icon_source_get_size' returning: #int
	args: #( #self )>! !

!GtkIconTheme class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_icon_theme_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkIconTheme!

!GtkIconTheme class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_icon_theme_new' returning: #{GtkIconTheme}
	args: #( )>! !

!GtkIconTheme class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'gtk_icon_theme_get_default' returning: #{GtkIconTheme}
	args: #( )>! !

!GtkIconTheme class methodsFor: 'C call-outs'!
getForScreen: screen
    <cCall: 'gtk_icon_theme_get_for_screen' returning: #{GtkIconTheme}
	args: #( #cObject )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
setScreen: screen
    <cCall: 'gtk_icon_theme_set_screen' returning: #void
	args: #( #self #cObject )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
setSearchPath: path nElements: nElements
    <cCall: 'gtk_icon_theme_set_search_path' returning: #void
	args: #( #self #cObject #int )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
getSearchPath: path nElements: nElements
    <cCall: 'gtk_icon_theme_get_search_path' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
appendSearchPath: path
    <cCall: 'gtk_icon_theme_append_search_path' returning: #void
	args: #( #self #string )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
prependSearchPath: path
    <cCall: 'gtk_icon_theme_prepend_search_path' returning: #void
	args: #( #self #string )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
setCustomTheme: themeName
    <cCall: 'gtk_icon_theme_set_custom_theme' returning: #void
	args: #( #self #string )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
hasIcon: iconName
    <cCall: 'gtk_icon_theme_has_icon' returning: #boolean
	args: #( #self #string )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
getIconSizes: iconName
    <cCall: 'gtk_icon_theme_get_icon_sizes' returning: CInt type
	args: #( #self #string )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
lookupIcon: iconName size: size flags: flags
    <cCall: 'gtk_icon_theme_lookup_icon' returning: #{GtkIconInfo}
	args: #( #self #string #int #int )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
chooseIcon: iconNames size: size flags: flags
    <cCall: 'gtk_icon_theme_choose_icon' returning: #{GtkIconInfo}
	args: #( #self #cObject #int #int )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
loadIcon: iconName size: size flags: flags error: error
    <cCall: 'gtk_icon_theme_load_icon' returning: #{GdkPixbuf}
	args: #( #self #string #int #int #cObject )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
lookupByGicon: icon size: size flags: flags
    <cCall: 'gtk_icon_theme_lookup_by_gicon' returning: #{GtkIconInfo}
	args: #( #self #cObject #int #int )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
listIcons: context
    <cCall: 'gtk_icon_theme_list_icons' returning: #{GList}
	args: #( #self #string )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
listContexts
    <cCall: 'gtk_icon_theme_list_contexts' returning: #{GList}
	args: #( #self )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
getExampleIconName
    <cCall: 'gtk_icon_theme_get_example_icon_name' returning: #string
	args: #( #self )>! !

!GtkIconTheme methodsFor: 'C call-outs'!
rescanIfNeeded
    <cCall: 'gtk_icon_theme_rescan_if_needed' returning: #boolean
	args: #( #self )>! !

!GtkIconTheme class methodsFor: 'C call-outs'!
addBuiltinIcon: iconName size: size pixbuf: pixbuf
    <cCall: 'gtk_icon_theme_add_builtin_icon' returning: #void
	args: #( #string #int #cObject )>! !

!GtkIconInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_icon_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkIconInfo!

!GtkIconInfo methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_icon_info_copy' returning: #{GtkIconInfo}
	args: #( #self )>! !

!GtkIconInfo methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_icon_info_free' returning: #void
	args: #( #self )>! !

!GtkIconInfo class methodsFor: 'C call-outs'!
newForPixbuf: iconTheme pixbuf: pixbuf
    <cCall: 'gtk_icon_info_new_for_pixbuf' returning: #{GtkIconInfo}
	args: #( #cObject #cObject )>! !

!GtkIconInfo methodsFor: 'C call-outs'!
getBaseSize
    <cCall: 'gtk_icon_info_get_base_size' returning: #int
	args: #( #self )>! !

!GtkIconInfo methodsFor: 'C call-outs'!
getBuiltinPixbuf
    <cCall: 'gtk_icon_info_get_builtin_pixbuf' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GtkIconInfo methodsFor: 'C call-outs'!
loadIcon: error
    <cCall: 'gtk_icon_info_load_icon' returning: #{GdkPixbuf}
	args: #( #self #cObject )>! !

!GtkIconInfo methodsFor: 'C call-outs'!
setRawCoordinates: rawCoordinates
    <cCall: 'gtk_icon_info_set_raw_coordinates' returning: #void
	args: #( #self #boolean )>! !

!GtkIconInfo methodsFor: 'C call-outs'!
getEmbeddedRect: rectangle
    <cCall: 'gtk_icon_info_get_embedded_rect' returning: #boolean
	args: #( #self #cObject )>! !

!GtkIconInfo methodsFor: 'C call-outs'!
getAttachPoints: points nPoints: nPoints
    <cCall: 'gtk_icon_info_get_attach_points' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTooltip class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tooltip_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTooltip!

!GtkTooltip methodsFor: 'C call-outs'!
setMarkup: markup
    <cCall: 'gtk_tooltip_set_markup' returning: #void
	args: #( #self #string )>! !

!GtkTooltip methodsFor: 'C call-outs'!
setText: text
    <cCall: 'gtk_tooltip_set_text' returning: #void
	args: #( #self #string )>! !

!GtkTooltip methodsFor: 'C call-outs'!
setIcon: pixbuf
    <cCall: 'gtk_tooltip_set_icon' returning: #void
	args: #( #self #cObject )>! !

!GtkTooltip methodsFor: 'C call-outs'!
setIconFromStock: stockId size: size
    <cCall: 'gtk_tooltip_set_icon_from_stock' returning: #void
	args: #( #self #string #int )>! !

!GtkTooltip methodsFor: 'C call-outs'!
setIconFromIconName: iconName size: size
    <cCall: 'gtk_tooltip_set_icon_from_icon_name' returning: #void
	args: #( #self #string #int )>! !

!GtkTooltip methodsFor: 'C call-outs'!
setIconFromGicon: gicon size: size
    <cCall: 'gtk_tooltip_set_icon_from_gicon' returning: #void
	args: #( #self #cObject #int )>! !

!GtkTooltip methodsFor: 'C call-outs'!
setCustom: customWidget
    <cCall: 'gtk_tooltip_set_custom' returning: #void
	args: #( #self #cObject )>! !

!GtkTooltip methodsFor: 'C call-outs'!
setTipArea: rect
    <cCall: 'gtk_tooltip_set_tip_area' returning: #void
	args: #( #self #cObject )>! !

!GtkTooltip class methodsFor: 'C call-outs'!
triggerTooltipQuery: display
    <cCall: 'gtk_tooltip_trigger_tooltip_query' returning: #void
	args: #( #cObject )>! !

!GtkIconView class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_icon_view_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkIconView!

!GtkIconView class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_icon_view_new' returning: #{GtkIconView}
	args: #( )>! !

!GtkIconView class methodsFor: 'C call-outs'!
newWithModel: model
    <cCall: 'gtk_icon_view_new_with_model' returning: #{GtkIconView}
	args: #( #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
setModel: model
    <cCall: 'gtk_icon_view_set_model' returning: #void
	args: #( #self #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
getModel
    <cCall: 'gtk_icon_view_get_model' returning: #{GtkTreeModel}
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setTextColumn: column
    <cCall: 'gtk_icon_view_set_text_column' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getTextColumn
    <cCall: 'gtk_icon_view_get_text_column' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setMarkupColumn: column
    <cCall: 'gtk_icon_view_set_markup_column' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getMarkupColumn
    <cCall: 'gtk_icon_view_get_markup_column' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setPixbufColumn: column
    <cCall: 'gtk_icon_view_set_pixbuf_column' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getPixbufColumn
    <cCall: 'gtk_icon_view_get_pixbuf_column' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setOrientation: orientation
    <cCall: 'gtk_icon_view_set_orientation' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getOrientation
    <cCall: 'gtk_icon_view_get_orientation' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setItemOrientation: orientation
    <cCall: 'gtk_icon_view_set_item_orientation' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getItemOrientation
    <cCall: 'gtk_icon_view_get_item_orientation' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setColumns: columns
    <cCall: 'gtk_icon_view_set_columns' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getColumns
    <cCall: 'gtk_icon_view_get_columns' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setItemWidth: itemWidth
    <cCall: 'gtk_icon_view_set_item_width' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getItemWidth
    <cCall: 'gtk_icon_view_get_item_width' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setSpacing: spacing
    <cCall: 'gtk_icon_view_set_spacing' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getSpacing
    <cCall: 'gtk_icon_view_get_spacing' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setRowSpacing: rowSpacing
    <cCall: 'gtk_icon_view_set_row_spacing' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getRowSpacing
    <cCall: 'gtk_icon_view_get_row_spacing' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setColumnSpacing: columnSpacing
    <cCall: 'gtk_icon_view_set_column_spacing' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getColumnSpacing
    <cCall: 'gtk_icon_view_get_column_spacing' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setMargin: margin
    <cCall: 'gtk_icon_view_set_margin' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getMargin
    <cCall: 'gtk_icon_view_get_margin' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setItemPadding: itemPadding
    <cCall: 'gtk_icon_view_set_item_padding' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getItemPadding
    <cCall: 'gtk_icon_view_get_item_padding' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
getPathAtPos: x y: y
    <cCall: 'gtk_icon_view_get_path_at_pos' returning: #{GtkTreePath}
	args: #( #self #int #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getItemAtPos: x y: y path: path cell: cell
    <cCall: 'gtk_icon_view_get_item_at_pos' returning: #boolean
	args: #( #self #int #int #cObject #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
getVisibleRange: startPath endPath: endPath
    <cCall: 'gtk_icon_view_get_visible_range' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
selectedForeach: func data: data
    <cCall: 'gtk_icon_view_selected_foreach' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
setSelectionMode: mode
    <cCall: 'gtk_icon_view_set_selection_mode' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getSelectionMode
    <cCall: 'gtk_icon_view_get_selection_mode' returning: #int
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
selectPath: path
    <cCall: 'gtk_icon_view_select_path' returning: #void
	args: #( #self #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
unselectPath: path
    <cCall: 'gtk_icon_view_unselect_path' returning: #void
	args: #( #self #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
pathIsSelected: path
    <cCall: 'gtk_icon_view_path_is_selected' returning: #boolean
	args: #( #self #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
getItemRow: path
    <cCall: 'gtk_icon_view_get_item_row' returning: #int
	args: #( #self #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
getItemColumn: path
    <cCall: 'gtk_icon_view_get_item_column' returning: #int
	args: #( #self #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
getSelectedItems
    <cCall: 'gtk_icon_view_get_selected_items' returning: #{GList}
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
selectAll
    <cCall: 'gtk_icon_view_select_all' returning: #void
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
unselectAll
    <cCall: 'gtk_icon_view_unselect_all' returning: #void
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
itemActivated: path
    <cCall: 'gtk_icon_view_item_activated' returning: #void
	args: #( #self #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
setCursor: path cell: cell startEditing: startEditing
    <cCall: 'gtk_icon_view_set_cursor' returning: #void
	args: #( #self #cObject #cObject #boolean )>! !

!GtkIconView methodsFor: 'C call-outs'!
getCursor: path cell: cell
    <cCall: 'gtk_icon_view_get_cursor' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
scrollToPath: path useAlign: useAlign rowAlign: rowAlign colAlign: colAlign
    <cCall: 'gtk_icon_view_scroll_to_path' returning: #void
	args: #( #self #cObject #boolean #float #float )>! !

!GtkIconView methodsFor: 'C call-outs'!
enableModelDragSource: startButtonMask targets: targets nTargets: nTargets actions: actions
    <cCall: 'gtk_icon_view_enable_model_drag_source' returning: #void
	args: #( #self #int #cObject #int #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
enableModelDragDest: targets nTargets: nTargets actions: actions
    <cCall: 'gtk_icon_view_enable_model_drag_dest' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
unsetModelDragSource
    <cCall: 'gtk_icon_view_unset_model_drag_source' returning: #void
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
unsetModelDragDest
    <cCall: 'gtk_icon_view_unset_model_drag_dest' returning: #void
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setReorderable: reorderable
    <cCall: 'gtk_icon_view_set_reorderable' returning: #void
	args: #( #self #boolean )>! !

!GtkIconView methodsFor: 'C call-outs'!
getReorderable
    <cCall: 'gtk_icon_view_get_reorderable' returning: #boolean
	args: #( #self )>! !

!GtkIconView methodsFor: 'C call-outs'!
setDragDestItem: path pos: pos
    <cCall: 'gtk_icon_view_set_drag_dest_item' returning: #void
	args: #( #self #cObject #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getDragDestItem: path pos: pos
    <cCall: 'gtk_icon_view_get_drag_dest_item' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
getDestItemAtPos: dragX dragY: dragY path: path pos: pos
    <cCall: 'gtk_icon_view_get_dest_item_at_pos' returning: #boolean
	args: #( #self #int #int #cObject #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
createDragIcon: path
    <cCall: 'gtk_icon_view_create_drag_icon' returning: #{GdkPixmap}
	args: #( #self #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
convertWidgetToBinWindowCoords: wx wy: wy bx: bx by: by
    <cCall: 'gtk_icon_view_convert_widget_to_bin_window_coords' returning: #void
	args: #( #self #int #int #cObject #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
setTooltipItem: tooltip path: path
    <cCall: 'gtk_icon_view_set_tooltip_item' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
setTooltipCell: tooltip path: path cell: cell
    <cCall: 'gtk_icon_view_set_tooltip_cell' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
getTooltipContext: x y: y keyboardTip: keyboardTip model: model path: path iter: iter
    <cCall: 'gtk_icon_view_get_tooltip_context' returning: #boolean
	args: #( #self #cObject #cObject #boolean #cObject #cObject #cObject )>! !

!GtkIconView methodsFor: 'C call-outs'!
setTooltipColumn: column
    <cCall: 'gtk_icon_view_set_tooltip_column' returning: #void
	args: #( #self #int )>! !

!GtkIconView methodsFor: 'C call-outs'!
getTooltipColumn
    <cCall: 'gtk_icon_view_get_tooltip_column' returning: #int
	args: #( #self )>! !

!GtkImageMenuItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_image_menu_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkImageMenuItem!

!GtkImageMenuItem class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_image_menu_item_new' returning: #{GtkImageMenuItem}
	args: #( )>! !

!GtkImageMenuItem class methodsFor: 'C call-outs'!
newWithLabel: label
    <cCall: 'gtk_image_menu_item_new_with_label' returning: #{GtkImageMenuItem}
	args: #( #string )>! !

!GtkImageMenuItem class methodsFor: 'C call-outs'!
newWithMnemonic: label
    <cCall: 'gtk_image_menu_item_new_with_mnemonic' returning: #{GtkImageMenuItem}
	args: #( #string )>! !

!GtkImageMenuItem class methodsFor: 'C call-outs'!
newFromStock: stockId accelGroup: accelGroup
    <cCall: 'gtk_image_menu_item_new_from_stock' returning: #{GtkImageMenuItem}
	args: #( #string #cObject )>! !

!GtkImageMenuItem methodsFor: 'C call-outs'!
setAlwaysShowImage: alwaysShow
    <cCall: 'gtk_image_menu_item_set_always_show_image' returning: #void
	args: #( #self #boolean )>! !

!GtkImageMenuItem methodsFor: 'C call-outs'!
getAlwaysShowImage
    <cCall: 'gtk_image_menu_item_get_always_show_image' returning: #boolean
	args: #( #self )>! !

!GtkImageMenuItem methodsFor: 'C call-outs'!
setImage: image
    <cCall: 'gtk_image_menu_item_set_image' returning: #void
	args: #( #self #cObject )>! !

!GtkImageMenuItem methodsFor: 'C call-outs'!
getImage
    <cCall: 'gtk_image_menu_item_get_image' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkImageMenuItem methodsFor: 'C call-outs'!
setUseStock: useStock
    <cCall: 'gtk_image_menu_item_set_use_stock' returning: #void
	args: #( #self #boolean )>! !

!GtkImageMenuItem methodsFor: 'C call-outs'!
getUseStock
    <cCall: 'gtk_image_menu_item_get_use_stock' returning: #boolean
	args: #( #self )>! !

!GtkImageMenuItem methodsFor: 'C call-outs'!
setAccelGroup: accelGroup
    <cCall: 'gtk_image_menu_item_set_accel_group' returning: #void
	args: #( #self #cObject )>! !

!GtkIMContextSimple class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_im_context_simple_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkIMContextSimple!

!GtkIMContextSimple class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_im_context_simple_new' returning: #{GtkIMContextSimple}
	args: #( )>! !

!GtkIMContextSimple methodsFor: 'C call-outs'!
addTable: data maxSeqLen: maxSeqLen nSeqs: nSeqs
    <cCall: 'gtk_im_context_simple_add_table' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkIMMulticontext class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_im_multicontext_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkIMMulticontext!

!GtkIMMulticontext class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_im_multicontext_new' returning: #{GtkIMMulticontext}
	args: #( )>! !

!GtkIMMulticontext methodsFor: 'C call-outs'!
appendMenuitems: menushell
    <cCall: 'gtk_im_multicontext_append_menuitems' returning: #void
	args: #( #self #cObject )>! !

!GtkIMMulticontext methodsFor: 'C call-outs'!
setContextId: contextId
    <cCall: 'gtk_im_multicontext_set_context_id' returning: #void
	args: #( #self #string )>! !

!GtkInfoBar class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_info_bar_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkInfoBar!

!GtkInfoBar class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_info_bar_new' returning: #{GtkInfoBar}
	args: #( )>! !

!GtkInfoBar class methodsFor: 'C call-outs'!
newWithButtons: firstButtonText
    <cCall: 'gtk_info_bar_new_with_buttons' returning: #{GtkInfoBar}
	args: #( #variadic )>! !

!GtkInfoBar methodsFor: 'C call-outs'!
getActionArea
    <cCall: 'gtk_info_bar_get_action_area' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkInfoBar methodsFor: 'C call-outs'!
getContentArea
    <cCall: 'gtk_info_bar_get_content_area' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkInfoBar methodsFor: 'C call-outs'!
addActionWidget: child responseId: responseId
    <cCall: 'gtk_info_bar_add_action_widget' returning: #void
	args: #( #self #cObject #int )>! !

!GtkInfoBar methodsFor: 'C call-outs'!
addButton: buttonText responseId: responseId
    <cCall: 'gtk_info_bar_add_button' returning: #{GtkWidget}
	args: #( #self #string #int )>! !

!GtkInfoBar methodsFor: 'C call-outs'!
addButtons: firstButtonText
    <cCall: 'gtk_info_bar_add_buttons' returning: #void
	args: #( #self #variadic )>! !

!GtkInfoBar methodsFor: 'C call-outs'!
setResponseSensitive: responseId setting: setting
    <cCall: 'gtk_info_bar_set_response_sensitive' returning: #void
	args: #( #self #int #boolean )>! !

!GtkInfoBar methodsFor: 'C call-outs'!
setDefaultResponse: responseId
    <cCall: 'gtk_info_bar_set_default_response' returning: #void
	args: #( #self #int )>! !

!GtkInfoBar methodsFor: 'C call-outs'!
response: responseId
    <cCall: 'gtk_info_bar_response' returning: #void
	args: #( #self #int )>! !

!GtkInfoBar methodsFor: 'C call-outs'!
setMessageType: messageType
    <cCall: 'gtk_info_bar_set_message_type' returning: #void
	args: #( #self #int )>! !

!GtkInfoBar methodsFor: 'C call-outs'!
getMessageType
    <cCall: 'gtk_info_bar_get_message_type' returning: #int
	args: #( #self )>! !

!GtkInvisible class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_invisible_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkInvisible!

!GtkInvisible class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_invisible_new' returning: #{GtkInvisible}
	args: #( )>! !

!GtkInvisible class methodsFor: 'C call-outs'!
newForScreen: screen
    <cCall: 'gtk_invisible_new_for_screen' returning: #{GtkInvisible}
	args: #( #cObject )>! !

!GtkInvisible methodsFor: 'C call-outs'!
setScreen: screen
    <cCall: 'gtk_invisible_set_screen' returning: #void
	args: #( #self #cObject )>! !

!GtkInvisible methodsFor: 'C call-outs'!
getScreen
    <cCall: 'gtk_invisible_get_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!GtkLayout class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_layout_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkLayout!

!GtkLayout class methodsFor: 'C call-outs'!
new: hadjustment vadjustment: vadjustment
    <cCall: 'gtk_layout_new' returning: #{GtkLayout}
	args: #( #cObject #cObject )>! !

!GtkLayout methodsFor: 'C call-outs'!
getBinWindow
    <cCall: 'gtk_layout_get_bin_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkLayout methodsFor: 'C call-outs'!
put: childWidget x: x y: y
    <cCall: 'gtk_layout_put' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkLayout methodsFor: 'C call-outs'!
move: childWidget x: x y: y
    <cCall: 'gtk_layout_move' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkLayout methodsFor: 'C call-outs'!
setSize: width height: height
    <cCall: 'gtk_layout_set_size' returning: #void
	args: #( #self #int #int )>! !

!GtkLayout methodsFor: 'C call-outs'!
getSize: width height: height
    <cCall: 'gtk_layout_get_size' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkLayout methodsFor: 'C call-outs'!
getHadjustment
    <cCall: 'gtk_layout_get_hadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkLayout methodsFor: 'C call-outs'!
getVadjustment
    <cCall: 'gtk_layout_get_vadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkLayout methodsFor: 'C call-outs'!
setHadjustment: adjustment
    <cCall: 'gtk_layout_set_hadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkLayout methodsFor: 'C call-outs'!
setVadjustment: adjustment
    <cCall: 'gtk_layout_set_vadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkLinkButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_link_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkLinkButton!

!GtkLinkButton class methodsFor: 'C call-outs'!
new: uri
    <cCall: 'gtk_link_button_new' returning: #{GtkLinkButton}
	args: #( #string )>! !

!GtkLinkButton class methodsFor: 'C call-outs'!
newWithLabel: uri label: label
    <cCall: 'gtk_link_button_new_with_label' returning: #{GtkLinkButton}
	args: #( #string #string )>! !

!GtkLinkButton methodsFor: 'C call-outs'!
setUri: uri
    <cCall: 'gtk_link_button_set_uri' returning: #void
	args: #( #self #string )>! !

!GtkLinkButton methodsFor: 'C call-outs'!
getVisited
    <cCall: 'gtk_link_button_get_visited' returning: #boolean
	args: #( #self )>! !

!GtkLinkButton methodsFor: 'C call-outs'!
setVisited: visited
    <cCall: 'gtk_link_button_set_visited' returning: #void
	args: #( #self #boolean )>! !

!Gtk class methodsFor: 'C call-outs'!
parseArgs: argc argv: argv
    <cCall: 'gtk_parse_args' returning: #boolean
	args: #( #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
init: argc argv: argv
    <cCall: 'gtk_init' returning: #void
	args: #( #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
initCheck: argc argv: argv
    <cCall: 'gtk_init_check' returning: #boolean
	args: #( #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
initWithArgs: argc argv: argv parameterString: parameterString entries: entries translationDomain: translationDomain error: error
    <cCall: 'gtk_init_with_args' returning: #boolean
	args: #( #cObject #cObject #string #cObject #string #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
getOptionGroup: openDefaultDisplay
    <cCall: 'gtk_get_option_group' returning: #{GOptionGroup}
	args: #( #boolean )>! !

!Gtk class methodsFor: 'C call-outs'!
disableSetlocale
    <cCall: 'gtk_disable_setlocale' returning: #void
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
getDefaultLanguage
    <cCall: 'gtk_get_default_language' returning: #{PangoLanguage}
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
eventsPending
    <cCall: 'gtk_events_pending' returning: #boolean
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
mainDoEvent: event
    <cCall: 'gtk_main_do_event' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
main
    <cCall: 'gtk_main' returning: #void
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
mainLevel
    <cCall: 'gtk_main_level' returning: #int
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
mainQuit
    <cCall: 'gtk_main_quit' returning: #void
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
mainIteration
    <cCall: 'gtk_main_iteration' returning: #boolean
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
mainIterationDo: blocking
    <cCall: 'gtk_main_iteration_do' returning: #boolean
	args: #( #boolean )>! !

!Gtk class methodsFor: 'C call-outs'!
true
    <cCall: 'gtk_true' returning: #boolean
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
false
    <cCall: 'gtk_false' returning: #boolean
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
grabAdd: widget
    <cCall: 'gtk_grab_add' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
grabGetCurrent
    <cCall: 'gtk_grab_get_current' returning: #{GtkWidget}
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
grabRemove: widget
    <cCall: 'gtk_grab_remove' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
initAdd: function data: data
    <cCall: 'gtk_init_add' returning: #void
	args: #( #int #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
quitAddDestroy: mainLevel object: object
    <cCall: 'gtk_quit_add_destroy' returning: #void
	args: #( #int #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
quitAdd: mainLevel function: function data: data
    <cCall: 'gtk_quit_add' returning: #int
	args: #( #int #int #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
quitAddFull: mainLevel function: function marshal: marshal data: data destroy: destroy
    <cCall: 'gtk_quit_add_full' returning: #int
	args: #( #int #int #int #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
quitRemove: quitHandlerId
    <cCall: 'gtk_quit_remove' returning: #void
	args: #( #int )>! !

!Gtk class methodsFor: 'C call-outs'!
quitRemoveByData: data
    <cCall: 'gtk_quit_remove_by_data' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
timeoutAdd: interval function: function data: data
    <cCall: 'gtk_timeout_add' returning: #int
	args: #( #int #int #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
timeoutAddFull: interval function: function marshal: marshal data: data destroy: destroy
    <cCall: 'gtk_timeout_add_full' returning: #int
	args: #( #int #int #int #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
timeoutRemove: timeoutHandlerId
    <cCall: 'gtk_timeout_remove' returning: #void
	args: #( #int )>! !

!Gtk class methodsFor: 'C call-outs'!
idleAdd: function data: data
    <cCall: 'gtk_idle_add' returning: #int
	args: #( #int #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
idleAddPriority: priority function: function data: data
    <cCall: 'gtk_idle_add_priority' returning: #int
	args: #( #int #int #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
idleAddFull: priority function: function marshal: marshal data: data destroy: destroy
    <cCall: 'gtk_idle_add_full' returning: #int
	args: #( #int #int #int #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
idleRemove: idleHandlerId
    <cCall: 'gtk_idle_remove' returning: #void
	args: #( #int )>! !

!Gtk class methodsFor: 'C call-outs'!
idleRemoveByData: data
    <cCall: 'gtk_idle_remove_by_data' returning: #void
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
inputAddFull: source condition: condition function: function marshal: marshal data: data destroy: destroy
    <cCall: 'gtk_input_add_full' returning: #int
	args: #( #int #int #int #int #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
inputRemove: inputHandlerId
    <cCall: 'gtk_input_remove' returning: #void
	args: #( #int )>! !

!Gtk class methodsFor: 'C call-outs'!
keySnooperInstall: snooper funcData: funcData
    <cCall: 'gtk_key_snooper_install' returning: #int
	args: #( #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
keySnooperRemove: snooperHandlerId
    <cCall: 'gtk_key_snooper_remove' returning: #void
	args: #( #int )>! !

!Gtk class methodsFor: 'C call-outs'!
getCurrentEvent
    <cCall: 'gtk_get_current_event' returning: #{GdkEvent}
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
getCurrentEventTime
    <cCall: 'gtk_get_current_event_time' returning: #int
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
getCurrentEventState: state
    <cCall: 'gtk_get_current_event_state' returning: #boolean
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
getEventWidget: event
    <cCall: 'gtk_get_event_widget' returning: #{GtkWidget}
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
propagateEvent: widget event: event
    <cCall: 'gtk_propagate_event' returning: #void
	args: #( #cObject #cObject )>! !

!GtkMenuBar class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_menu_bar_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkMenuBar!

!GtkMenuBar class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_menu_bar_new' returning: #{GtkMenuBar}
	args: #( )>! !

!GtkMenuBar methodsFor: 'C call-outs'!
getPackDirection
    <cCall: 'gtk_menu_bar_get_pack_direction' returning: #int
	args: #( #self )>! !

!GtkMenuBar methodsFor: 'C call-outs'!
setPackDirection: packDir
    <cCall: 'gtk_menu_bar_set_pack_direction' returning: #void
	args: #( #self #int )>! !

!GtkMenuBar methodsFor: 'C call-outs'!
getChildPackDirection
    <cCall: 'gtk_menu_bar_get_child_pack_direction' returning: #int
	args: #( #self )>! !

!GtkMenuBar methodsFor: 'C call-outs'!
setChildPackDirection: childPackDir
    <cCall: 'gtk_menu_bar_set_child_pack_direction' returning: #void
	args: #( #self #int )>! !

!GtkSizeGroup class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_size_group_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkSizeGroup!

!GtkSizeGroup class methodsFor: 'C call-outs'!
new: mode
    <cCall: 'gtk_size_group_new' returning: #{GtkSizeGroup}
	args: #( #int )>! !

!GtkSizeGroup methodsFor: 'C call-outs'!
setMode: mode
    <cCall: 'gtk_size_group_set_mode' returning: #void
	args: #( #self #int )>! !

!GtkSizeGroup methodsFor: 'C call-outs'!
getMode
    <cCall: 'gtk_size_group_get_mode' returning: #int
	args: #( #self )>! !

!GtkSizeGroup methodsFor: 'C call-outs'!
setIgnoreHidden: ignoreHidden
    <cCall: 'gtk_size_group_set_ignore_hidden' returning: #void
	args: #( #self #boolean )>! !

!GtkSizeGroup methodsFor: 'C call-outs'!
getIgnoreHidden
    <cCall: 'gtk_size_group_get_ignore_hidden' returning: #boolean
	args: #( #self )>! !

!GtkSizeGroup methodsFor: 'C call-outs'!
addWidget: widget
    <cCall: 'gtk_size_group_add_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkSizeGroup methodsFor: 'C call-outs'!
removeWidget: widget
    <cCall: 'gtk_size_group_remove_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkSizeGroup methodsFor: 'C call-outs'!
getWidgets
    <cCall: 'gtk_size_group_get_widgets' returning: #{GSList}
	args: #( #self )>! !

!GtkToolItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tool_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkToolItem!

!GtkToolItem class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_tool_item_new' returning: #{GtkToolItem}
	args: #( )>! !

!GtkToolItem methodsFor: 'C call-outs'!
setHomogeneous: homogeneous
    <cCall: 'gtk_tool_item_set_homogeneous' returning: #void
	args: #( #self #boolean )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getHomogeneous
    <cCall: 'gtk_tool_item_get_homogeneous' returning: #boolean
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
setExpand: expand
    <cCall: 'gtk_tool_item_set_expand' returning: #void
	args: #( #self #boolean )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getExpand
    <cCall: 'gtk_tool_item_get_expand' returning: #boolean
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
setTooltipText: text
    <cCall: 'gtk_tool_item_set_tooltip_text' returning: #void
	args: #( #self #string )>! !

!GtkToolItem methodsFor: 'C call-outs'!
setTooltipMarkup: markup
    <cCall: 'gtk_tool_item_set_tooltip_markup' returning: #void
	args: #( #self #string )>! !

!GtkToolItem methodsFor: 'C call-outs'!
setUseDragWindow: useDragWindow
    <cCall: 'gtk_tool_item_set_use_drag_window' returning: #void
	args: #( #self #boolean )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getUseDragWindow
    <cCall: 'gtk_tool_item_get_use_drag_window' returning: #boolean
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
setVisibleHorizontal: visibleHorizontal
    <cCall: 'gtk_tool_item_set_visible_horizontal' returning: #void
	args: #( #self #boolean )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getVisibleHorizontal
    <cCall: 'gtk_tool_item_get_visible_horizontal' returning: #boolean
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
setVisibleVertical: visibleVertical
    <cCall: 'gtk_tool_item_set_visible_vertical' returning: #void
	args: #( #self #boolean )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getVisibleVertical
    <cCall: 'gtk_tool_item_get_visible_vertical' returning: #boolean
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getIsImportant
    <cCall: 'gtk_tool_item_get_is_important' returning: #boolean
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
setIsImportant: isImportant
    <cCall: 'gtk_tool_item_set_is_important' returning: #void
	args: #( #self #boolean )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getEllipsizeMode
    <cCall: 'gtk_tool_item_get_ellipsize_mode' returning: #int
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getIconSize
    <cCall: 'gtk_tool_item_get_icon_size' returning: #int
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getOrientation
    <cCall: 'gtk_tool_item_get_orientation' returning: #int
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getToolbarStyle
    <cCall: 'gtk_tool_item_get_toolbar_style' returning: #int
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getReliefStyle
    <cCall: 'gtk_tool_item_get_relief_style' returning: #int
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getTextAlignment
    <cCall: 'gtk_tool_item_get_text_alignment' returning: #float
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getTextOrientation
    <cCall: 'gtk_tool_item_get_text_orientation' returning: #int
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getTextSizeGroup
    <cCall: 'gtk_tool_item_get_text_size_group' returning: #{GtkSizeGroup}
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
retrieveProxyMenuItem
    <cCall: 'gtk_tool_item_retrieve_proxy_menu_item' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
getProxyMenuItem: menuItemId
    <cCall: 'gtk_tool_item_get_proxy_menu_item' returning: #{GtkWidget}
	args: #( #self #string )>! !

!GtkToolItem methodsFor: 'C call-outs'!
setProxyMenuItem: menuItemId menuItem: menuItem
    <cCall: 'gtk_tool_item_set_proxy_menu_item' returning: #void
	args: #( #self #string #cObject )>! !

!GtkToolItem methodsFor: 'C call-outs'!
rebuildMenu
    <cCall: 'gtk_tool_item_rebuild_menu' returning: #void
	args: #( #self )>! !

!GtkToolItem methodsFor: 'C call-outs'!
toolbarReconfigured
    <cCall: 'gtk_tool_item_toolbar_reconfigured' returning: #void
	args: #( #self )>! !

!GtkToolButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tool_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkToolButton!

!GtkToolButton class methodsFor: 'C call-outs'!
new: iconWidget label: label
    <cCall: 'gtk_tool_button_new' returning: #{GtkToolButton}
	args: #( #cObject #string )>! !

!GtkToolButton class methodsFor: 'C call-outs'!
newFromStock: stockId
    <cCall: 'gtk_tool_button_new_from_stock' returning: #{GtkToolButton}
	args: #( #string )>! !

!GtkToolButton methodsFor: 'C call-outs'!
setLabel: label
    <cCall: 'gtk_tool_button_set_label' returning: #void
	args: #( #self #string )>! !

!GtkToolButton methodsFor: 'C call-outs'!
setUseUnderline: useUnderline
    <cCall: 'gtk_tool_button_set_use_underline' returning: #void
	args: #( #self #boolean )>! !

!GtkToolButton methodsFor: 'C call-outs'!
getUseUnderline
    <cCall: 'gtk_tool_button_get_use_underline' returning: #boolean
	args: #( #self )>! !

!GtkToolButton methodsFor: 'C call-outs'!
setStockId: stockId
    <cCall: 'gtk_tool_button_set_stock_id' returning: #void
	args: #( #self #string )>! !

!GtkToolButton methodsFor: 'C call-outs'!
setIconName: iconName
    <cCall: 'gtk_tool_button_set_icon_name' returning: #void
	args: #( #self #string )>! !

!GtkToolButton methodsFor: 'C call-outs'!
setIconWidget: iconWidget
    <cCall: 'gtk_tool_button_set_icon_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkToolButton methodsFor: 'C call-outs'!
getIconWidget
    <cCall: 'gtk_tool_button_get_icon_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkToolButton methodsFor: 'C call-outs'!
setLabelWidget: labelWidget
    <cCall: 'gtk_tool_button_set_label_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkToolButton methodsFor: 'C call-outs'!
getLabelWidget
    <cCall: 'gtk_tool_button_get_label_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkMenuToolButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_menu_tool_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkMenuToolButton!

!GtkMenuToolButton class methodsFor: 'C call-outs'!
new: iconWidget label: label
    <cCall: 'gtk_menu_tool_button_new' returning: #{GtkMenuToolButton}
	args: #( #cObject #string )>! !

!GtkMenuToolButton class methodsFor: 'C call-outs'!
newFromStock: stockId
    <cCall: 'gtk_menu_tool_button_new_from_stock' returning: #{GtkMenuToolButton}
	args: #( #string )>! !

!GtkMenuToolButton methodsFor: 'C call-outs'!
setMenu: menu
    <cCall: 'gtk_menu_tool_button_set_menu' returning: #void
	args: #( #self #cObject )>! !

!GtkMenuToolButton methodsFor: 'C call-outs'!
getMenu
    <cCall: 'gtk_menu_tool_button_get_menu' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkMenuToolButton methodsFor: 'C call-outs'!
setArrowTooltipText: text
    <cCall: 'gtk_menu_tool_button_set_arrow_tooltip_text' returning: #void
	args: #( #self #string )>! !

!GtkMenuToolButton methodsFor: 'C call-outs'!
setArrowTooltipMarkup: markup
    <cCall: 'gtk_menu_tool_button_set_arrow_tooltip_markup' returning: #void
	args: #( #self #string )>! !

!GtkMessageDialog class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_message_dialog_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkMessageDialog!

!GtkMessageDialog class methodsFor: 'C call-outs'!
new: parent flags: flags type: type buttons: buttons messageFormat: messageFormat varargs: varargs
    <cCall: 'gtk_message_dialog_new' returning: #{GtkMessageDialog}
	args: #( #cObject #int #int #int #string #variadic )>! !

!GtkMessageDialog class methodsFor: 'C call-outs'!
newWithMarkup: parent flags: flags type: type buttons: buttons messageFormat: messageFormat varargs: varargs
    <cCall: 'gtk_message_dialog_new_with_markup' returning: #{GtkMessageDialog}
	args: #( #cObject #int #int #int #string #variadic )>! !

!GtkMessageDialog methodsFor: 'C call-outs'!
setImage: image
    <cCall: 'gtk_message_dialog_set_image' returning: #void
	args: #( #self #cObject )>! !

!GtkMessageDialog methodsFor: 'C call-outs'!
getImage
    <cCall: 'gtk_message_dialog_get_image' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkMessageDialog methodsFor: 'C call-outs'!
setMarkup: str
    <cCall: 'gtk_message_dialog_set_markup' returning: #void
	args: #( #self #string )>! !

!GtkMessageDialog methodsFor: 'C call-outs'!
formatSecondaryText: messageFormat varargs: varargs
    <cCall: 'gtk_message_dialog_format_secondary_text' returning: #void
	args: #( #self #string #variadic )>! !

!GtkMessageDialog methodsFor: 'C call-outs'!
formatSecondaryMarkup: messageFormat varargs: varargs
    <cCall: 'gtk_message_dialog_format_secondary_markup' returning: #void
	args: #( #self #string #variadic )>! !

!GtkMessageDialog methodsFor: 'C call-outs'!
getMessageArea
    <cCall: 'gtk_message_dialog_get_message_area' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkMountOperation class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_mount_operation_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkMountOperation!

!GtkMountOperation class methodsFor: 'C call-outs'!
new: parent
    <cCall: 'gtk_mount_operation_new' returning: #{GtkMountOperation}
	args: #( #cObject )>! !

!GtkMountOperation methodsFor: 'C call-outs'!
isShowing
    <cCall: 'gtk_mount_operation_is_showing' returning: #boolean
	args: #( #self )>! !

!GtkMountOperation methodsFor: 'C call-outs'!
setParent: parent
    <cCall: 'gtk_mount_operation_set_parent' returning: #void
	args: #( #self #cObject )>! !

!GtkMountOperation methodsFor: 'C call-outs'!
getParent
    <cCall: 'gtk_mount_operation_get_parent' returning: #{GtkWindow}
	args: #( #self )>! !

!GtkMountOperation methodsFor: 'C call-outs'!
setScreen: screen
    <cCall: 'gtk_mount_operation_set_screen' returning: #void
	args: #( #self #cObject )>! !

!GtkMountOperation methodsFor: 'C call-outs'!
getScreen
    <cCall: 'gtk_mount_operation_get_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!GtkNotebook class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_notebook_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkNotebook!

!GtkNotebook class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_notebook_new' returning: #{GtkNotebook}
	args: #( )>! !

!GtkNotebook methodsFor: 'C call-outs'!
appendPage: child tabLabel: tabLabel
    <cCall: 'gtk_notebook_append_page' returning: #int
	args: #( #self #cObject #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
appendPageMenu: child tabLabel: tabLabel menuLabel: menuLabel
    <cCall: 'gtk_notebook_append_page_menu' returning: #int
	args: #( #self #cObject #cObject #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
prependPage: child tabLabel: tabLabel
    <cCall: 'gtk_notebook_prepend_page' returning: #int
	args: #( #self #cObject #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
prependPageMenu: child tabLabel: tabLabel menuLabel: menuLabel
    <cCall: 'gtk_notebook_prepend_page_menu' returning: #int
	args: #( #self #cObject #cObject #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
insertPage: child tabLabel: tabLabel position: position
    <cCall: 'gtk_notebook_insert_page' returning: #int
	args: #( #self #cObject #cObject #int )>! !

!GtkNotebook methodsFor: 'C call-outs'!
insertPageMenu: child tabLabel: tabLabel menuLabel: menuLabel position: position
    <cCall: 'gtk_notebook_insert_page_menu' returning: #int
	args: #( #self #cObject #cObject #cObject #int )>! !

!GtkNotebook methodsFor: 'C call-outs'!
removePage: pageNum
    <cCall: 'gtk_notebook_remove_page' returning: #void
	args: #( #self #int )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setGroupName: groupName
    <cCall: 'gtk_notebook_set_group_name' returning: #void
	args: #( #self #string )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getCurrentPage
    <cCall: 'gtk_notebook_get_current_page' returning: #int
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getNthPage: pageNum
    <cCall: 'gtk_notebook_get_nth_page' returning: #{GtkWidget}
	args: #( #self #int )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getNPages
    <cCall: 'gtk_notebook_get_n_pages' returning: #int
	args: #( #self )>! !

!GtkNotebookPage class methodsFor: 'C call-outs'!
num: notebook child: child
    <cCall: 'gtk_notebook_page_num' returning: #int
	args: #( #cObject #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setCurrentPage: pageNum
    <cCall: 'gtk_notebook_set_current_page' returning: #void
	args: #( #self #int )>! !

!GtkNotebook methodsFor: 'C call-outs'!
nextPage
    <cCall: 'gtk_notebook_next_page' returning: #void
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
prevPage
    <cCall: 'gtk_notebook_prev_page' returning: #void
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setShowBorder: showBorder
    <cCall: 'gtk_notebook_set_show_border' returning: #void
	args: #( #self #boolean )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getShowBorder
    <cCall: 'gtk_notebook_get_show_border' returning: #boolean
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setShowTabs: showTabs
    <cCall: 'gtk_notebook_set_show_tabs' returning: #void
	args: #( #self #boolean )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getShowTabs
    <cCall: 'gtk_notebook_get_show_tabs' returning: #boolean
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setTabPos: pos
    <cCall: 'gtk_notebook_set_tab_pos' returning: #void
	args: #( #self #int )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getTabPos
    <cCall: 'gtk_notebook_get_tab_pos' returning: #int
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setScrollable: scrollable
    <cCall: 'gtk_notebook_set_scrollable' returning: #void
	args: #( #self #boolean )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getScrollable
    <cCall: 'gtk_notebook_get_scrollable' returning: #boolean
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getTabHborder
    <cCall: 'gtk_notebook_get_tab_hborder' returning: #int
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getTabVborder
    <cCall: 'gtk_notebook_get_tab_vborder' returning: #int
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
popupEnable
    <cCall: 'gtk_notebook_popup_enable' returning: #void
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
popupDisable
    <cCall: 'gtk_notebook_popup_disable' returning: #void
	args: #( #self )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getTabLabel: child
    <cCall: 'gtk_notebook_get_tab_label' returning: #{GtkWidget}
	args: #( #self #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setTabLabel: child tabLabel: tabLabel
    <cCall: 'gtk_notebook_set_tab_label' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setTabLabelText: child tabText: tabText
    <cCall: 'gtk_notebook_set_tab_label_text' returning: #void
	args: #( #self #cObject #string )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getMenuLabel: child
    <cCall: 'gtk_notebook_get_menu_label' returning: #{GtkWidget}
	args: #( #self #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setMenuLabel: child menuLabel: menuLabel
    <cCall: 'gtk_notebook_set_menu_label' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setMenuLabelText: child menuText: menuText
    <cCall: 'gtk_notebook_set_menu_label_text' returning: #void
	args: #( #self #cObject #string )>! !

!GtkNotebook methodsFor: 'C call-outs'!
reorderChild: child position: position
    <cCall: 'gtk_notebook_reorder_child' returning: #void
	args: #( #self #cObject #int )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getTabReorderable: child
    <cCall: 'gtk_notebook_get_tab_reorderable' returning: #boolean
	args: #( #self #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setTabReorderable: child reorderable: reorderable
    <cCall: 'gtk_notebook_set_tab_reorderable' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getTabDetachable: child
    <cCall: 'gtk_notebook_get_tab_detachable' returning: #boolean
	args: #( #self #cObject )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setTabDetachable: child detachable: detachable
    <cCall: 'gtk_notebook_set_tab_detachable' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkNotebook methodsFor: 'C call-outs'!
getActionWidget: packType
    <cCall: 'gtk_notebook_get_action_widget' returning: #{GtkWidget}
	args: #( #self #int )>! !

!GtkNotebook methodsFor: 'C call-outs'!
setActionWidget: widget packType: packType
    <cCall: 'gtk_notebook_set_action_widget' returning: #void
	args: #( #self #cObject #int )>! !

!GtkOffscreenWindow class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_offscreen_window_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkOffscreenWindow!

!GtkOffscreenWindow class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_offscreen_window_new' returning: #{GtkOffscreenWindow}
	args: #( )>! !

!GtkOffscreenWindow methodsFor: 'C call-outs'!
getPixmap
    <cCall: 'gtk_offscreen_window_get_pixmap' returning: #{GdkPixmap}
	args: #( #self )>! !

!GtkOffscreenWindow methodsFor: 'C call-outs'!
getPixbuf
    <cCall: 'gtk_offscreen_window_get_pixbuf' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GtkOrientable class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_orientable_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkOrientable!

!GtkOrientable methodsFor: 'C call-outs'!
setOrientation: orientation
    <cCall: 'gtk_orientable_set_orientation' returning: #void
	args: #( #self #int )>! !

!GtkOrientable methodsFor: 'C call-outs'!
getOrientation
    <cCall: 'gtk_orientable_get_orientation' returning: #int
	args: #( #self )>! !

!GtkPaperSize class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_paper_size_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkPaperSize!

!GtkPaperSize class methodsFor: 'C call-outs'!
new: name
    <cCall: 'gtk_paper_size_new' returning: #{GtkPaperSize}
	args: #( #string )>! !

!GtkPaperSize class methodsFor: 'C call-outs'!
newFromPpd: ppdName ppdDisplayName: ppdDisplayName width: width height: height
    <cCall: 'gtk_paper_size_new_from_ppd' returning: #{GtkPaperSize}
	args: #( #string #string #double #double )>! !

!GtkPaperSize class methodsFor: 'C call-outs'!
newCustom: name displayName: displayName width: width height: height unit: unit
    <cCall: 'gtk_paper_size_new_custom' returning: #{GtkPaperSize}
	args: #( #string #string #double #double #int )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_paper_size_copy' returning: #{GtkPaperSize}
	args: #( #self )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_paper_size_free' returning: #void
	args: #( #self )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
isEqual: size2
    <cCall: 'gtk_paper_size_is_equal' returning: #boolean
	args: #( #self #cObject )>! !

!GtkPaperSize class methodsFor: 'C call-outs'!
getPaperSizes: includeCustom
    <cCall: 'gtk_paper_size_get_paper_sizes' returning: #{GList}
	args: #( #boolean )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
getWidth: unit
    <cCall: 'gtk_paper_size_get_width' returning: #double
	args: #( #self #int )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
getHeight: unit
    <cCall: 'gtk_paper_size_get_height' returning: #double
	args: #( #self #int )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
isCustom
    <cCall: 'gtk_paper_size_is_custom' returning: #boolean
	args: #( #self )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
setSize: width height: height unit: unit
    <cCall: 'gtk_paper_size_set_size' returning: #void
	args: #( #self #double #double #int )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
getDefaultTopMargin: unit
    <cCall: 'gtk_paper_size_get_default_top_margin' returning: #double
	args: #( #self #int )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
getDefaultBottomMargin: unit
    <cCall: 'gtk_paper_size_get_default_bottom_margin' returning: #double
	args: #( #self #int )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
getDefaultLeftMargin: unit
    <cCall: 'gtk_paper_size_get_default_left_margin' returning: #double
	args: #( #self #int )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
getDefaultRightMargin: unit
    <cCall: 'gtk_paper_size_get_default_right_margin' returning: #double
	args: #( #self #int )>! !

!GtkPaperSize class methodsFor: 'C call-outs'!
newFromKeyFile: keyFile groupName: groupName error: error
    <cCall: 'gtk_paper_size_new_from_key_file' returning: #{GtkPaperSize}
	args: #( #cObject #string #cObject )>! !

!GtkPaperSize methodsFor: 'C call-outs'!
toKeyFile: keyFile groupName: groupName
    <cCall: 'gtk_paper_size_to_key_file' returning: #void
	args: #( #self #cObject #string )>! !

!GtkPageSetup class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_page_setup_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkPageSetup!

!GtkPageSetup class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_page_setup_new' returning: #{GtkPageSetup}
	args: #( )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_page_setup_copy' returning: #{GtkPageSetup}
	args: #( #self )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
getOrientation
    <cCall: 'gtk_page_setup_get_orientation' returning: #int
	args: #( #self )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
setOrientation: orientation
    <cCall: 'gtk_page_setup_set_orientation' returning: #void
	args: #( #self #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
getPaperSize
    <cCall: 'gtk_page_setup_get_paper_size' returning: #{GtkPaperSize}
	args: #( #self )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
setPaperSize: size
    <cCall: 'gtk_page_setup_set_paper_size' returning: #void
	args: #( #self #cObject )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
getTopMargin: unit
    <cCall: 'gtk_page_setup_get_top_margin' returning: #double
	args: #( #self #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
setTopMargin: margin unit: unit
    <cCall: 'gtk_page_setup_set_top_margin' returning: #void
	args: #( #self #double #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
getBottomMargin: unit
    <cCall: 'gtk_page_setup_get_bottom_margin' returning: #double
	args: #( #self #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
setBottomMargin: margin unit: unit
    <cCall: 'gtk_page_setup_set_bottom_margin' returning: #void
	args: #( #self #double #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
getLeftMargin: unit
    <cCall: 'gtk_page_setup_get_left_margin' returning: #double
	args: #( #self #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
setLeftMargin: margin unit: unit
    <cCall: 'gtk_page_setup_set_left_margin' returning: #void
	args: #( #self #double #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
getRightMargin: unit
    <cCall: 'gtk_page_setup_get_right_margin' returning: #double
	args: #( #self #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
setRightMargin: margin unit: unit
    <cCall: 'gtk_page_setup_set_right_margin' returning: #void
	args: #( #self #double #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
setPaperSizeAndDefaultMargins: size
    <cCall: 'gtk_page_setup_set_paper_size_and_default_margins' returning: #void
	args: #( #self #cObject )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
getPaperWidth: unit
    <cCall: 'gtk_page_setup_get_paper_width' returning: #double
	args: #( #self #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
getPaperHeight: unit
    <cCall: 'gtk_page_setup_get_paper_height' returning: #double
	args: #( #self #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
getPageWidth: unit
    <cCall: 'gtk_page_setup_get_page_width' returning: #double
	args: #( #self #int )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
getPageHeight: unit
    <cCall: 'gtk_page_setup_get_page_height' returning: #double
	args: #( #self #int )>! !

!GtkPageSetup class methodsFor: 'C call-outs'!
newFromFile: fileName error: error
    <cCall: 'gtk_page_setup_new_from_file' returning: #{GtkPageSetup}
	args: #( #string #cObject )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
loadFile: fileName error: error
    <cCall: 'gtk_page_setup_load_file' returning: #boolean
	args: #( #self #string #cObject )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
toFile: fileName error: error
    <cCall: 'gtk_page_setup_to_file' returning: #boolean
	args: #( #self #string #cObject )>! !

!GtkPageSetup class methodsFor: 'C call-outs'!
newFromKeyFile: keyFile groupName: groupName error: error
    <cCall: 'gtk_page_setup_new_from_key_file' returning: #{GtkPageSetup}
	args: #( #cObject #string #cObject )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
loadKeyFile: keyFile groupName: groupName error: error
    <cCall: 'gtk_page_setup_load_key_file' returning: #boolean
	args: #( #self #cObject #string #cObject )>! !

!GtkPageSetup methodsFor: 'C call-outs'!
toKeyFile: keyFile groupName: groupName
    <cCall: 'gtk_page_setup_to_key_file' returning: #void
	args: #( #self #cObject #string )>! !

!GtkSocket class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_socket_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkSocket!

!GtkSocket class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_socket_new' returning: #{GtkSocket}
	args: #( )>! !

!GtkSocket methodsFor: 'C call-outs'!
addId: windowId
    <cCall: 'gtk_socket_add_id' returning: #void
	args: #( #self #int )>! !

!GtkSocket methodsFor: 'C call-outs'!
getId
    <cCall: 'gtk_socket_get_id' returning: #int
	args: #( #self )>! !

!GtkSocket methodsFor: 'C call-outs'!
getPlugWindow
    <cCall: 'gtk_socket_get_plug_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkPlug class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_plug_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkPlug!

!GtkPlug methodsFor: 'C call-outs'!
construct: socketId
    <cCall: 'gtk_plug_construct' returning: #void
	args: #( #self #int )>! !

!GtkPlug class methodsFor: 'C call-outs'!
new: socketId
    <cCall: 'gtk_plug_new' returning: #{GtkPlug}
	args: #( #int )>! !

!GtkPlug methodsFor: 'C call-outs'!
constructForDisplay: display socketId: socketId
    <cCall: 'gtk_plug_construct_for_display' returning: #void
	args: #( #self #cObject #int )>! !

!GtkPlug class methodsFor: 'C call-outs'!
newForDisplay: display socketId: socketId
    <cCall: 'gtk_plug_new_for_display' returning: #{GtkPlug}
	args: #( #cObject #int )>! !

!GtkPlug methodsFor: 'C call-outs'!
getId
    <cCall: 'gtk_plug_get_id' returning: #int
	args: #( #self )>! !

!GtkPlug methodsFor: 'C call-outs'!
getEmbedded
    <cCall: 'gtk_plug_get_embedded' returning: #boolean
	args: #( #self )>! !

!GtkPlug methodsFor: 'C call-outs'!
getSocketWindow
    <cCall: 'gtk_plug_get_socket_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkPrintContext class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_print_context_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkPrintContext!

!GtkPrintContext methodsFor: 'C call-outs'!
getPageSetup
    <cCall: 'gtk_print_context_get_page_setup' returning: #{GtkPageSetup}
	args: #( #self )>! !

!GtkPrintContext methodsFor: 'C call-outs'!
getWidth
    <cCall: 'gtk_print_context_get_width' returning: #double
	args: #( #self )>! !

!GtkPrintContext methodsFor: 'C call-outs'!
getHeight
    <cCall: 'gtk_print_context_get_height' returning: #double
	args: #( #self )>! !

!GtkPrintContext methodsFor: 'C call-outs'!
getDpiX
    <cCall: 'gtk_print_context_get_dpi_x' returning: #double
	args: #( #self )>! !

!GtkPrintContext methodsFor: 'C call-outs'!
getDpiY
    <cCall: 'gtk_print_context_get_dpi_y' returning: #double
	args: #( #self )>! !

!GtkPrintContext methodsFor: 'C call-outs'!
getHardMargins: top bottom: bottom left: left right: right
    <cCall: 'gtk_print_context_get_hard_margins' returning: #boolean
	args: #( #self #cObject #cObject #cObject #cObject )>! !

!GtkPrintContext methodsFor: 'C call-outs'!
getPangoFontmap
    <cCall: 'gtk_print_context_get_pango_fontmap' returning: #{PangoFontMap}
	args: #( #self )>! !

!GtkPrintContext methodsFor: 'C call-outs'!
createPangoContext
    <cCall: 'gtk_print_context_create_pango_context' returning: #{PangoContext}
	args: #( #self )>! !

!GtkPrintContext methodsFor: 'C call-outs'!
createPangoLayout
    <cCall: 'gtk_print_context_create_pango_layout' returning: #{PangoLayout}
	args: #( #self )>! !

!GtkPrintContext methodsFor: 'C call-outs'!
setCairoContext: cr dpiX: dpiX dpiY: dpiY
    <cCall: 'gtk_print_context_set_cairo_context' returning: #void
	args: #( #self #cObject #double #double )>! !

!GtkPrintSettings class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_print_settings_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkPrintSettings!

!GtkPrintSettings class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_print_settings_new' returning: #{GtkPrintSettings}
	args: #( )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_print_settings_copy' returning: #{GtkPrintSettings}
	args: #( #self )>! !

!GtkPrintSettings class methodsFor: 'C call-outs'!
newFromFile: fileName error: error
    <cCall: 'gtk_print_settings_new_from_file' returning: #{GtkPrintSettings}
	args: #( #string #cObject )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
loadFile: fileName error: error
    <cCall: 'gtk_print_settings_load_file' returning: #boolean
	args: #( #self #string #cObject )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
toFile: fileName error: error
    <cCall: 'gtk_print_settings_to_file' returning: #boolean
	args: #( #self #string #cObject )>! !

!GtkPrintSettings class methodsFor: 'C call-outs'!
newFromKeyFile: keyFile groupName: groupName error: error
    <cCall: 'gtk_print_settings_new_from_key_file' returning: #{GtkPrintSettings}
	args: #( #cObject #string #cObject )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
loadKeyFile: keyFile groupName: groupName error: error
    <cCall: 'gtk_print_settings_load_key_file' returning: #boolean
	args: #( #self #cObject #string #cObject )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
toKeyFile: keyFile groupName: groupName
    <cCall: 'gtk_print_settings_to_key_file' returning: #void
	args: #( #self #cObject #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
hasKey: key
    <cCall: 'gtk_print_settings_has_key' returning: #boolean
	args: #( #self #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
set: key value: value
    <cCall: 'gtk_print_settings_set' returning: #void
	args: #( #self #string #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
unset: key
    <cCall: 'gtk_print_settings_unset' returning: #void
	args: #( #self #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
foreach: func userData: userData
    <cCall: 'gtk_print_settings_foreach' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getBool: key
    <cCall: 'gtk_print_settings_get_bool' returning: #boolean
	args: #( #self #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setBool: key value: value
    <cCall: 'gtk_print_settings_set_bool' returning: #void
	args: #( #self #string #boolean )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getDouble: key
    <cCall: 'gtk_print_settings_get_double' returning: #double
	args: #( #self #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getDoubleWithDefault: key def: def
    <cCall: 'gtk_print_settings_get_double_with_default' returning: #double
	args: #( #self #string #double )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setDouble: key value: value
    <cCall: 'gtk_print_settings_set_double' returning: #void
	args: #( #self #string #double )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getLength: key unit: unit
    <cCall: 'gtk_print_settings_get_length' returning: #double
	args: #( #self #string #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setLength: key value: value unit: unit
    <cCall: 'gtk_print_settings_set_length' returning: #void
	args: #( #self #string #double #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getInt: key
    <cCall: 'gtk_print_settings_get_int' returning: #int
	args: #( #self #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getIntWithDefault: key def: def
    <cCall: 'gtk_print_settings_get_int_with_default' returning: #int
	args: #( #self #string #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setInt: key value: value
    <cCall: 'gtk_print_settings_set_int' returning: #void
	args: #( #self #string #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setPrinter: printer
    <cCall: 'gtk_print_settings_set_printer' returning: #void
	args: #( #self #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getOrientation
    <cCall: 'gtk_print_settings_get_orientation' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setOrientation: orientation
    <cCall: 'gtk_print_settings_set_orientation' returning: #void
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getPaperSize
    <cCall: 'gtk_print_settings_get_paper_size' returning: #{GtkPaperSize}
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setPaperSize: paperSize
    <cCall: 'gtk_print_settings_set_paper_size' returning: #void
	args: #( #self #cObject )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getPaperWidth: unit
    <cCall: 'gtk_print_settings_get_paper_width' returning: #double
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setPaperWidth: width unit: unit
    <cCall: 'gtk_print_settings_set_paper_width' returning: #void
	args: #( #self #double #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getPaperHeight: unit
    <cCall: 'gtk_print_settings_get_paper_height' returning: #double
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setPaperHeight: height unit: unit
    <cCall: 'gtk_print_settings_set_paper_height' returning: #void
	args: #( #self #double #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getUseColor
    <cCall: 'gtk_print_settings_get_use_color' returning: #boolean
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setUseColor: useColor
    <cCall: 'gtk_print_settings_set_use_color' returning: #void
	args: #( #self #boolean )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getCollate
    <cCall: 'gtk_print_settings_get_collate' returning: #boolean
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setCollate: collate
    <cCall: 'gtk_print_settings_set_collate' returning: #void
	args: #( #self #boolean )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getReverse
    <cCall: 'gtk_print_settings_get_reverse' returning: #boolean
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setReverse: reverse
    <cCall: 'gtk_print_settings_set_reverse' returning: #void
	args: #( #self #boolean )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getDuplex
    <cCall: 'gtk_print_settings_get_duplex' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setDuplex: duplex
    <cCall: 'gtk_print_settings_set_duplex' returning: #void
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getQuality
    <cCall: 'gtk_print_settings_get_quality' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setQuality: quality
    <cCall: 'gtk_print_settings_set_quality' returning: #void
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getNCopies
    <cCall: 'gtk_print_settings_get_n_copies' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setNCopies: numCopies
    <cCall: 'gtk_print_settings_set_n_copies' returning: #void
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getNumberUp
    <cCall: 'gtk_print_settings_get_number_up' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setNumberUp: numberUp
    <cCall: 'gtk_print_settings_set_number_up' returning: #void
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getNumberUpLayout
    <cCall: 'gtk_print_settings_get_number_up_layout' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setNumberUpLayout: numberUpLayout
    <cCall: 'gtk_print_settings_set_number_up_layout' returning: #void
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getResolution
    <cCall: 'gtk_print_settings_get_resolution' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setResolution: resolution
    <cCall: 'gtk_print_settings_set_resolution' returning: #void
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getResolutionX
    <cCall: 'gtk_print_settings_get_resolution_x' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getResolutionY
    <cCall: 'gtk_print_settings_get_resolution_y' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setResolutionXy: resolutionX resolutionY: resolutionY
    <cCall: 'gtk_print_settings_set_resolution_xy' returning: #void
	args: #( #self #int #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getPrinterLpi
    <cCall: 'gtk_print_settings_get_printer_lpi' returning: #double
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setPrinterLpi: lpi
    <cCall: 'gtk_print_settings_set_printer_lpi' returning: #void
	args: #( #self #double )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getScale
    <cCall: 'gtk_print_settings_get_scale' returning: #double
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setScale: scale
    <cCall: 'gtk_print_settings_set_scale' returning: #void
	args: #( #self #double )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getPrintPages
    <cCall: 'gtk_print_settings_get_print_pages' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setPrintPages: pages
    <cCall: 'gtk_print_settings_set_print_pages' returning: #void
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getPageRanges: numRanges
    <cCall: 'gtk_print_settings_get_page_ranges' returning: #{GtkPageRange}
	args: #( #self #cObject )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setPageRanges: pageRanges numRanges: numRanges
    <cCall: 'gtk_print_settings_set_page_ranges' returning: #void
	args: #( #self #cObject #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
getPageSet
    <cCall: 'gtk_print_settings_get_page_set' returning: #int
	args: #( #self )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setPageSet: pageSet
    <cCall: 'gtk_print_settings_set_page_set' returning: #void
	args: #( #self #int )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setDefaultSource: defaultSource
    <cCall: 'gtk_print_settings_set_default_source' returning: #void
	args: #( #self #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setMediaType: mediaType
    <cCall: 'gtk_print_settings_set_media_type' returning: #void
	args: #( #self #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setDither: dither
    <cCall: 'gtk_print_settings_set_dither' returning: #void
	args: #( #self #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setFinishings: finishings
    <cCall: 'gtk_print_settings_set_finishings' returning: #void
	args: #( #self #string )>! !

!GtkPrintSettings methodsFor: 'C call-outs'!
setOutputBin: outputBin
    <cCall: 'gtk_print_settings_set_output_bin' returning: #void
	args: #( #self #string )>! !

!GtkPrintOperationPreview class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_print_operation_preview_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkPrintOperationPreview!

!GtkPrintOperationPreview methodsFor: 'C call-outs'!
renderPage: pageNr
    <cCall: 'gtk_print_operation_preview_render_page' returning: #void
	args: #( #self #int )>! !

!GtkPrintOperationPreview methodsFor: 'C call-outs'!
endPreview
    <cCall: 'gtk_print_operation_preview_end_preview' returning: #void
	args: #( #self )>! !

!GtkPrintOperationPreview methodsFor: 'C call-outs'!
isSelected: pageNr
    <cCall: 'gtk_print_operation_preview_is_selected' returning: #boolean
	args: #( #self #int )>! !

!GtkPrintOperation class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_print_operation_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkPrintOperation!

!GtkPrintOperation class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_print_operation_new' returning: #{GtkPrintOperation}
	args: #( )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setDefaultPageSetup: defaultPageSetup
    <cCall: 'gtk_print_operation_set_default_page_setup' returning: #void
	args: #( #self #cObject )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
getDefaultPageSetup
    <cCall: 'gtk_print_operation_get_default_page_setup' returning: #{GtkPageSetup}
	args: #( #self )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setPrintSettings: printSettings
    <cCall: 'gtk_print_operation_set_print_settings' returning: #void
	args: #( #self #cObject )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
getPrintSettings
    <cCall: 'gtk_print_operation_get_print_settings' returning: #{GtkPrintSettings}
	args: #( #self )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setJobName: jobName
    <cCall: 'gtk_print_operation_set_job_name' returning: #void
	args: #( #self #string )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setNPages: nPages
    <cCall: 'gtk_print_operation_set_n_pages' returning: #void
	args: #( #self #int )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setCurrentPage: currentPage
    <cCall: 'gtk_print_operation_set_current_page' returning: #void
	args: #( #self #int )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setUseFullPage: fullPage
    <cCall: 'gtk_print_operation_set_use_full_page' returning: #void
	args: #( #self #boolean )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setUnit: unit
    <cCall: 'gtk_print_operation_set_unit' returning: #void
	args: #( #self #int )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setExportFilename: filename
    <cCall: 'gtk_print_operation_set_export_filename' returning: #void
	args: #( #self #string )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setTrackPrintStatus: trackStatus
    <cCall: 'gtk_print_operation_set_track_print_status' returning: #void
	args: #( #self #boolean )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setShowProgress: showProgress
    <cCall: 'gtk_print_operation_set_show_progress' returning: #void
	args: #( #self #boolean )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setAllowAsync: allowAsync
    <cCall: 'gtk_print_operation_set_allow_async' returning: #void
	args: #( #self #boolean )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setCustomTabLabel: label
    <cCall: 'gtk_print_operation_set_custom_tab_label' returning: #void
	args: #( #self #string )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
run: action parent: parent error: error
    <cCall: 'gtk_print_operation_run' returning: #int
	args: #( #self #int #cObject #cObject )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
getError: error
    <cCall: 'gtk_print_operation_get_error' returning: #void
	args: #( #self #cObject )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
getStatus
    <cCall: 'gtk_print_operation_get_status' returning: #int
	args: #( #self )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
isFinished
    <cCall: 'gtk_print_operation_is_finished' returning: #boolean
	args: #( #self )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
cancel
    <cCall: 'gtk_print_operation_cancel' returning: #void
	args: #( #self )>! !

!GtkStyle class methodsFor: 'C call-outs'!
drawPageFinish: op
    <cCall: 'gtk_print_operation_draw_page_finish' returning: #void
	args: #( #cObject )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setDeferDrawing
    <cCall: 'gtk_print_operation_set_defer_drawing' returning: #void
	args: #( #self )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setSupportSelection: supportSelection
    <cCall: 'gtk_print_operation_set_support_selection' returning: #void
	args: #( #self #boolean )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
getSupportSelection
    <cCall: 'gtk_print_operation_get_support_selection' returning: #boolean
	args: #( #self )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setHasSelection: hasSelection
    <cCall: 'gtk_print_operation_set_has_selection' returning: #void
	args: #( #self #boolean )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
getHasSelection
    <cCall: 'gtk_print_operation_get_has_selection' returning: #boolean
	args: #( #self )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
setEmbedPageSetup: embed
    <cCall: 'gtk_print_operation_set_embed_page_setup' returning: #void
	args: #( #self #boolean )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
getEmbedPageSetup
    <cCall: 'gtk_print_operation_get_embed_page_setup' returning: #boolean
	args: #( #self )>! !

!GtkPrintOperation methodsFor: 'C call-outs'!
getNPagesToPrint
    <cCall: 'gtk_print_operation_get_n_pages_to_print' returning: #int
	args: #( #self )>! !

!Gtk class methodsFor: 'C call-outs'!
printRunPageSetupDialog: parent pageSetup: pageSetup settings: settings
    <cCall: 'gtk_print_run_page_setup_dialog' returning: #{GtkPageSetup}
	args: #( #cObject #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
printRunPageSetupDialogAsync: parent pageSetup: pageSetup settings: settings doneCb: doneCb data: data
    <cCall: 'gtk_print_run_page_setup_dialog_async' returning: #void
	args: #( #cObject #cObject #cObject #cObject #cObject )>! !

!GtkProgress class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_progress_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkProgress!

!GtkProgress methodsFor: 'C call-outs'!
setShowText: showText
    <cCall: 'gtk_progress_set_show_text' returning: #void
	args: #( #self #boolean )>! !

!GtkProgress methodsFor: 'C call-outs'!
setTextAlignment: xAlign yAlign: yAlign
    <cCall: 'gtk_progress_set_text_alignment' returning: #void
	args: #( #self #float #float )>! !

!GtkProgress methodsFor: 'C call-outs'!
setFormatString: format
    <cCall: 'gtk_progress_set_format_string' returning: #void
	args: #( #self #string )>! !

!GtkProgress methodsFor: 'C call-outs'!
setAdjustment: adjustment
    <cCall: 'gtk_progress_set_adjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkProgress methodsFor: 'C call-outs'!
configure: value min: min max: max
    <cCall: 'gtk_progress_configure' returning: #void
	args: #( #self #double #double #double )>! !

!GtkProgress methodsFor: 'C call-outs'!
setPercentage: percentage
    <cCall: 'gtk_progress_set_percentage' returning: #void
	args: #( #self #double )>! !

!GtkProgress methodsFor: 'C call-outs'!
setValue: value
    <cCall: 'gtk_progress_set_value' returning: #void
	args: #( #self #double )>! !

!GtkProgress methodsFor: 'C call-outs'!
getValue
    <cCall: 'gtk_progress_get_value' returning: #double
	args: #( #self )>! !

!GtkProgress methodsFor: 'C call-outs'!
setActivityMode: activityMode
    <cCall: 'gtk_progress_set_activity_mode' returning: #void
	args: #( #self #boolean )>! !

!GtkProgress methodsFor: 'C call-outs'!
getCurrentText
    <cCall: 'gtk_progress_get_current_text' returning: #string
	args: #( #self )>! !

!GtkProgress methodsFor: 'C call-outs'!
getTextFromValue: value
    <cCall: 'gtk_progress_get_text_from_value' returning: #string
	args: #( #self #double )>! !

!GtkProgress methodsFor: 'C call-outs'!
getCurrentPercentage
    <cCall: 'gtk_progress_get_current_percentage' returning: #double
	args: #( #self )>! !

!GtkProgress methodsFor: 'C call-outs'!
getPercentageFromValue: value
    <cCall: 'gtk_progress_get_percentage_from_value' returning: #double
	args: #( #self #double )>! !

!GtkProgressBar class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_progress_bar_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkProgressBar!

!GtkProgressBar class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_progress_bar_new' returning: #{GtkProgressBar}
	args: #( )>! !

!GtkProgressBar methodsFor: 'C call-outs'!
pulse
    <cCall: 'gtk_progress_bar_pulse' returning: #void
	args: #( #self )>! !

!GtkProgressBar methodsFor: 'C call-outs'!
setText: text
    <cCall: 'gtk_progress_bar_set_text' returning: #void
	args: #( #self #string )>! !

!GtkProgressBar methodsFor: 'C call-outs'!
setFraction: fraction
    <cCall: 'gtk_progress_bar_set_fraction' returning: #void
	args: #( #self #double )>! !

!GtkProgressBar methodsFor: 'C call-outs'!
setPulseStep: fraction
    <cCall: 'gtk_progress_bar_set_pulse_step' returning: #void
	args: #( #self #double )>! !

!GtkProgressBar methodsFor: 'C call-outs'!
setOrientation: orientation
    <cCall: 'gtk_progress_bar_set_orientation' returning: #void
	args: #( #self #int )>! !

!GtkProgressBar methodsFor: 'C call-outs'!
getFraction
    <cCall: 'gtk_progress_bar_get_fraction' returning: #double
	args: #( #self )>! !

!GtkProgressBar methodsFor: 'C call-outs'!
getPulseStep
    <cCall: 'gtk_progress_bar_get_pulse_step' returning: #double
	args: #( #self )>! !

!GtkProgressBar methodsFor: 'C call-outs'!
getOrientation
    <cCall: 'gtk_progress_bar_get_orientation' returning: #int
	args: #( #self )>! !

!GtkProgressBar methodsFor: 'C call-outs'!
setEllipsize: mode
    <cCall: 'gtk_progress_bar_set_ellipsize' returning: #void
	args: #( #self #int )>! !

!GtkProgressBar methodsFor: 'C call-outs'!
getEllipsize
    <cCall: 'gtk_progress_bar_get_ellipsize' returning: #int
	args: #( #self )>! !

!GtkToggleAction class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_toggle_action_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkToggleAction!

!GtkToggleAction class methodsFor: 'C call-outs'!
new: name label: label tooltip: tooltip stockId: stockId
    <cCall: 'gtk_toggle_action_new' returning: #{GtkToggleAction}
	args: #( #string #string #string #string )>! !

!GtkToggleAction methodsFor: 'C call-outs'!
toggled
    <cCall: 'gtk_toggle_action_toggled' returning: #void
	args: #( #self )>! !

!GtkToggleAction methodsFor: 'C call-outs'!
setActive: isActive
    <cCall: 'gtk_toggle_action_set_active' returning: #void
	args: #( #self #boolean )>! !

!GtkToggleAction methodsFor: 'C call-outs'!
getActive
    <cCall: 'gtk_toggle_action_get_active' returning: #boolean
	args: #( #self )>! !

!GtkToggleAction methodsFor: 'C call-outs'!
setDrawAsRadio: drawAsRadio
    <cCall: 'gtk_toggle_action_set_draw_as_radio' returning: #void
	args: #( #self #boolean )>! !

!GtkToggleAction methodsFor: 'C call-outs'!
getDrawAsRadio
    <cCall: 'gtk_toggle_action_get_draw_as_radio' returning: #boolean
	args: #( #self )>! !

!GtkRadioAction class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_radio_action_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRadioAction!

!GtkRadioAction class methodsFor: 'C call-outs'!
new: name label: label tooltip: tooltip stockId: stockId value: value
    <cCall: 'gtk_radio_action_new' returning: #{GtkRadioAction}
	args: #( #string #string #string #string #int )>! !

!GtkRadioAction methodsFor: 'C call-outs'!
getGroup
    <cCall: 'gtk_radio_action_get_group' returning: #{GSList}
	args: #( #self )>! !

!GtkRadioAction methodsFor: 'C call-outs'!
setGroup: group
    <cCall: 'gtk_radio_action_set_group' returning: #void
	args: #( #self #cObject )>! !

!GtkRadioAction methodsFor: 'C call-outs'!
getCurrentValue
    <cCall: 'gtk_radio_action_get_current_value' returning: #int
	args: #( #self )>! !

!GtkRadioAction methodsFor: 'C call-outs'!
setCurrentValue: currentValue
    <cCall: 'gtk_radio_action_set_current_value' returning: #void
	args: #( #self #int )>! !

!GtkRadioButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_radio_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRadioButton!

!GtkRadioButton class methodsFor: 'C call-outs'!
new: group
    <cCall: 'gtk_radio_button_new' returning: #{GtkRadioButton}
	args: #( #cObject )>! !

!GtkRadioButton methodsFor: 'C call-outs'!
newFromWidget
    <cCall: 'gtk_radio_button_new_from_widget' returning: #{GtkRadioButton}
	args: #( #self )>! !

!GtkRadioButton class methodsFor: 'C call-outs'!
newWithLabel: group label: label
    <cCall: 'gtk_radio_button_new_with_label' returning: #{GtkRadioButton}
	args: #( #cObject #string )>! !

!GtkRadioButton methodsFor: 'C call-outs'!
newWithLabelFromWidget: label
    <cCall: 'gtk_radio_button_new_with_label_from_widget' returning: #{GtkRadioButton}
	args: #( #self #string )>! !

!GtkRadioButton class methodsFor: 'C call-outs'!
newWithMnemonic: group label: label
    <cCall: 'gtk_radio_button_new_with_mnemonic' returning: #{GtkRadioButton}
	args: #( #cObject #string )>! !

!GtkRadioButton methodsFor: 'C call-outs'!
newWithMnemonicFromWidget: label
    <cCall: 'gtk_radio_button_new_with_mnemonic_from_widget' returning: #{GtkRadioButton}
	args: #( #self #string )>! !

!GtkRadioButton methodsFor: 'C call-outs'!
getGroup
    <cCall: 'gtk_radio_button_get_group' returning: #{GSList}
	args: #( #self )>! !

!GtkRadioButton methodsFor: 'C call-outs'!
setGroup: group
    <cCall: 'gtk_radio_button_set_group' returning: #void
	args: #( #self #cObject )>! !

!GtkRadioMenuItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_radio_menu_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRadioMenuItem!

!GtkRadioMenuItem class methodsFor: 'C call-outs'!
new: group
    <cCall: 'gtk_radio_menu_item_new' returning: #{GtkRadioMenuItem}
	args: #( #cObject )>! !

!GtkRadioMenuItem class methodsFor: 'C call-outs'!
newWithLabel: group label: label
    <cCall: 'gtk_radio_menu_item_new_with_label' returning: #{GtkRadioMenuItem}
	args: #( #cObject #string )>! !

!GtkRadioMenuItem class methodsFor: 'C call-outs'!
newWithMnemonic: group label: label
    <cCall: 'gtk_radio_menu_item_new_with_mnemonic' returning: #{GtkRadioMenuItem}
	args: #( #cObject #string )>! !

!GtkRadioMenuItem methodsFor: 'C call-outs'!
newFromWidget
    <cCall: 'gtk_radio_menu_item_new_from_widget' returning: #{GtkRadioMenuItem}
	args: #( #self )>! !

!GtkRadioMenuItem methodsFor: 'C call-outs'!
newWithMnemonicFromWidget: label
    <cCall: 'gtk_radio_menu_item_new_with_mnemonic_from_widget' returning: #{GtkRadioMenuItem}
	args: #( #self #string )>! !

!GtkRadioMenuItem methodsFor: 'C call-outs'!
newWithLabelFromWidget: label
    <cCall: 'gtk_radio_menu_item_new_with_label_from_widget' returning: #{GtkRadioMenuItem}
	args: #( #self #string )>! !

!GtkRadioMenuItem methodsFor: 'C call-outs'!
getGroup
    <cCall: 'gtk_radio_menu_item_get_group' returning: #{GSList}
	args: #( #self )>! !

!GtkRadioMenuItem methodsFor: 'C call-outs'!
setGroup: group
    <cCall: 'gtk_radio_menu_item_set_group' returning: #void
	args: #( #self #cObject )>! !

!GtkToggleToolButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_toggle_tool_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkToggleToolButton!

!GtkToggleToolButton class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_toggle_tool_button_new' returning: #{GtkToggleToolButton}
	args: #( )>! !

!GtkToggleToolButton class methodsFor: 'C call-outs'!
newFromStock: stockId
    <cCall: 'gtk_toggle_tool_button_new_from_stock' returning: #{GtkToggleToolButton}
	args: #( #string )>! !

!GtkToggleToolButton methodsFor: 'C call-outs'!
setActive: isActive
    <cCall: 'gtk_toggle_tool_button_set_active' returning: #void
	args: #( #self #boolean )>! !

!GtkToggleToolButton methodsFor: 'C call-outs'!
getActive
    <cCall: 'gtk_toggle_tool_button_get_active' returning: #boolean
	args: #( #self )>! !

!GtkRadioToolButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_radio_tool_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRadioToolButton!

!GtkRadioToolButton class methodsFor: 'C call-outs'!
new: group
    <cCall: 'gtk_radio_tool_button_new' returning: #{GtkRadioToolButton}
	args: #( #cObject )>! !

!GtkRadioToolButton class methodsFor: 'C call-outs'!
newFromStock: group stockId: stockId
    <cCall: 'gtk_radio_tool_button_new_from_stock' returning: #{GtkRadioToolButton}
	args: #( #cObject #string )>! !

!GtkRadioToolButton methodsFor: 'C call-outs'!
newFromWidget
    <cCall: 'gtk_radio_tool_button_new_from_widget' returning: #{GtkRadioToolButton}
	args: #( #self )>! !

!GtkRadioToolButton methodsFor: 'C call-outs'!
newWithStockFromWidget: stockId
    <cCall: 'gtk_radio_tool_button_new_with_stock_from_widget' returning: #{GtkRadioToolButton}
	args: #( #self #string )>! !

!GtkRadioToolButton methodsFor: 'C call-outs'!
getGroup
    <cCall: 'gtk_radio_tool_button_get_group' returning: #{GSList}
	args: #( #self )>! !

!GtkRadioToolButton methodsFor: 'C call-outs'!
setGroup: group
    <cCall: 'gtk_radio_tool_button_set_group' returning: #void
	args: #( #self #cObject )>! !

!GtkRecentManager class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_recent_manager_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRecentManager!

!GtkRecentManager class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_recent_manager_new' returning: #{GtkRecentManager}
	args: #( )>! !

!GtkRecentManager class methodsFor: 'C call-outs'!
getDefault
    <cCall: 'gtk_recent_manager_get_default' returning: #{GtkRecentManager}
	args: #( )>! !

!GtkRecentManager methodsFor: 'C call-outs'!
addItem: uri
    <cCall: 'gtk_recent_manager_add_item' returning: #boolean
	args: #( #self #string )>! !

!GtkRecentManager methodsFor: 'C call-outs'!
addFull: uri recentData: recentData
    <cCall: 'gtk_recent_manager_add_full' returning: #boolean
	args: #( #self #string #cObject )>! !

!GtkRecentManager methodsFor: 'C call-outs'!
removeItem: uri error: error
    <cCall: 'gtk_recent_manager_remove_item' returning: #boolean
	args: #( #self #string #cObject )>! !

!GtkRecentManager methodsFor: 'C call-outs'!
lookupItem: uri error: error
    <cCall: 'gtk_recent_manager_lookup_item' returning: #{GtkRecentInfo}
	args: #( #self #string #cObject )>! !

!GtkRecentManager methodsFor: 'C call-outs'!
hasItem: uri
    <cCall: 'gtk_recent_manager_has_item' returning: #boolean
	args: #( #self #string )>! !

!GtkRecentManager methodsFor: 'C call-outs'!
moveItem: uri newUri: newUri error: error
    <cCall: 'gtk_recent_manager_move_item' returning: #boolean
	args: #( #self #string #string #cObject )>! !

!GtkRecentManager methodsFor: 'C call-outs'!
setLimit: limit
    <cCall: 'gtk_recent_manager_set_limit' returning: #void
	args: #( #self #int )>! !

!GtkRecentManager methodsFor: 'C call-outs'!
getLimit
    <cCall: 'gtk_recent_manager_get_limit' returning: #int
	args: #( #self )>! !

!GtkRecentManager methodsFor: 'C call-outs'!
getItems
    <cCall: 'gtk_recent_manager_get_items' returning: #{GList}
	args: #( #self )>! !

!GtkRecentManager methodsFor: 'C call-outs'!
purgeItems: error
    <cCall: 'gtk_recent_manager_purge_items' returning: #int
	args: #( #self #cObject )>! !

!GtkRecentInfo class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_recent_info_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRecentInfo!

!GtkRecentInfo methodsFor: 'C call-outs'!
ref
    <cCall: 'gtk_recent_info_ref' returning: #{GtkRecentInfo}
	args: #( #self )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self unref ]!
unref
    <cCall: 'gtk_recent_info_unref' returning: #void
	args: #( #self )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
getPrivateHint
    <cCall: 'gtk_recent_info_get_private_hint' returning: #boolean
	args: #( #self )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
getApplicationInfo: appName appExec: appExec count: count time: time
    <cCall: 'gtk_recent_info_get_application_info' returning: #boolean
	args: #( #self #string #cObject #cObject #cObject )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
getApplications: length
    <cCall: 'gtk_recent_info_get_applications' returning: #string
	args: #( #self #cObject )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
lastApplication
    <cCall: 'gtk_recent_info_last_application' returning: #string
	args: #( #self )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
hasApplication: appName
    <cCall: 'gtk_recent_info_has_application' returning: #boolean
	args: #( #self #string )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
getGroups: length
    <cCall: 'gtk_recent_info_get_groups' returning: #string
	args: #( #self #cObject )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
hasGroup: groupName
    <cCall: 'gtk_recent_info_has_group' returning: #boolean
	args: #( #self #string )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
getIcon: size
    <cCall: 'gtk_recent_info_get_icon' returning: #{GdkPixbuf}
	args: #( #self #int )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
getShortName
    <cCall: 'gtk_recent_info_get_short_name' returning: #string
	args: #( #self )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
getUriDisplay
    <cCall: 'gtk_recent_info_get_uri_display' returning: #string
	args: #( #self )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
getAge
    <cCall: 'gtk_recent_info_get_age' returning: #int
	args: #( #self )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
isLocal
    <cCall: 'gtk_recent_info_is_local' returning: #boolean
	args: #( #self )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
exists
    <cCall: 'gtk_recent_info_exists' returning: #boolean
	args: #( #self )>! !

!GtkRecentInfo methodsFor: 'C call-outs'!
match: infoB
    <cCall: 'gtk_recent_info_match' returning: #boolean
	args: #( #self #cObject )>! !

!GtkRecentAction class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_recent_action_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRecentAction!

!GtkRecentAction class methodsFor: 'C call-outs'!
new: name label: label tooltip: tooltip stockId: stockId
    <cCall: 'gtk_recent_action_new' returning: #{GtkRecentAction}
	args: #( #string #string #string #string )>! !

!GtkRecentAction class methodsFor: 'C call-outs'!
newForManager: name label: label tooltip: tooltip stockId: stockId manager: manager
    <cCall: 'gtk_recent_action_new_for_manager' returning: #{GtkRecentAction}
	args: #( #string #string #string #string #cObject )>! !

!GtkRecentAction methodsFor: 'C call-outs'!
getShowNumbers
    <cCall: 'gtk_recent_action_get_show_numbers' returning: #boolean
	args: #( #self )>! !

!GtkRecentAction methodsFor: 'C call-outs'!
setShowNumbers: showNumbers
    <cCall: 'gtk_recent_action_set_show_numbers' returning: #void
	args: #( #self #boolean )>! !

!GtkRecentFilter class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_recent_filter_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRecentFilter!

!GtkRecentFilter class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_recent_filter_new' returning: #{GtkRecentFilter}
	args: #( )>! !

!GtkRecentFilter methodsFor: 'C call-outs'!
setName: name
    <cCall: 'gtk_recent_filter_set_name' returning: #void
	args: #( #self #string )>! !

!GtkRecentFilter methodsFor: 'C call-outs'!
addMimeType: mimeType
    <cCall: 'gtk_recent_filter_add_mime_type' returning: #void
	args: #( #self #string )>! !

!GtkRecentFilter methodsFor: 'C call-outs'!
addPattern: pattern
    <cCall: 'gtk_recent_filter_add_pattern' returning: #void
	args: #( #self #string )>! !

!GtkRecentFilter methodsFor: 'C call-outs'!
addPixbufFormats
    <cCall: 'gtk_recent_filter_add_pixbuf_formats' returning: #void
	args: #( #self )>! !

!GtkRecentFilter methodsFor: 'C call-outs'!
addApplication: application
    <cCall: 'gtk_recent_filter_add_application' returning: #void
	args: #( #self #string )>! !

!GtkRecentFilter methodsFor: 'C call-outs'!
addGroup: group
    <cCall: 'gtk_recent_filter_add_group' returning: #void
	args: #( #self #string )>! !

!GtkRecentFilter methodsFor: 'C call-outs'!
addAge: days
    <cCall: 'gtk_recent_filter_add_age' returning: #void
	args: #( #self #int )>! !

!GtkRecentFilter methodsFor: 'C call-outs'!
addCustom: needed func: func data: data dataDestroy: dataDestroy
    <cCall: 'gtk_recent_filter_add_custom' returning: #void
	args: #( #self #int #cObject #cObject #int )>! !

!GtkRecentFilter methodsFor: 'C call-outs'!
getNeeded
    <cCall: 'gtk_recent_filter_get_needed' returning: #int
	args: #( #self )>! !

!GtkRecentFilter methodsFor: 'C call-outs'!
filter: filterInfo
    <cCall: 'gtk_recent_filter_filter' returning: #boolean
	args: #( #self #cObject )>! !

!GtkRecentChooser class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_recent_chooser_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRecentChooser!

!GtkRecentChooser methodsFor: 'C call-outs'!
setShowPrivate: showPrivate
    <cCall: 'gtk_recent_chooser_set_show_private' returning: #void
	args: #( #self #boolean )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getShowPrivate
    <cCall: 'gtk_recent_chooser_get_show_private' returning: #boolean
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
setShowNotFound: showNotFound
    <cCall: 'gtk_recent_chooser_set_show_not_found' returning: #void
	args: #( #self #boolean )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getShowNotFound
    <cCall: 'gtk_recent_chooser_get_show_not_found' returning: #boolean
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
setSelectMultiple: selectMultiple
    <cCall: 'gtk_recent_chooser_set_select_multiple' returning: #void
	args: #( #self #boolean )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getSelectMultiple
    <cCall: 'gtk_recent_chooser_get_select_multiple' returning: #boolean
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
setLimit: limit
    <cCall: 'gtk_recent_chooser_set_limit' returning: #void
	args: #( #self #int )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getLimit
    <cCall: 'gtk_recent_chooser_get_limit' returning: #int
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
setLocalOnly: localOnly
    <cCall: 'gtk_recent_chooser_set_local_only' returning: #void
	args: #( #self #boolean )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getLocalOnly
    <cCall: 'gtk_recent_chooser_get_local_only' returning: #boolean
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
setShowTips: showTips
    <cCall: 'gtk_recent_chooser_set_show_tips' returning: #void
	args: #( #self #boolean )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getShowTips
    <cCall: 'gtk_recent_chooser_get_show_tips' returning: #boolean
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
setShowIcons: showIcons
    <cCall: 'gtk_recent_chooser_set_show_icons' returning: #void
	args: #( #self #boolean )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getShowIcons
    <cCall: 'gtk_recent_chooser_get_show_icons' returning: #boolean
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
setSortType: sortType
    <cCall: 'gtk_recent_chooser_set_sort_type' returning: #void
	args: #( #self #int )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getSortType
    <cCall: 'gtk_recent_chooser_get_sort_type' returning: #int
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
setSortFunc: sortFunc sortData: sortData dataDestroy: dataDestroy
    <cCall: 'gtk_recent_chooser_set_sort_func' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
setCurrentUri: uri error: error
    <cCall: 'gtk_recent_chooser_set_current_uri' returning: #boolean
	args: #( #self #string #cObject )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getCurrentUri
    <cCall: 'gtk_recent_chooser_get_current_uri' returning: #string
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getCurrentItem
    <cCall: 'gtk_recent_chooser_get_current_item' returning: #{GtkRecentInfo}
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
selectUri: uri error: error
    <cCall: 'gtk_recent_chooser_select_uri' returning: #boolean
	args: #( #self #string #cObject )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
unselectUri: uri
    <cCall: 'gtk_recent_chooser_unselect_uri' returning: #void
	args: #( #self #string )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
selectAll
    <cCall: 'gtk_recent_chooser_select_all' returning: #void
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
unselectAll
    <cCall: 'gtk_recent_chooser_unselect_all' returning: #void
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getItems
    <cCall: 'gtk_recent_chooser_get_items' returning: #{GList}
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getUris: length
    <cCall: 'gtk_recent_chooser_get_uris' returning: #string
	args: #( #self #cObject )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
addFilter: filter
    <cCall: 'gtk_recent_chooser_add_filter' returning: #void
	args: #( #self #cObject )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
removeFilter: filter
    <cCall: 'gtk_recent_chooser_remove_filter' returning: #void
	args: #( #self #cObject )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
listFilters
    <cCall: 'gtk_recent_chooser_list_filters' returning: #{GSList}
	args: #( #self )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
setFilter: filter
    <cCall: 'gtk_recent_chooser_set_filter' returning: #void
	args: #( #self #cObject )>! !

!GtkRecentChooser methodsFor: 'C call-outs'!
getFilter
    <cCall: 'gtk_recent_chooser_get_filter' returning: #{GtkRecentFilter}
	args: #( #self )>! !

!GtkRecentChooserDialog class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_recent_chooser_dialog_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRecentChooserDialog!

!GtkRecentChooserDialog class methodsFor: 'C call-outs'!
new: title parent: parent varargs: varargs
    <cCall: 'gtk_recent_chooser_dialog_new' returning: #{GtkRecentChooserDialog}
	args: #( #string #cObject #variadic )>! !

!GtkRecentChooserDialog class methodsFor: 'C call-outs'!
newForManager: title parent: parent manager: manager varargs: varargs
    <cCall: 'gtk_recent_chooser_dialog_new_for_manager' returning: #{GtkRecentChooserDialog}
	args: #( #string #cObject #cObject #variadic )>! !

!GtkRecentChooserMenu class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_recent_chooser_menu_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRecentChooserMenu!

!GtkRecentChooserMenu class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_recent_chooser_menu_new' returning: #{GtkRecentChooserMenu}
	args: #( )>! !

!GtkRecentChooserMenu class methodsFor: 'C call-outs'!
newForManager: manager
    <cCall: 'gtk_recent_chooser_menu_new_for_manager' returning: #{GtkRecentChooserMenu}
	args: #( #cObject )>! !

!GtkRecentChooserMenu methodsFor: 'C call-outs'!
getShowNumbers
    <cCall: 'gtk_recent_chooser_menu_get_show_numbers' returning: #boolean
	args: #( #self )>! !

!GtkRecentChooserMenu methodsFor: 'C call-outs'!
setShowNumbers: showNumbers
    <cCall: 'gtk_recent_chooser_menu_set_show_numbers' returning: #void
	args: #( #self #boolean )>! !

!GtkRecentChooserWidget class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_recent_chooser_widget_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkRecentChooserWidget!

!GtkRecentChooserWidget class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_recent_chooser_widget_new' returning: #{GtkRecentChooserWidget}
	args: #( )>! !

!GtkRecentChooserWidget class methodsFor: 'C call-outs'!
newForManager: manager
    <cCall: 'gtk_recent_chooser_widget_new_for_manager' returning: #{GtkRecentChooserWidget}
	args: #( #cObject )>! !

!GtkScaleButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_scale_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkScaleButton!

!GtkScaleButton class methodsFor: 'C call-outs'!
new: size min: min max: max step: step icons: icons
    <cCall: 'gtk_scale_button_new' returning: #{GtkScaleButton}
	args: #( #int #double #double #double #cObject )>! !

!GtkScaleButton methodsFor: 'C call-outs'!
setIcons: icons
    <cCall: 'gtk_scale_button_set_icons' returning: #void
	args: #( #self #cObject )>! !

!GtkScaleButton methodsFor: 'C call-outs'!
getValue
    <cCall: 'gtk_scale_button_get_value' returning: #double
	args: #( #self )>! !

!GtkScaleButton methodsFor: 'C call-outs'!
setValue: value
    <cCall: 'gtk_scale_button_set_value' returning: #void
	args: #( #self #double )>! !

!GtkScaleButton methodsFor: 'C call-outs'!
getAdjustment
    <cCall: 'gtk_scale_button_get_adjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkScaleButton methodsFor: 'C call-outs'!
setAdjustment: adjustment
    <cCall: 'gtk_scale_button_set_adjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkScaleButton methodsFor: 'C call-outs'!
getPlusButton
    <cCall: 'gtk_scale_button_get_plus_button' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkScaleButton methodsFor: 'C call-outs'!
getMinusButton
    <cCall: 'gtk_scale_button_get_minus_button' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkScaleButton methodsFor: 'C call-outs'!
getPopup
    <cCall: 'gtk_scale_button_get_popup' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkVScrollbar class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_vscrollbar_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkVScrollbar!

!GtkVScrollbar class methodsFor: 'C call-outs'!
new: adjustment
    <cCall: 'gtk_vscrollbar_new' returning: #{GtkVScrollbar}
	args: #( #cObject )>! !

!GtkViewport class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_viewport_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkViewport!

!GtkViewport class methodsFor: 'C call-outs'!
new: hadjustment vadjustment: vadjustment
    <cCall: 'gtk_viewport_new' returning: #{GtkViewport}
	args: #( #cObject #cObject )>! !

!GtkViewport methodsFor: 'C call-outs'!
getHadjustment
    <cCall: 'gtk_viewport_get_hadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkViewport methodsFor: 'C call-outs'!
getVadjustment
    <cCall: 'gtk_viewport_get_vadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkViewport methodsFor: 'C call-outs'!
setHadjustment: adjustment
    <cCall: 'gtk_viewport_set_hadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkViewport methodsFor: 'C call-outs'!
setVadjustment: adjustment
    <cCall: 'gtk_viewport_set_vadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkViewport methodsFor: 'C call-outs'!
setShadowType: type
    <cCall: 'gtk_viewport_set_shadow_type' returning: #void
	args: #( #self #int )>! !

!GtkViewport methodsFor: 'C call-outs'!
getShadowType
    <cCall: 'gtk_viewport_get_shadow_type' returning: #int
	args: #( #self )>! !

!GtkViewport methodsFor: 'C call-outs'!
getBinWindow
    <cCall: 'gtk_viewport_get_bin_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkViewport methodsFor: 'C call-outs'!
getViewWindow
    <cCall: 'gtk_viewport_get_view_window' returning: #{GdkWindow}
	args: #( #self )>! !

!GtkScrolledWindow class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_scrolled_window_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkScrolledWindow!

!GtkScrolledWindow class methodsFor: 'C call-outs'!
new: hadjustment vadjustment: vadjustment
    <cCall: 'gtk_scrolled_window_new' returning: #{GtkScrolledWindow}
	args: #( #cObject #cObject )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
setHadjustment: hadjustment
    <cCall: 'gtk_scrolled_window_set_hadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
setVadjustment: vadjustment
    <cCall: 'gtk_scrolled_window_set_vadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
getHadjustment
    <cCall: 'gtk_scrolled_window_get_hadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
getVadjustment
    <cCall: 'gtk_scrolled_window_get_vadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
getHscrollbar
    <cCall: 'gtk_scrolled_window_get_hscrollbar' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
getVscrollbar
    <cCall: 'gtk_scrolled_window_get_vscrollbar' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
setPolicy: hscrollbarPolicy vscrollbarPolicy: vscrollbarPolicy
    <cCall: 'gtk_scrolled_window_set_policy' returning: #void
	args: #( #self #int #int )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
getPolicy: hscrollbarPolicy vscrollbarPolicy: vscrollbarPolicy
    <cCall: 'gtk_scrolled_window_get_policy' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
setPlacement: windowPlacement
    <cCall: 'gtk_scrolled_window_set_placement' returning: #void
	args: #( #self #int )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
unsetPlacement
    <cCall: 'gtk_scrolled_window_unset_placement' returning: #void
	args: #( #self )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
getPlacement
    <cCall: 'gtk_scrolled_window_get_placement' returning: #int
	args: #( #self )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
setShadowType: type
    <cCall: 'gtk_scrolled_window_set_shadow_type' returning: #void
	args: #( #self #int )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
getShadowType
    <cCall: 'gtk_scrolled_window_get_shadow_type' returning: #int
	args: #( #self )>! !

!GtkScrolledWindow methodsFor: 'C call-outs'!
addWithViewport: child
    <cCall: 'gtk_scrolled_window_add_with_viewport' returning: #void
	args: #( #self #cObject )>! !

!GtkSeparatorMenuItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_separator_menu_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkSeparatorMenuItem!

!GtkSeparatorMenuItem class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_separator_menu_item_new' returning: #{GtkSeparatorMenuItem}
	args: #( )>! !

!GtkSeparatorToolItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_separator_tool_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkSeparatorToolItem!

!GtkSeparatorToolItem class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_separator_tool_item_new' returning: #{GtkSeparatorToolItem}
	args: #( )>! !

!GtkSeparatorToolItem methodsFor: 'C call-outs'!
getDraw
    <cCall: 'gtk_separator_tool_item_get_draw' returning: #boolean
	args: #( #self )>! !

!GtkSeparatorToolItem methodsFor: 'C call-outs'!
setDraw: draw
    <cCall: 'gtk_separator_tool_item_set_draw' returning: #void
	args: #( #self #boolean )>! !

!Gtk class methodsFor: 'C call-outs'!
showUri: screen uri: uri timestamp: timestamp error: error
    <cCall: 'gtk_show_uri' returning: #boolean
	args: #( #cObject #string #int #cObject )>! !

!GtkSpinButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_spin_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkSpinButton!

!GtkSpinButton methodsFor: 'C call-outs'!
configure: adjustment climbRate: climbRate digits: digits
    <cCall: 'gtk_spin_button_configure' returning: #void
	args: #( #self #cObject #double #int )>! !

!GtkSpinButton class methodsFor: 'C call-outs'!
new: adjustment climbRate: climbRate digits: digits
    <cCall: 'gtk_spin_button_new' returning: #{GtkSpinButton}
	args: #( #cObject #double #int )>! !

!GtkSpinButton class methodsFor: 'C call-outs'!
newWithRange: min max: max step: step
    <cCall: 'gtk_spin_button_new_with_range' returning: #{GtkSpinButton}
	args: #( #double #double #double )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
setAdjustment: adjustment
    <cCall: 'gtk_spin_button_set_adjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
getAdjustment
    <cCall: 'gtk_spin_button_get_adjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
setDigits: digits
    <cCall: 'gtk_spin_button_set_digits' returning: #void
	args: #( #self #int )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
getDigits
    <cCall: 'gtk_spin_button_get_digits' returning: #int
	args: #( #self )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
setIncrements: step page: page
    <cCall: 'gtk_spin_button_set_increments' returning: #void
	args: #( #self #double #double )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
getIncrements: step page: page
    <cCall: 'gtk_spin_button_get_increments' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
setRange: min max: max
    <cCall: 'gtk_spin_button_set_range' returning: #void
	args: #( #self #double #double )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
getRange: min max: max
    <cCall: 'gtk_spin_button_get_range' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
getValue
    <cCall: 'gtk_spin_button_get_value' returning: #double
	args: #( #self )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
getValueAsInt
    <cCall: 'gtk_spin_button_get_value_as_int' returning: #int
	args: #( #self )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
setValue: value
    <cCall: 'gtk_spin_button_set_value' returning: #void
	args: #( #self #double )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
setUpdatePolicy: policy
    <cCall: 'gtk_spin_button_set_update_policy' returning: #void
	args: #( #self #int )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
getUpdatePolicy
    <cCall: 'gtk_spin_button_get_update_policy' returning: #int
	args: #( #self )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
setNumeric: numeric
    <cCall: 'gtk_spin_button_set_numeric' returning: #void
	args: #( #self #boolean )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
getNumeric
    <cCall: 'gtk_spin_button_get_numeric' returning: #boolean
	args: #( #self )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
spin: direction increment: increment
    <cCall: 'gtk_spin_button_spin' returning: #void
	args: #( #self #int #double )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
setWrap: wrap
    <cCall: 'gtk_spin_button_set_wrap' returning: #void
	args: #( #self #boolean )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
getWrap
    <cCall: 'gtk_spin_button_get_wrap' returning: #boolean
	args: #( #self )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
setSnapToTicks: snapToTicks
    <cCall: 'gtk_spin_button_set_snap_to_ticks' returning: #void
	args: #( #self #boolean )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
getSnapToTicks
    <cCall: 'gtk_spin_button_get_snap_to_ticks' returning: #boolean
	args: #( #self )>! !

!GtkSpinButton methodsFor: 'C call-outs'!
update
    <cCall: 'gtk_spin_button_update' returning: #void
	args: #( #self )>! !

!GtkSpinner class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_spinner_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkSpinner!

!GtkSpinner class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_spinner_new' returning: #{GtkSpinner}
	args: #( )>! !

!GtkSpinner methodsFor: 'C call-outs'!
start
    <cCall: 'gtk_spinner_start' returning: #void
	args: #( #self )>! !

!GtkSpinner methodsFor: 'C call-outs'!
stop
    <cCall: 'gtk_spinner_stop' returning: #void
	args: #( #self )>! !

!GtkStatusbar class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_statusbar_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkStatusbar!

!GtkStatusbar class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_statusbar_new' returning: #{GtkStatusbar}
	args: #( )>! !

!GtkStatusbar methodsFor: 'C call-outs'!
getContextId: contextDescription
    <cCall: 'gtk_statusbar_get_context_id' returning: #int
	args: #( #self #string )>! !

!GtkStatusbar methodsFor: 'C call-outs'!
push: contextId text: text
    <cCall: 'gtk_statusbar_push' returning: #int
	args: #( #self #int #string )>! !

!GtkStatusbar methodsFor: 'C call-outs'!
pop: contextId
    <cCall: 'gtk_statusbar_pop' returning: #void
	args: #( #self #int )>! !

!GtkStatusbar methodsFor: 'C call-outs'!
remove: contextId messageId: messageId
    <cCall: 'gtk_statusbar_remove' returning: #void
	args: #( #self #int #int )>! !

!GtkStatusbar methodsFor: 'C call-outs'!
removeAll: contextId
    <cCall: 'gtk_statusbar_remove_all' returning: #void
	args: #( #self #int )>! !

!GtkStatusbar methodsFor: 'C call-outs'!
setHasResizeGrip: setting
    <cCall: 'gtk_statusbar_set_has_resize_grip' returning: #void
	args: #( #self #boolean )>! !

!GtkStatusbar methodsFor: 'C call-outs'!
getHasResizeGrip
    <cCall: 'gtk_statusbar_get_has_resize_grip' returning: #boolean
	args: #( #self )>! !

!GtkStatusbar methodsFor: 'C call-outs'!
getMessageArea
    <cCall: 'gtk_statusbar_get_message_area' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkStatusIcon class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_status_icon_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkStatusIcon!

!GtkStatusIcon class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_status_icon_new' returning: #{GtkStatusIcon}
	args: #( )>! !

!GtkStatusIcon class methodsFor: 'C call-outs'!
newFromPixbuf: pixbuf
    <cCall: 'gtk_status_icon_new_from_pixbuf' returning: #{GtkStatusIcon}
	args: #( #cObject )>! !

!GtkStatusIcon class methodsFor: 'C call-outs'!
newFromFile: filename
    <cCall: 'gtk_status_icon_new_from_file' returning: #{GtkStatusIcon}
	args: #( #string )>! !

!GtkStatusIcon class methodsFor: 'C call-outs'!
newFromStock: stockId
    <cCall: 'gtk_status_icon_new_from_stock' returning: #{GtkStatusIcon}
	args: #( #string )>! !

!GtkStatusIcon class methodsFor: 'C call-outs'!
newFromIconName: iconName
    <cCall: 'gtk_status_icon_new_from_icon_name' returning: #{GtkStatusIcon}
	args: #( #string )>! !

!GtkStatusIcon class methodsFor: 'C call-outs'!
newFromGicon: icon
    <cCall: 'gtk_status_icon_new_from_gicon' returning: #{GtkStatusIcon}
	args: #( #cObject )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setFromPixbuf: pixbuf
    <cCall: 'gtk_status_icon_set_from_pixbuf' returning: #void
	args: #( #self #cObject )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setFromFile: filename
    <cCall: 'gtk_status_icon_set_from_file' returning: #void
	args: #( #self #string )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setFromStock: stockId
    <cCall: 'gtk_status_icon_set_from_stock' returning: #void
	args: #( #self #string )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setFromIconName: iconName
    <cCall: 'gtk_status_icon_set_from_icon_name' returning: #void
	args: #( #self #string )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setFromGicon: icon
    <cCall: 'gtk_status_icon_set_from_gicon' returning: #void
	args: #( #self #cObject )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getStorageType
    <cCall: 'gtk_status_icon_get_storage_type' returning: #int
	args: #( #self )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getPixbuf
    <cCall: 'gtk_status_icon_get_pixbuf' returning: #{GdkPixbuf}
	args: #( #self )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getGicon
    <cCall: 'gtk_status_icon_get_gicon' returning: #{GIcon}
	args: #( #self )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getSize
    <cCall: 'gtk_status_icon_get_size' returning: #int
	args: #( #self )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setScreen: screen
    <cCall: 'gtk_status_icon_set_screen' returning: #void
	args: #( #self #cObject )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getScreen
    <cCall: 'gtk_status_icon_get_screen' returning: #{GdkScreen}
	args: #( #self )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setHasTooltip: hasTooltip
    <cCall: 'gtk_status_icon_set_has_tooltip' returning: #void
	args: #( #self #boolean )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setTooltipText: text
    <cCall: 'gtk_status_icon_set_tooltip_text' returning: #void
	args: #( #self #string )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setTooltipMarkup: markup
    <cCall: 'gtk_status_icon_set_tooltip_markup' returning: #void
	args: #( #self #string )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setTitle: title
    <cCall: 'gtk_status_icon_set_title' returning: #void
	args: #( #self #string )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setName: name
    <cCall: 'gtk_status_icon_set_name' returning: #void
	args: #( #self #string )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setVisible: visible
    <cCall: 'gtk_status_icon_set_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getVisible
    <cCall: 'gtk_status_icon_get_visible' returning: #boolean
	args: #( #self )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
setBlinking: blinking
    <cCall: 'gtk_status_icon_set_blinking' returning: #void
	args: #( #self #boolean )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getBlinking
    <cCall: 'gtk_status_icon_get_blinking' returning: #boolean
	args: #( #self )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
isEmbedded
    <cCall: 'gtk_status_icon_is_embedded' returning: #boolean
	args: #( #self )>! !

!GtkStatusIcon class methodsFor: 'C call-outs'!
positionMenu: menu x: x y: y pushIn: pushIn userData: userData
    <cCall: 'gtk_status_icon_position_menu' returning: #void
	args: #( #cObject #cObject #cObject #cObject #cObject )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getGeometry: screen area: area orientation: orientation
    <cCall: 'gtk_status_icon_get_geometry' returning: #boolean
	args: #( #self #cObject #cObject #cObject )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getHasTooltip
    <cCall: 'gtk_status_icon_get_has_tooltip' returning: #boolean
	args: #( #self )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getTooltipText
    <cCall: 'gtk_status_icon_get_tooltip_text' returning: #string
	args: #( #self )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getTooltipMarkup
    <cCall: 'gtk_status_icon_get_tooltip_markup' returning: #string
	args: #( #self )>! !

!GtkStatusIcon methodsFor: 'C call-outs'!
getX11WindowId
    <cCall: 'gtk_status_icon_get_x11_window_id' returning: #int
	args: #( #self )>! !

!Gtk class methodsFor: 'C call-outs'!
stockAdd: items nItems: nItems
    <cCall: 'gtk_stock_add' returning: #void
	args: #( #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
stockAddStatic: items nItems: nItems
    <cCall: 'gtk_stock_add_static' returning: #void
	args: #( #cObject #int )>! !

!Gtk class methodsFor: 'C call-outs'!
stockLookup: stockId item: item
    <cCall: 'gtk_stock_lookup' returning: #boolean
	args: #( #string #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
stockListIds
    <cCall: 'gtk_stock_list_ids' returning: #{GSList}
	args: #( )>! !

!GtkStockItem methodsFor: 'C call-outs'!
copy
    <cCall: 'gtk_stock_item_copy' returning: #{GtkStockItem}
	args: #( #self )>! !

!GtkStockItem methodsFor: 'C call-outs'!
free
    (self isAbsolute and: [ self address > 0 ])
	ifTrue: [ self primFree. self address: 0 ]!
primFree
    <cCall: 'gtk_stock_item_free' returning: #void
	args: #( #self )>! !

!Gtk class methodsFor: 'C call-outs'!
stockSetTranslateFunc: domain func: func data: data notify: notify
    <cCall: 'gtk_stock_set_translate_func' returning: #void
	args: #( #string #cObject #cObject #int )>! !

!GtkTable class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_table_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTable!

!GtkTable class methodsFor: 'C call-outs'!
new: rows columns: columns homogeneous: homogeneous
    <cCall: 'gtk_table_new' returning: #{GtkTable}
	args: #( #int #int #boolean )>! !

!GtkTable methodsFor: 'C call-outs'!
resize: rows columns: columns
    <cCall: 'gtk_table_resize' returning: #void
	args: #( #self #int #int )>! !

!GtkTable methodsFor: 'C call-outs'!
attach: child leftAttach: leftAttach rightAttach: rightAttach topAttach: topAttach bottomAttach: bottomAttach xoptions: xoptions yoptions: yoptions xpadding: xpadding ypadding: ypadding
    <cCall: 'gtk_table_attach' returning: #void
	args: #( #self #cObject #int #int #int #int #int #int #int #int )>! !

!GtkTable methodsFor: 'C call-outs'!
attachDefaults: widget leftAttach: leftAttach rightAttach: rightAttach topAttach: topAttach bottomAttach: bottomAttach
    <cCall: 'gtk_table_attach_defaults' returning: #void
	args: #( #self #cObject #int #int #int #int )>! !

!GtkTable methodsFor: 'C call-outs'!
setRowSpacing: row spacing: spacing
    <cCall: 'gtk_table_set_row_spacing' returning: #void
	args: #( #self #int #int )>! !

!GtkTable methodsFor: 'C call-outs'!
getRowSpacing: row
    <cCall: 'gtk_table_get_row_spacing' returning: #int
	args: #( #self #int )>! !

!GtkTable methodsFor: 'C call-outs'!
setColSpacing: column spacing: spacing
    <cCall: 'gtk_table_set_col_spacing' returning: #void
	args: #( #self #int #int )>! !

!GtkTable methodsFor: 'C call-outs'!
getColSpacing: column
    <cCall: 'gtk_table_get_col_spacing' returning: #int
	args: #( #self #int )>! !

!GtkTable methodsFor: 'C call-outs'!
setRowSpacings: spacing
    <cCall: 'gtk_table_set_row_spacings' returning: #void
	args: #( #self #int )>! !

!GtkTable methodsFor: 'C call-outs'!
getDefaultRowSpacing
    <cCall: 'gtk_table_get_default_row_spacing' returning: #int
	args: #( #self )>! !

!GtkTable methodsFor: 'C call-outs'!
setColSpacings: spacing
    <cCall: 'gtk_table_set_col_spacings' returning: #void
	args: #( #self #int )>! !

!GtkTable methodsFor: 'C call-outs'!
getDefaultColSpacing
    <cCall: 'gtk_table_get_default_col_spacing' returning: #int
	args: #( #self )>! !

!GtkTable methodsFor: 'C call-outs'!
setHomogeneous: homogeneous
    <cCall: 'gtk_table_set_homogeneous' returning: #void
	args: #( #self #boolean )>! !

!GtkTable methodsFor: 'C call-outs'!
getHomogeneous
    <cCall: 'gtk_table_get_homogeneous' returning: #boolean
	args: #( #self )>! !

!GtkTable methodsFor: 'C call-outs'!
getSize: rows columns: columns
    <cCall: 'gtk_table_get_size' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTearoffMenuItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tearoff_menu_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTearoffMenuItem!

!GtkTearoffMenuItem class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_tearoff_menu_item_new' returning: #{GtkTearoffMenuItem}
	args: #( )>! !

!GtkTextTagTable class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_text_tag_table_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTextTagTable!

!GtkTextTagTable class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_text_tag_table_new' returning: #{GtkTextTagTable}
	args: #( )>! !

!GtkTextTagTable methodsFor: 'C call-outs'!
add: tag
    <cCall: 'gtk_text_tag_table_add' returning: #void
	args: #( #self #cObject )>! !

!GtkTextTagTable methodsFor: 'C call-outs'!
remove: tag
    <cCall: 'gtk_text_tag_table_remove' returning: #void
	args: #( #self #cObject )>! !

!GtkTextTagTable methodsFor: 'C call-outs'!
lookup: name
    <cCall: 'gtk_text_tag_table_lookup' returning: #{GtkTextTag}
	args: #( #self #string )>! !

!GtkTextTagTable methodsFor: 'C call-outs'!
foreach: func data: data
    <cCall: 'gtk_text_tag_table_foreach' returning: #void
	args: #( #self #int #cObject )>! !

!GtkTextTagTable methodsFor: 'C call-outs'!
getSize
    <cCall: 'gtk_text_tag_table_get_size' returning: #int
	args: #( #self )>! !

!GtkTextMark class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_text_mark_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTextMark!

!GtkTextMark methodsFor: 'C call-outs'!
setVisible: setting
    <cCall: 'gtk_text_mark_set_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkTextMark methodsFor: 'C call-outs'!
getVisible
    <cCall: 'gtk_text_mark_get_visible' returning: #boolean
	args: #( #self )>! !

!GtkTextMark class methodsFor: 'C call-outs'!
new: name leftGravity: leftGravity
    <cCall: 'gtk_text_mark_new' returning: #{GtkTextMark}
	args: #( #string #boolean )>! !

!GtkTextMark methodsFor: 'C call-outs'!
getDeleted
    <cCall: 'gtk_text_mark_get_deleted' returning: #boolean
	args: #( #self )>! !

!GtkTextMark methodsFor: 'C call-outs'!
getBuffer
    <cCall: 'gtk_text_mark_get_buffer' returning: #{GtkTextBuffer}
	args: #( #self )>! !

!GtkTextMark methodsFor: 'C call-outs'!
getLeftGravity
    <cCall: 'gtk_text_mark_get_left_gravity' returning: #boolean
	args: #( #self )>! !

!GtkTextBuffer class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_text_buffer_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTextBuffer!

!GtkTextBuffer class methodsFor: 'C call-outs'!
new: table
    <cCall: 'gtk_text_buffer_new' returning: #{GtkTextBuffer}
	args: #( #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getLineCount
    <cCall: 'gtk_text_buffer_get_line_count' returning: #int
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getCharCount
    <cCall: 'gtk_text_buffer_get_char_count' returning: #int
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getTagTable
    <cCall: 'gtk_text_buffer_get_tag_table' returning: #{GtkTextTagTable}
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
setText: text len: len
    <cCall: 'gtk_text_buffer_set_text' returning: #void
	args: #( #self #string #int )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
insert: iter text: text len: len
    <cCall: 'gtk_text_buffer_insert' returning: #void
	args: #( #self #cObject #string #int )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
insertAtCursor: text len: len
    <cCall: 'gtk_text_buffer_insert_at_cursor' returning: #void
	args: #( #self #string #int )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
insertInteractive: iter text: text len: len defaultEditable: defaultEditable
    <cCall: 'gtk_text_buffer_insert_interactive' returning: #boolean
	args: #( #self #cObject #string #int #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
insertInteractiveAtCursor: text len: len defaultEditable: defaultEditable
    <cCall: 'gtk_text_buffer_insert_interactive_at_cursor' returning: #boolean
	args: #( #self #string #int #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
insertRange: iter start: start end: end
    <cCall: 'gtk_text_buffer_insert_range' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
insertRangeInteractive: iter start: start end: end defaultEditable: defaultEditable
    <cCall: 'gtk_text_buffer_insert_range_interactive' returning: #boolean
	args: #( #self #cObject #cObject #cObject #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
insertWithTags: iter text: text len: len varargs: varargs
    <cCall: 'gtk_text_buffer_insert_with_tags' returning: #void
	args: #( #self #cObject #string #int #variadic )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
insertWithTagsByName: iter text: text len: len varargs: varargs
    <cCall: 'gtk_text_buffer_insert_with_tags_by_name' returning: #void
	args: #( #self #cObject #string #int #variadic )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
delete: start end: end
    <cCall: 'gtk_text_buffer_delete' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
deleteInteractive: startIter endIter: endIter defaultEditable: defaultEditable
    <cCall: 'gtk_text_buffer_delete_interactive' returning: #boolean
	args: #( #self #cObject #cObject #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
backspace: iter interactive: interactive defaultEditable: defaultEditable
    <cCall: 'gtk_text_buffer_backspace' returning: #boolean
	args: #( #self #cObject #boolean #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getText: start end: end includeHiddenChars: includeHiddenChars
    <cCall: 'gtk_text_buffer_get_text' returning: #string
	args: #( #self #cObject #cObject #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getSlice: start end: end includeHiddenChars: includeHiddenChars
    <cCall: 'gtk_text_buffer_get_slice' returning: #string
	args: #( #self #cObject #cObject #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
insertPixbuf: iter pixbuf: pixbuf
    <cCall: 'gtk_text_buffer_insert_pixbuf' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
insertChildAnchor: iter anchor: anchor
    <cCall: 'gtk_text_buffer_insert_child_anchor' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
createChildAnchor: iter
    <cCall: 'gtk_text_buffer_create_child_anchor' returning: #{GtkTextChildAnchor}
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
addMark: mark where: where
    <cCall: 'gtk_text_buffer_add_mark' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
createMark: markName where: where leftGravity: leftGravity
    <cCall: 'gtk_text_buffer_create_mark' returning: #{GtkTextMark}
	args: #( #self #string #cObject #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
moveMark: mark where: where
    <cCall: 'gtk_text_buffer_move_mark' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
deleteMark: mark
    <cCall: 'gtk_text_buffer_delete_mark' returning: #void
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getMark: name
    <cCall: 'gtk_text_buffer_get_mark' returning: #{GtkTextMark}
	args: #( #self #string )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
moveMarkByName: name where: where
    <cCall: 'gtk_text_buffer_move_mark_by_name' returning: #void
	args: #( #self #string #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
deleteMarkByName: name
    <cCall: 'gtk_text_buffer_delete_mark_by_name' returning: #void
	args: #( #self #string )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getInsert
    <cCall: 'gtk_text_buffer_get_insert' returning: #{GtkTextMark}
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getSelectionBound
    <cCall: 'gtk_text_buffer_get_selection_bound' returning: #{GtkTextMark}
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
placeCursor: where
    <cCall: 'gtk_text_buffer_place_cursor' returning: #void
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
selectRange: ins bound: bound
    <cCall: 'gtk_text_buffer_select_range' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
applyTag: tag start: start end: end
    <cCall: 'gtk_text_buffer_apply_tag' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
removeTag: tag start: start end: end
    <cCall: 'gtk_text_buffer_remove_tag' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
applyTagByName: name start: start end: end
    <cCall: 'gtk_text_buffer_apply_tag_by_name' returning: #void
	args: #( #self #string #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
removeTagByName: name start: start end: end
    <cCall: 'gtk_text_buffer_remove_tag_by_name' returning: #void
	args: #( #self #string #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
removeAllTags: start end: end
    <cCall: 'gtk_text_buffer_remove_all_tags' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
createTag: tagName varargs: varargs
    <cCall: 'gtk_text_buffer_create_tag' returning: #{GtkTextTag}
	args: #( #self #string #variadic )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getIterAtLineOffset: iter lineNumber: lineNumber charOffset: charOffset
    <cCall: 'gtk_text_buffer_get_iter_at_line_offset' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getIterAtLineIndex: iter lineNumber: lineNumber byteIndex: byteIndex
    <cCall: 'gtk_text_buffer_get_iter_at_line_index' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getIterAtOffset: iter charOffset: charOffset
    <cCall: 'gtk_text_buffer_get_iter_at_offset' returning: #void
	args: #( #self #cObject #int )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getIterAtLine: iter lineNumber: lineNumber
    <cCall: 'gtk_text_buffer_get_iter_at_line' returning: #void
	args: #( #self #cObject #int )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getStartIter: iter
    <cCall: 'gtk_text_buffer_get_start_iter' returning: #void
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getEndIter: iter
    <cCall: 'gtk_text_buffer_get_end_iter' returning: #void
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getBounds: start end: end
    <cCall: 'gtk_text_buffer_get_bounds' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getIterAtMark: iter mark: mark
    <cCall: 'gtk_text_buffer_get_iter_at_mark' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getIterAtChildAnchor: iter anchor: anchor
    <cCall: 'gtk_text_buffer_get_iter_at_child_anchor' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getModified
    <cCall: 'gtk_text_buffer_get_modified' returning: #boolean
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
setModified: setting
    <cCall: 'gtk_text_buffer_set_modified' returning: #void
	args: #( #self #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getHasSelection
    <cCall: 'gtk_text_buffer_get_has_selection' returning: #boolean
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
addSelectionClipboard: clipboard
    <cCall: 'gtk_text_buffer_add_selection_clipboard' returning: #void
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
removeSelectionClipboard: clipboard
    <cCall: 'gtk_text_buffer_remove_selection_clipboard' returning: #void
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
cutClipboard: clipboard defaultEditable: defaultEditable
    <cCall: 'gtk_text_buffer_cut_clipboard' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
copyClipboard: clipboard
    <cCall: 'gtk_text_buffer_copy_clipboard' returning: #void
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
pasteClipboard: clipboard overrideLocation: overrideLocation defaultEditable: defaultEditable
    <cCall: 'gtk_text_buffer_paste_clipboard' returning: #void
	args: #( #self #cObject #cObject #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getSelectionBounds: start end: end
    <cCall: 'gtk_text_buffer_get_selection_bounds' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
deleteSelection: interactive defaultEditable: defaultEditable
    <cCall: 'gtk_text_buffer_delete_selection' returning: #boolean
	args: #( #self #boolean #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
beginUserAction
    <cCall: 'gtk_text_buffer_begin_user_action' returning: #void
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
endUserAction
    <cCall: 'gtk_text_buffer_end_user_action' returning: #void
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getCopyTargetList
    <cCall: 'gtk_text_buffer_get_copy_target_list' returning: #{GtkTargetList}
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getPasteTargetList
    <cCall: 'gtk_text_buffer_get_paste_target_list' returning: #{GtkTargetList}
	args: #( #self )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
registerSerializeFormat: mimeType function: function userData: userData userDataDestroy: userDataDestroy
    <cCall: 'gtk_text_buffer_register_serialize_format' returning: #cObject
	args: #( #self #string #cObject #cObject #int )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
registerSerializeTagset: tagsetName
    <cCall: 'gtk_text_buffer_register_serialize_tagset' returning: #cObject
	args: #( #self #string )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
registerDeserializeFormat: mimeType function: function userData: userData userDataDestroy: userDataDestroy
    <cCall: 'gtk_text_buffer_register_deserialize_format' returning: #cObject
	args: #( #self #string #cObject #cObject #int )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
registerDeserializeTagset: tagsetName
    <cCall: 'gtk_text_buffer_register_deserialize_tagset' returning: #cObject
	args: #( #self #string )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
unregisterSerializeFormat: format
    <cCall: 'gtk_text_buffer_unregister_serialize_format' returning: #void
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
unregisterDeserializeFormat: format
    <cCall: 'gtk_text_buffer_unregister_deserialize_format' returning: #void
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
deserializeSetCanCreateTags: format canCreateTags: canCreateTags
    <cCall: 'gtk_text_buffer_deserialize_set_can_create_tags' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
deserializeGetCanCreateTags: format
    <cCall: 'gtk_text_buffer_deserialize_get_can_create_tags' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getSerializeFormats: nFormats
    <cCall: 'gtk_text_buffer_get_serialize_formats' returning: #cObject
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
getDeserializeFormats: nFormats
    <cCall: 'gtk_text_buffer_get_deserialize_formats' returning: #cObject
	args: #( #self #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
serialize: contentBuffer format: format start: start end: end length: length
    <cCall: 'gtk_text_buffer_serialize' returning: CInt type
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GtkTextBuffer methodsFor: 'C call-outs'!
deserialize: contentBuffer format: format iter: iter data: data length: length error: error
    <cCall: 'gtk_text_buffer_deserialize' returning: #boolean
	args: #( #self #cObject #cObject #cObject #cObject #int #cObject )>! !

!GtkTextView class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_text_view_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTextView!

!GtkTextView class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_text_view_new' returning: #{GtkTextView}
	args: #( )>! !

!GtkTextView class methodsFor: 'C call-outs'!
newWithBuffer: buffer
    <cCall: 'gtk_text_view_new_with_buffer' returning: #{GtkTextView}
	args: #( #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
setBuffer: buffer
    <cCall: 'gtk_text_view_set_buffer' returning: #void
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
getBuffer
    <cCall: 'gtk_text_view_get_buffer' returning: #{GtkTextBuffer}
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
scrollToIter: iter withinMargin: withinMargin useAlign: useAlign xalign: xalign yalign: yalign
    <cCall: 'gtk_text_view_scroll_to_iter' returning: #boolean
	args: #( #self #cObject #double #boolean #double #double )>! !

!GtkTextView methodsFor: 'C call-outs'!
scrollToMark: mark withinMargin: withinMargin useAlign: useAlign xalign: xalign yalign: yalign
    <cCall: 'gtk_text_view_scroll_to_mark' returning: #void
	args: #( #self #cObject #double #boolean #double #double )>! !

!GtkTextView methodsFor: 'C call-outs'!
scrollMarkOnscreen: mark
    <cCall: 'gtk_text_view_scroll_mark_onscreen' returning: #void
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
moveMarkOnscreen: mark
    <cCall: 'gtk_text_view_move_mark_onscreen' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
placeCursorOnscreen
    <cCall: 'gtk_text_view_place_cursor_onscreen' returning: #boolean
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
getVisibleRect: visibleRect
    <cCall: 'gtk_text_view_get_visible_rect' returning: #void
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
setCursorVisible: setting
    <cCall: 'gtk_text_view_set_cursor_visible' returning: #void
	args: #( #self #boolean )>! !

!GtkTextView methodsFor: 'C call-outs'!
getCursorVisible
    <cCall: 'gtk_text_view_get_cursor_visible' returning: #boolean
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
getIterLocation: iter location: location
    <cCall: 'gtk_text_view_get_iter_location' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
getIterAtLocation: iter x: x y: y
    <cCall: 'gtk_text_view_get_iter_at_location' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getIterAtPosition: iter trailing: trailing x: x y: y
    <cCall: 'gtk_text_view_get_iter_at_position' returning: #void
	args: #( #self #cObject #cObject #int #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getLineYrange: iter y: y height: height
    <cCall: 'gtk_text_view_get_line_yrange' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
getLineAtY: targetIter y: y lineTop: lineTop
    <cCall: 'gtk_text_view_get_line_at_y' returning: #void
	args: #( #self #cObject #int #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
bufferToWindowCoords: win bufferX: bufferX bufferY: bufferY windowX: windowX windowY: windowY
    <cCall: 'gtk_text_view_buffer_to_window_coords' returning: #void
	args: #( #self #int #int #int #cObject #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
windowToBufferCoords: win windowX: windowX windowY: windowY bufferX: bufferX bufferY: bufferY
    <cCall: 'gtk_text_view_window_to_buffer_coords' returning: #void
	args: #( #self #int #int #int #cObject #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
getHadjustment
    <cCall: 'gtk_text_view_get_hadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
getVadjustment
    <cCall: 'gtk_text_view_get_vadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
getWindow: win
    <cCall: 'gtk_text_view_get_window' returning: #{GdkWindow}
	args: #( #self #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getWindowType: window
    <cCall: 'gtk_text_view_get_window_type' returning: #int
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
setBorderWindowSize: type size: size
    <cCall: 'gtk_text_view_set_border_window_size' returning: #void
	args: #( #self #int #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getBorderWindowSize: type
    <cCall: 'gtk_text_view_get_border_window_size' returning: #int
	args: #( #self #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
forwardDisplayLine: iter
    <cCall: 'gtk_text_view_forward_display_line' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
backwardDisplayLine: iter
    <cCall: 'gtk_text_view_backward_display_line' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
forwardDisplayLineEnd: iter
    <cCall: 'gtk_text_view_forward_display_line_end' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
backwardDisplayLineStart: iter
    <cCall: 'gtk_text_view_backward_display_line_start' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
startsDisplayLine: iter
    <cCall: 'gtk_text_view_starts_display_line' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
moveVisually: iter count: count
    <cCall: 'gtk_text_view_move_visually' returning: #boolean
	args: #( #self #cObject #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
imContextFilterKeypress: event
    <cCall: 'gtk_text_view_im_context_filter_keypress' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
resetImContext
    <cCall: 'gtk_text_view_reset_im_context' returning: #void
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
addChildAtAnchor: child anchor: anchor
    <cCall: 'gtk_text_view_add_child_at_anchor' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
addChildInWindow: child whichWindow: whichWindow xpos: xpos ypos: ypos
    <cCall: 'gtk_text_view_add_child_in_window' returning: #void
	args: #( #self #cObject #int #int #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
moveChild: child xpos: xpos ypos: ypos
    <cCall: 'gtk_text_view_move_child' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
setWrapMode: wrapMode
    <cCall: 'gtk_text_view_set_wrap_mode' returning: #void
	args: #( #self #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getWrapMode
    <cCall: 'gtk_text_view_get_wrap_mode' returning: #int
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setEditable: setting
    <cCall: 'gtk_text_view_set_editable' returning: #void
	args: #( #self #boolean )>! !

!GtkTextView methodsFor: 'C call-outs'!
getEditable
    <cCall: 'gtk_text_view_get_editable' returning: #boolean
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setOverwrite: overwrite
    <cCall: 'gtk_text_view_set_overwrite' returning: #void
	args: #( #self #boolean )>! !

!GtkTextView methodsFor: 'C call-outs'!
getOverwrite
    <cCall: 'gtk_text_view_get_overwrite' returning: #boolean
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setAcceptsTab: acceptsTab
    <cCall: 'gtk_text_view_set_accepts_tab' returning: #void
	args: #( #self #boolean )>! !

!GtkTextView methodsFor: 'C call-outs'!
getAcceptsTab
    <cCall: 'gtk_text_view_get_accepts_tab' returning: #boolean
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setPixelsAboveLines: pixelsAboveLines
    <cCall: 'gtk_text_view_set_pixels_above_lines' returning: #void
	args: #( #self #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getPixelsAboveLines
    <cCall: 'gtk_text_view_get_pixels_above_lines' returning: #int
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setPixelsBelowLines: pixelsBelowLines
    <cCall: 'gtk_text_view_set_pixels_below_lines' returning: #void
	args: #( #self #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getPixelsBelowLines
    <cCall: 'gtk_text_view_get_pixels_below_lines' returning: #int
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setPixelsInsideWrap: pixelsInsideWrap
    <cCall: 'gtk_text_view_set_pixels_inside_wrap' returning: #void
	args: #( #self #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getPixelsInsideWrap
    <cCall: 'gtk_text_view_get_pixels_inside_wrap' returning: #int
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setJustification: justification
    <cCall: 'gtk_text_view_set_justification' returning: #void
	args: #( #self #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getJustification
    <cCall: 'gtk_text_view_get_justification' returning: #int
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setLeftMargin: leftMargin
    <cCall: 'gtk_text_view_set_left_margin' returning: #void
	args: #( #self #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getLeftMargin
    <cCall: 'gtk_text_view_get_left_margin' returning: #int
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setRightMargin: rightMargin
    <cCall: 'gtk_text_view_set_right_margin' returning: #void
	args: #( #self #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getRightMargin
    <cCall: 'gtk_text_view_get_right_margin' returning: #int
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setIndent: indent
    <cCall: 'gtk_text_view_set_indent' returning: #void
	args: #( #self #int )>! !

!GtkTextView methodsFor: 'C call-outs'!
getIndent
    <cCall: 'gtk_text_view_get_indent' returning: #int
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
setTabs: tabs
    <cCall: 'gtk_text_view_set_tabs' returning: #void
	args: #( #self #cObject )>! !

!GtkTextView methodsFor: 'C call-outs'!
getTabs
    <cCall: 'gtk_text_view_get_tabs' returning: #{PangoTabArray}
	args: #( #self )>! !

!GtkTextView methodsFor: 'C call-outs'!
getDefaultAttributes
    <cCall: 'gtk_text_view_get_default_attributes' returning: #{GtkTextAttributes}
	args: #( #self )>! !

!GtkPixmap class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_pixmap_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkPixmap!

!GtkPixmap class methodsFor: 'C call-outs'!
new: pixmap mask: mask
    <cCall: 'gtk_pixmap_new' returning: #{GtkPixmap}
	args: #( #cObject #cObject )>! !

!GtkPixmap methodsFor: 'C call-outs'!
set: val mask: mask
    <cCall: 'gtk_pixmap_set' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkPixmap methodsFor: 'C call-outs'!
get: val mask: mask
    <cCall: 'gtk_pixmap_get' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkPixmap methodsFor: 'C call-outs'!
setBuildInsensitive: build
    <cCall: 'gtk_pixmap_set_build_insensitive' returning: #void
	args: #( #self #boolean )>! !

!GtkToolbar class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_toolbar_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkToolbar!

!GtkToolbar class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_toolbar_new' returning: #{GtkToolbar}
	args: #( )>! !

!GtkToolbar methodsFor: 'C call-outs'!
insert: item pos: pos
    <cCall: 'gtk_toolbar_insert' returning: #void
	args: #( #self #cObject #int )>! !

!GtkToolbar methodsFor: 'C call-outs'!
getItemIndex: item
    <cCall: 'gtk_toolbar_get_item_index' returning: #int
	args: #( #self #cObject )>! !

!GtkToolbar methodsFor: 'C call-outs'!
getNItems
    <cCall: 'gtk_toolbar_get_n_items' returning: #int
	args: #( #self )>! !

!GtkToolbar methodsFor: 'C call-outs'!
getNthItem: n
    <cCall: 'gtk_toolbar_get_nth_item' returning: #{GtkToolItem}
	args: #( #self #int )>! !

!GtkToolbar methodsFor: 'C call-outs'!
getShowArrow
    <cCall: 'gtk_toolbar_get_show_arrow' returning: #boolean
	args: #( #self )>! !

!GtkToolbar methodsFor: 'C call-outs'!
setShowArrow: showArrow
    <cCall: 'gtk_toolbar_set_show_arrow' returning: #void
	args: #( #self #boolean )>! !

!GtkToolbar methodsFor: 'C call-outs'!
getStyle
    <cCall: 'gtk_toolbar_get_style' returning: #int
	args: #( #self )>! !

!GtkToolbar methodsFor: 'C call-outs'!
setStyle: style
    <cCall: 'gtk_toolbar_set_style' returning: #void
	args: #( #self #int )>! !

!GtkToolbar methodsFor: 'C call-outs'!
unsetStyle
    <cCall: 'gtk_toolbar_unset_style' returning: #void
	args: #( #self )>! !

!GtkToolbar methodsFor: 'C call-outs'!
getIconSize
    <cCall: 'gtk_toolbar_get_icon_size' returning: #int
	args: #( #self )>! !

!GtkToolbar methodsFor: 'C call-outs'!
setIconSize: iconSize
    <cCall: 'gtk_toolbar_set_icon_size' returning: #void
	args: #( #self #int )>! !

!GtkToolbar methodsFor: 'C call-outs'!
unsetIconSize
    <cCall: 'gtk_toolbar_unset_icon_size' returning: #void
	args: #( #self )>! !

!GtkToolbar methodsFor: 'C call-outs'!
getReliefStyle
    <cCall: 'gtk_toolbar_get_relief_style' returning: #int
	args: #( #self )>! !

!GtkToolbar methodsFor: 'C call-outs'!
getDropIndex: x y: y
    <cCall: 'gtk_toolbar_get_drop_index' returning: #int
	args: #( #self #int #int )>! !

!GtkToolbar methodsFor: 'C call-outs'!
setDropHighlightItem: toolItem index: index
    <cCall: 'gtk_toolbar_set_drop_highlight_item' returning: #void
	args: #( #self #cObject #int )>! !

!GtkToolItemGroup class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tool_item_group_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkToolItemGroup!

!GtkToolItemGroup class methodsFor: 'C call-outs'!
new: label
    <cCall: 'gtk_tool_item_group_new' returning: #{GtkToolItemGroup}
	args: #( #string )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
setLabel: label
    <cCall: 'gtk_tool_item_group_set_label' returning: #void
	args: #( #self #string )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
setLabelWidget: labelWidget
    <cCall: 'gtk_tool_item_group_set_label_widget' returning: #void
	args: #( #self #cObject )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
setCollapsed: collapsed
    <cCall: 'gtk_tool_item_group_set_collapsed' returning: #void
	args: #( #self #boolean )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
setEllipsize: ellipsize
    <cCall: 'gtk_tool_item_group_set_ellipsize' returning: #void
	args: #( #self #int )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
setHeaderRelief: style
    <cCall: 'gtk_tool_item_group_set_header_relief' returning: #void
	args: #( #self #int )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
getLabelWidget
    <cCall: 'gtk_tool_item_group_get_label_widget' returning: #{GtkWidget}
	args: #( #self )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
getCollapsed
    <cCall: 'gtk_tool_item_group_get_collapsed' returning: #boolean
	args: #( #self )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
getEllipsize
    <cCall: 'gtk_tool_item_group_get_ellipsize' returning: #int
	args: #( #self )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
getHeaderRelief
    <cCall: 'gtk_tool_item_group_get_header_relief' returning: #int
	args: #( #self )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
insert: item position: position
    <cCall: 'gtk_tool_item_group_insert' returning: #void
	args: #( #self #cObject #int )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
setItemPosition: item position: position
    <cCall: 'gtk_tool_item_group_set_item_position' returning: #void
	args: #( #self #cObject #int )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
getItemPosition: item
    <cCall: 'gtk_tool_item_group_get_item_position' returning: #int
	args: #( #self #cObject )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
getNItems
    <cCall: 'gtk_tool_item_group_get_n_items' returning: #int
	args: #( #self )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
getNthItem: index
    <cCall: 'gtk_tool_item_group_get_nth_item' returning: #{GtkToolItem}
	args: #( #self #int )>! !

!GtkToolItemGroup methodsFor: 'C call-outs'!
getDropItem: x y: y
    <cCall: 'gtk_tool_item_group_get_drop_item' returning: #{GtkToolItem}
	args: #( #self #int #int )>! !

!GtkToolPalette class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tool_palette_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkToolPalette!

!GtkToolPalette class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_tool_palette_new' returning: #{GtkToolPalette}
	args: #( )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
setGroupPosition: group position: position
    <cCall: 'gtk_tool_palette_set_group_position' returning: #void
	args: #( #self #cObject #int )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
setExclusive: group exclusive: exclusive
    <cCall: 'gtk_tool_palette_set_exclusive' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
setExpand: group expand: expand
    <cCall: 'gtk_tool_palette_set_expand' returning: #void
	args: #( #self #cObject #boolean )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
getGroupPosition: group
    <cCall: 'gtk_tool_palette_get_group_position' returning: #int
	args: #( #self #cObject )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
getExclusive: group
    <cCall: 'gtk_tool_palette_get_exclusive' returning: #boolean
	args: #( #self #cObject )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
getExpand: group
    <cCall: 'gtk_tool_palette_get_expand' returning: #boolean
	args: #( #self #cObject )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
setIconSize: iconSize
    <cCall: 'gtk_tool_palette_set_icon_size' returning: #void
	args: #( #self #int )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
unsetIconSize
    <cCall: 'gtk_tool_palette_unset_icon_size' returning: #void
	args: #( #self )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
setStyle: style
    <cCall: 'gtk_tool_palette_set_style' returning: #void
	args: #( #self #int )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
unsetStyle
    <cCall: 'gtk_tool_palette_unset_style' returning: #void
	args: #( #self )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
getIconSize
    <cCall: 'gtk_tool_palette_get_icon_size' returning: #int
	args: #( #self )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
getStyle
    <cCall: 'gtk_tool_palette_get_style' returning: #int
	args: #( #self )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
getDropItem: x y: y
    <cCall: 'gtk_tool_palette_get_drop_item' returning: #{GtkToolItem}
	args: #( #self #int #int )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
getDropGroup: x y: y
    <cCall: 'gtk_tool_palette_get_drop_group' returning: #{GtkToolItemGroup}
	args: #( #self #int #int )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
getDragItem: selection
    <cCall: 'gtk_tool_palette_get_drag_item' returning: #{GtkWidget}
	args: #( #self #cObject )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
setDragSource: targets
    <cCall: 'gtk_tool_palette_set_drag_source' returning: #void
	args: #( #self #int )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
addDragDest: widget flags: flags targets: targets actions: actions
    <cCall: 'gtk_tool_palette_add_drag_dest' returning: #void
	args: #( #self #cObject #int #int #int )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
getHadjustment
    <cCall: 'gtk_tool_palette_get_hadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkToolPalette methodsFor: 'C call-outs'!
getVadjustment
    <cCall: 'gtk_tool_palette_get_vadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkToolShell class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tool_shell_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkToolShell!

!GtkToolShell methodsFor: 'C call-outs'!
getIconSize
    <cCall: 'gtk_tool_shell_get_icon_size' returning: #int
	args: #( #self )>! !

!GtkToolShell methodsFor: 'C call-outs'!
getOrientation
    <cCall: 'gtk_tool_shell_get_orientation' returning: #int
	args: #( #self )>! !

!GtkToolShell methodsFor: 'C call-outs'!
getStyle
    <cCall: 'gtk_tool_shell_get_style' returning: #int
	args: #( #self )>! !

!GtkToolShell methodsFor: 'C call-outs'!
getReliefStyle
    <cCall: 'gtk_tool_shell_get_relief_style' returning: #int
	args: #( #self )>! !

!GtkToolShell methodsFor: 'C call-outs'!
rebuildMenu
    <cCall: 'gtk_tool_shell_rebuild_menu' returning: #void
	args: #( #self )>! !

!GtkToolShell methodsFor: 'C call-outs'!
getTextOrientation
    <cCall: 'gtk_tool_shell_get_text_orientation' returning: #int
	args: #( #self )>! !

!GtkToolShell methodsFor: 'C call-outs'!
getTextAlignment
    <cCall: 'gtk_tool_shell_get_text_alignment' returning: #float
	args: #( #self )>! !

!GtkToolShell methodsFor: 'C call-outs'!
getEllipsizeMode
    <cCall: 'gtk_tool_shell_get_ellipsize_mode' returning: #int
	args: #( #self )>! !

!GtkToolShell methodsFor: 'C call-outs'!
getTextSizeGroup
    <cCall: 'gtk_tool_shell_get_text_size_group' returning: #{GtkSizeGroup}
	args: #( #self )>! !

!Gtk class methodsFor: 'C call-outs'!
testInit: argcp argvp: argvp varargs: varargs
    <cCall: 'gtk_test_init' returning: #void
	args: #( #cObject #cObject #variadic )>! !

!Gtk class methodsFor: 'C call-outs'!
testRegisterAllTypes
    <cCall: 'gtk_test_register_all_types' returning: #void
	args: #( )>! !

!Gtk class methodsFor: 'C call-outs'!
testFindWidget: widget labelPattern: labelPattern widgetType: widgetType
    <cCall: 'gtk_test_find_widget' returning: #{GtkWidget}
	args: #( #cObject #string #long )>! !

!Gtk class methodsFor: 'C call-outs'!
testCreateWidget: widgetType varargs: varargs
    <cCall: 'gtk_test_create_widget' returning: #{GtkWidget}
	args: #( #long #variadic )>! !

!Gtk class methodsFor: 'C call-outs'!
testCreateSimpleWindow: windowTitle dialogText: dialogText
    <cCall: 'gtk_test_create_simple_window' returning: #{GtkWidget}
	args: #( #string #string )>! !

!Gtk class methodsFor: 'C call-outs'!
testDisplayButtonWindow: windowTitle dialogText: dialogText varargs: varargs
    <cCall: 'gtk_test_display_button_window' returning: #{GtkWidget}
	args: #( #string #string #variadic )>! !

!Gtk class methodsFor: 'C call-outs'!
testSliderSetPerc: widget percentage: percentage
    <cCall: 'gtk_test_slider_set_perc' returning: #void
	args: #( #cObject #double )>! !

!Gtk class methodsFor: 'C call-outs'!
testSliderGetValue: widget
    <cCall: 'gtk_test_slider_get_value' returning: #double
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
testSpinButtonClick: spinner button: button upwards: upwards
    <cCall: 'gtk_test_spin_button_click' returning: #boolean
	args: #( #cObject #int #boolean )>! !

!Gtk class methodsFor: 'C call-outs'!
testWidgetClick: widget button: button modifiers: modifiers
    <cCall: 'gtk_test_widget_click' returning: #boolean
	args: #( #cObject #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
testWidgetSendKey: widget keyval: keyval modifiers: modifiers
    <cCall: 'gtk_test_widget_send_key' returning: #boolean
	args: #( #cObject #int #int )>! !

!Gtk class methodsFor: 'C call-outs'!
testTextSet: widget string: string
    <cCall: 'gtk_test_text_set' returning: #void
	args: #( #cObject #string )>! !

!Gtk class methodsFor: 'C call-outs'!
testTextGet: widget
    <cCall: 'gtk_test_text_get' returning: #string
	args: #( #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
testFindSibling: baseWidget widgetType: widgetType
    <cCall: 'gtk_test_find_sibling' returning: #{GtkWidget}
	args: #( #cObject #long )>! !

!Gtk class methodsFor: 'C call-outs'!
testFindLabel: widget labelPattern: labelPattern
    <cCall: 'gtk_test_find_label' returning: #{GtkWidget}
	args: #( #cObject #string )>! !

!GtkTreeDragSource class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_drag_source_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeDragSource!

!GtkTreeDragSource methodsFor: 'C call-outs'!
rowDraggable: path
    <cCall: 'gtk_tree_drag_source_row_draggable' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeDragSource methodsFor: 'C call-outs'!
dragDataDelete: path
    <cCall: 'gtk_tree_drag_source_drag_data_delete' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeDragSource methodsFor: 'C call-outs'!
dragDataGet: path selectionData: selectionData
    <cCall: 'gtk_tree_drag_source_drag_data_get' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeDragDest class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_drag_dest_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeDragDest!

!GtkTreeDragDest methodsFor: 'C call-outs'!
dragDataReceived: dest selectionData: selectionData
    <cCall: 'gtk_tree_drag_dest_drag_data_received' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeDragDest methodsFor: 'C call-outs'!
rowDropPossible: destPath selectionData: selectionData
    <cCall: 'gtk_tree_drag_dest_row_drop_possible' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
treeSetRowDragData: selectionData treeModel: treeModel path: path
    <cCall: 'gtk_tree_set_row_drag_data' returning: #boolean
	args: #( #cObject #cObject #cObject )>! !

!Gtk class methodsFor: 'C call-outs'!
treeGetRowDragData: selectionData treeModel: treeModel path: path
    <cCall: 'gtk_tree_get_row_drag_data' returning: #boolean
	args: #( #cObject #cObject #cObject )>! !

!GtkTreeModelSort class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_model_sort_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeModelSort!

!GtkTreeModelSort class methodsFor: 'C call-outs'!
newWithModel: childModel
    <cCall: 'gtk_tree_model_sort_new_with_model' returning: #{GtkTreeModelSort}
	args: #( #cObject )>! !

!GtkTreeModelSort methodsFor: 'C call-outs'!
getModel
    <cCall: 'gtk_tree_model_sort_get_model' returning: #{GtkTreeModel}
	args: #( #self )>! !

!GtkTreeModelSort methodsFor: 'C call-outs'!
convertChildPathToPath: childPath
    <cCall: 'gtk_tree_model_sort_convert_child_path_to_path' returning: #{GtkTreePath}
	args: #( #self #cObject )>! !

!GtkTreeModelSort methodsFor: 'C call-outs'!
convertChildIterToIter: sortIter childIter: childIter
    <cCall: 'gtk_tree_model_sort_convert_child_iter_to_iter' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeModelSort methodsFor: 'C call-outs'!
convertPathToChildPath: sortedPath
    <cCall: 'gtk_tree_model_sort_convert_path_to_child_path' returning: #{GtkTreePath}
	args: #( #self #cObject )>! !

!GtkTreeModelSort methodsFor: 'C call-outs'!
convertIterToChildIter: childIter sortedIter: sortedIter
    <cCall: 'gtk_tree_model_sort_convert_iter_to_child_iter' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeModelSort methodsFor: 'C call-outs'!
resetDefaultSortFunc
    <cCall: 'gtk_tree_model_sort_reset_default_sort_func' returning: #void
	args: #( #self )>! !

!GtkTreeModelSort methodsFor: 'C call-outs'!
clearCache
    <cCall: 'gtk_tree_model_sort_clear_cache' returning: #void
	args: #( #self )>! !

!GtkTreeModelSort methodsFor: 'C call-outs'!
iterIsValid: iter
    <cCall: 'gtk_tree_model_sort_iter_is_valid' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeSelection class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_selection_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeSelection!

!GtkTreeSelection methodsFor: 'C call-outs'!
setMode: type
    <cCall: 'gtk_tree_selection_set_mode' returning: #void
	args: #( #self #int )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
getMode
    <cCall: 'gtk_tree_selection_get_mode' returning: #int
	args: #( #self )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
setSelectFunction: func data: data destroy: destroy
    <cCall: 'gtk_tree_selection_set_select_function' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
getUserData
    <cCall: 'gtk_tree_selection_get_user_data' returning: #cObject
	args: #( #self )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
getTreeView
    <cCall: 'gtk_tree_selection_get_tree_view' returning: #{GtkTreeView}
	args: #( #self )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
getSelectFunction
    <cCall: 'gtk_tree_selection_get_select_function' returning: #int
	args: #( #self )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
getSelected: model iter: iter
    <cCall: 'gtk_tree_selection_get_selected' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
getSelectedRows: model
    <cCall: 'gtk_tree_selection_get_selected_rows' returning: #{GList}
	args: #( #self #cObject )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
countSelectedRows
    <cCall: 'gtk_tree_selection_count_selected_rows' returning: #int
	args: #( #self )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
selectedForeach: func data: data
    <cCall: 'gtk_tree_selection_selected_foreach' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
selectPath: path
    <cCall: 'gtk_tree_selection_select_path' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
unselectPath: path
    <cCall: 'gtk_tree_selection_unselect_path' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
selectIter: iter
    <cCall: 'gtk_tree_selection_select_iter' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
unselectIter: iter
    <cCall: 'gtk_tree_selection_unselect_iter' returning: #void
	args: #( #self #cObject )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
pathIsSelected: path
    <cCall: 'gtk_tree_selection_path_is_selected' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
iterIsSelected: iter
    <cCall: 'gtk_tree_selection_iter_is_selected' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
selectAll
    <cCall: 'gtk_tree_selection_select_all' returning: #void
	args: #( #self )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
unselectAll
    <cCall: 'gtk_tree_selection_unselect_all' returning: #void
	args: #( #self )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
selectRange: startPath endPath: endPath
    <cCall: 'gtk_tree_selection_select_range' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeSelection methodsFor: 'C call-outs'!
unselectRange: startPath endPath: endPath
    <cCall: 'gtk_tree_selection_unselect_range' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeStore class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_tree_store_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkTreeStore!

!GtkTreeStore class methodsFor: 'C call-outs'!
new: nColumns varargs: varargs
    <cCall: 'gtk_tree_store_new' returning: #{GtkTreeStore}
	args: #( #int #variadic )>! !

!GtkTreeStore class methodsFor: 'C call-outs'!
newv: nColumns types: types
    <cCall: 'gtk_tree_store_newv' returning: #{GtkTreeStore}
	args: #( #int #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
setColumnTypes: nColumns types: types
    <cCall: 'gtk_tree_store_set_column_types' returning: #void
	args: #( #self #int #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
set: iter varargs: varargs
    <cCall: 'gtk_tree_store_set' returning: #void
	args: #( #self #cObject #variadic )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
remove: iter
    <cCall: 'gtk_tree_store_remove' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
insert: iter parent: parent position: position
    <cCall: 'gtk_tree_store_insert' returning: #void
	args: #( #self #cObject #cObject #int )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
insertBefore: iter parent: parent sibling: sibling
    <cCall: 'gtk_tree_store_insert_before' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
insertAfter: iter parent: parent sibling: sibling
    <cCall: 'gtk_tree_store_insert_after' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
insertWithValues: iter parent: parent position: position varargs: varargs
    <cCall: 'gtk_tree_store_insert_with_values' returning: #void
	args: #( #self #cObject #cObject #int #variadic )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
prepend: iter parent: parent
    <cCall: 'gtk_tree_store_prepend' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
append: iter parent: parent
    <cCall: 'gtk_tree_store_append' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
isAncestor: iter descendant: descendant
    <cCall: 'gtk_tree_store_is_ancestor' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
iterDepth: iter
    <cCall: 'gtk_tree_store_iter_depth' returning: #int
	args: #( #self #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
clear
    <cCall: 'gtk_tree_store_clear' returning: #void
	args: #( #self )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
iterIsValid: iter
    <cCall: 'gtk_tree_store_iter_is_valid' returning: #boolean
	args: #( #self #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
reorder: parent newOrder: newOrder
    <cCall: 'gtk_tree_store_reorder' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
swap: a b: b
    <cCall: 'gtk_tree_store_swap' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
moveBefore: iter position: position
    <cCall: 'gtk_tree_store_move_before' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkTreeStore methodsFor: 'C call-outs'!
moveAfter: iter position: position
    <cCall: 'gtk_tree_store_move_after' returning: #void
	args: #( #self #cObject #cObject )>! !

!GtkUIManager class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_ui_manager_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkUIManager!

!GtkUIManager class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_ui_manager_new' returning: #{GtkUIManager}
	args: #( )>! !

!GtkUIManager methodsFor: 'C call-outs'!
setAddTearoffs: addTearoffs
    <cCall: 'gtk_ui_manager_set_add_tearoffs' returning: #void
	args: #( #self #boolean )>! !

!GtkUIManager methodsFor: 'C call-outs'!
getAddTearoffs
    <cCall: 'gtk_ui_manager_get_add_tearoffs' returning: #boolean
	args: #( #self )>! !

!GtkUIManager methodsFor: 'C call-outs'!
insertActionGroup: actionGroup pos: pos
    <cCall: 'gtk_ui_manager_insert_action_group' returning: #void
	args: #( #self #cObject #int )>! !

!GtkUIManager methodsFor: 'C call-outs'!
removeActionGroup: actionGroup
    <cCall: 'gtk_ui_manager_remove_action_group' returning: #void
	args: #( #self #cObject )>! !

!GtkUIManager methodsFor: 'C call-outs'!
getActionGroups
    <cCall: 'gtk_ui_manager_get_action_groups' returning: #{GList}
	args: #( #self )>! !

!GtkUIManager methodsFor: 'C call-outs'!
getAccelGroup
    <cCall: 'gtk_ui_manager_get_accel_group' returning: #{GtkAccelGroup}
	args: #( #self )>! !

!GtkUIManager methodsFor: 'C call-outs'!
getWidget: path
    <cCall: 'gtk_ui_manager_get_widget' returning: #{GtkWidget}
	args: #( #self #string )>! !

!GtkUIManager methodsFor: 'C call-outs'!
getToplevels: types
    <cCall: 'gtk_ui_manager_get_toplevels' returning: #{GSList}
	args: #( #self #int )>! !

!GtkUIManager methodsFor: 'C call-outs'!
getAction: path
    <cCall: 'gtk_ui_manager_get_action' returning: #{GtkAction}
	args: #( #self #string )>! !

!GtkUIManager methodsFor: 'C call-outs'!
addUiFromString: buffer length: length error: error
    <cCall: 'gtk_ui_manager_add_ui_from_string' returning: #int
	args: #( #self #string #int #cObject )>! !

!GtkUIManager methodsFor: 'C call-outs'!
addUiFromFile: filename error: error
    <cCall: 'gtk_ui_manager_add_ui_from_file' returning: #int
	args: #( #self #string #cObject )>! !

!GtkUIManager methodsFor: 'C call-outs'!
addUi: mergeId path: path name: name action: action type: type top: top
    <cCall: 'gtk_ui_manager_add_ui' returning: #void
	args: #( #self #int #string #string #string #int #boolean )>! !

!GtkUIManager methodsFor: 'C call-outs'!
removeUi: mergeId
    <cCall: 'gtk_ui_manager_remove_ui' returning: #void
	args: #( #self #int )>! !

!GtkUIManager methodsFor: 'C call-outs'!
getUi
    <cCall: 'gtk_ui_manager_get_ui' returning: #string
	args: #( #self )>! !

!GtkUIManager methodsFor: 'C call-outs'!
ensureUpdate
    <cCall: 'gtk_ui_manager_ensure_update' returning: #void
	args: #( #self )>! !

!GtkUIManager methodsFor: 'C call-outs'!
newMergeId
    <cCall: 'gtk_ui_manager_new_merge_id' returning: #int
	args: #( #self )>! !

!GtkVButtonBox class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_vbutton_box_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkVButtonBox!

!GtkVButtonBox class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_vbutton_box_new' returning: #{GtkVButtonBox}
	args: #( )>! !

!GtkVolumeButton class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_volume_button_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkVolumeButton!

!GtkVolumeButton class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_volume_button_new' returning: #{GtkVolumeButton}
	args: #( )>! !

!GtkVPaned class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_vpaned_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkVPaned!

!GtkVPaned class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_vpaned_new' returning: #{GtkVPaned}
	args: #( )>! !

!GtkVScale class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_vscale_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkVScale!

!GtkVScale class methodsFor: 'C call-outs'!
new: adjustment
    <cCall: 'gtk_vscale_new' returning: #{GtkVScale}
	args: #( #cObject )>! !

!GtkVScale class methodsFor: 'C call-outs'!
newWithRange: min max: max step: step
    <cCall: 'gtk_vscale_new_with_range' returning: #{GtkVScale}
	args: #( #double #double #double )>! !

!GtkVSeparator class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_vseparator_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkVSeparator!

!GtkVSeparator class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_vseparator_new' returning: #{GtkVSeparator}
	args: #( )>! !

!GtkCList class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_clist_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCList!

!GtkCList class methodsFor: 'C call-outs'!
new: columns
    <cCall: 'gtk_clist_new' returning: #{GtkCList}
	args: #( #int )>! !

!GtkCList class methodsFor: 'C call-outs'!
newWithTitles: columns titles: titles
    <cCall: 'gtk_clist_new_with_titles' returning: #{GtkCList}
	args: #( #int #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
setHadjustment: adjustment
    <cCall: 'gtk_clist_set_hadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
setVadjustment: adjustment
    <cCall: 'gtk_clist_set_vadjustment' returning: #void
	args: #( #self #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
getHadjustment
    <cCall: 'gtk_clist_get_hadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkCList methodsFor: 'C call-outs'!
getVadjustment
    <cCall: 'gtk_clist_get_vadjustment' returning: #{GtkAdjustment}
	args: #( #self )>! !

!GtkCList methodsFor: 'C call-outs'!
setShadowType: type
    <cCall: 'gtk_clist_set_shadow_type' returning: #void
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setSelectionMode: mode
    <cCall: 'gtk_clist_set_selection_mode' returning: #void
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setReorderable: reorderable
    <cCall: 'gtk_clist_set_reorderable' returning: #void
	args: #( #self #boolean )>! !

!GtkCList methodsFor: 'C call-outs'!
setUseDragIcons: useIcons
    <cCall: 'gtk_clist_set_use_drag_icons' returning: #void
	args: #( #self #boolean )>! !

!GtkCList methodsFor: 'C call-outs'!
setButtonActions: button buttonActions: buttonActions
    <cCall: 'gtk_clist_set_button_actions' returning: #void
	args: #( #self #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
freeze
    <cCall: 'gtk_clist_freeze' returning: #void
	args: #( #self )>! !

!GtkCList methodsFor: 'C call-outs'!
thaw
    <cCall: 'gtk_clist_thaw' returning: #void
	args: #( #self )>! !

!GtkCListColumn class methodsFor: 'C call-outs'!
titlesShow: clist
    <cCall: 'gtk_clist_column_titles_show' returning: #void
	args: #( #cObject )>! !

!GtkCListColumn class methodsFor: 'C call-outs'!
titlesHide: clist
    <cCall: 'gtk_clist_column_titles_hide' returning: #void
	args: #( #cObject )>! !

!GtkCListColumn class methodsFor: 'C call-outs'!
titleActive: clist column: column
    <cCall: 'gtk_clist_column_title_active' returning: #void
	args: #( #cObject #int )>! !

!GtkCListColumn class methodsFor: 'C call-outs'!
titlePassive: clist column: column
    <cCall: 'gtk_clist_column_title_passive' returning: #void
	args: #( #cObject #int )>! !

!GtkCListColumn class methodsFor: 'C call-outs'!
titlesActive: clist
    <cCall: 'gtk_clist_column_titles_active' returning: #void
	args: #( #cObject )>! !

!GtkCListColumn class methodsFor: 'C call-outs'!
titlesPassive: clist
    <cCall: 'gtk_clist_column_titles_passive' returning: #void
	args: #( #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
setColumnTitle: column title: title
    <cCall: 'gtk_clist_set_column_title' returning: #void
	args: #( #self #int #string )>! !

!GtkCList methodsFor: 'C call-outs'!
getColumnTitle: column
    <cCall: 'gtk_clist_get_column_title' returning: #string
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setColumnWidget: column widget: widget
    <cCall: 'gtk_clist_set_column_widget' returning: #void
	args: #( #self #int #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
getColumnWidget: column
    <cCall: 'gtk_clist_get_column_widget' returning: #{GtkWidget}
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setColumnJustification: column justification: justification
    <cCall: 'gtk_clist_set_column_justification' returning: #void
	args: #( #self #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setColumnVisibility: column visible: visible
    <cCall: 'gtk_clist_set_column_visibility' returning: #void
	args: #( #self #int #boolean )>! !

!GtkCList methodsFor: 'C call-outs'!
setColumnResizeable: column resizeable: resizeable
    <cCall: 'gtk_clist_set_column_resizeable' returning: #void
	args: #( #self #int #boolean )>! !

!GtkCList methodsFor: 'C call-outs'!
setColumnAutoResize: column autoResize: autoResize
    <cCall: 'gtk_clist_set_column_auto_resize' returning: #void
	args: #( #self #int #boolean )>! !

!GtkCList methodsFor: 'C call-outs'!
columnsAutosize
    <cCall: 'gtk_clist_columns_autosize' returning: #int
	args: #( #self )>! !

!GtkCList methodsFor: 'C call-outs'!
optimalColumnWidth: column
    <cCall: 'gtk_clist_optimal_column_width' returning: #int
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setColumnWidth: column width: width
    <cCall: 'gtk_clist_set_column_width' returning: #void
	args: #( #self #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setColumnMinWidth: column minWidth: minWidth
    <cCall: 'gtk_clist_set_column_min_width' returning: #void
	args: #( #self #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setColumnMaxWidth: column maxWidth: maxWidth
    <cCall: 'gtk_clist_set_column_max_width' returning: #void
	args: #( #self #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setRowHeight: height
    <cCall: 'gtk_clist_set_row_height' returning: #void
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
moveto: row column: column rowAlign: rowAlign colAlign: colAlign
    <cCall: 'gtk_clist_moveto' returning: #void
	args: #( #self #int #int #float #float )>! !

!GtkCListRow class methodsFor: 'C call-outs'!
isVisible: clist row: row
    <cCall: 'gtk_clist_row_is_visible' returning: #int
	args: #( #cObject #int )>! !

!GtkCList methodsFor: 'C call-outs'!
getCellType: row column: column
    <cCall: 'gtk_clist_get_cell_type' returning: #int
	args: #( #self #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setText: row column: column text: text
    <cCall: 'gtk_clist_set_text' returning: #void
	args: #( #self #int #int #string )>! !

!GtkCList methodsFor: 'C call-outs'!
getText: row column: column text: text
    <cCall: 'gtk_clist_get_text' returning: #int
	args: #( #self #int #int #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
setPixmap: row column: column pixmap: pixmap mask: mask
    <cCall: 'gtk_clist_set_pixmap' returning: #void
	args: #( #self #int #int #cObject #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
getPixmap: row column: column pixmap: pixmap mask: mask
    <cCall: 'gtk_clist_get_pixmap' returning: #int
	args: #( #self #int #int #cObject #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
setPixtext: row column: column text: text spacing: spacing pixmap: pixmap mask: mask
    <cCall: 'gtk_clist_set_pixtext' returning: #void
	args: #( #self #int #int #string #int #cObject #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
getPixtext: row column: column text: text spacing: spacing pixmap: pixmap mask: mask
    <cCall: 'gtk_clist_get_pixtext' returning: #int
	args: #( #self #int #int #cObject #cObject #cObject #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
setForeground: row color: color
    <cCall: 'gtk_clist_set_foreground' returning: #void
	args: #( #self #int #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
setBackground: row color: color
    <cCall: 'gtk_clist_set_background' returning: #void
	args: #( #self #int #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
setCellStyle: row column: column style: style
    <cCall: 'gtk_clist_set_cell_style' returning: #void
	args: #( #self #int #int #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
getCellStyle: row column: column
    <cCall: 'gtk_clist_get_cell_style' returning: #{GtkStyle}
	args: #( #self #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setRowStyle: row style: style
    <cCall: 'gtk_clist_set_row_style' returning: #void
	args: #( #self #int #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
getRowStyle: row
    <cCall: 'gtk_clist_get_row_style' returning: #{GtkStyle}
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setShift: row column: column vertical: vertical horizontal: horizontal
    <cCall: 'gtk_clist_set_shift' returning: #void
	args: #( #self #int #int #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setSelectable: row selectable: selectable
    <cCall: 'gtk_clist_set_selectable' returning: #void
	args: #( #self #int #boolean )>! !

!GtkCList methodsFor: 'C call-outs'!
getSelectable: row
    <cCall: 'gtk_clist_get_selectable' returning: #boolean
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
prepend: text
    <cCall: 'gtk_clist_prepend' returning: #int
	args: #( #self #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
append: text
    <cCall: 'gtk_clist_append' returning: #int
	args: #( #self #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
insert: row text: text
    <cCall: 'gtk_clist_insert' returning: #int
	args: #( #self #int #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
remove: row
    <cCall: 'gtk_clist_remove' returning: #void
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setRowData: row data: data
    <cCall: 'gtk_clist_set_row_data' returning: #void
	args: #( #self #int #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
setRowDataFull: row data: data destroy: destroy
    <cCall: 'gtk_clist_set_row_data_full' returning: #void
	args: #( #self #int #cObject #int )>! !

!GtkCList methodsFor: 'C call-outs'!
getRowData: row
    <cCall: 'gtk_clist_get_row_data' returning: #cObject
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
findRowFromData: data
    <cCall: 'gtk_clist_find_row_from_data' returning: #int
	args: #( #self #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
selectRow: row column: column
    <cCall: 'gtk_clist_select_row' returning: #void
	args: #( #self #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
unselectRow: row column: column
    <cCall: 'gtk_clist_unselect_row' returning: #void
	args: #( #self #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
undoSelection
    <cCall: 'gtk_clist_undo_selection' returning: #void
	args: #( #self )>! !

!GtkCList methodsFor: 'C call-outs'!
clear
    <cCall: 'gtk_clist_clear' returning: #void
	args: #( #self )>! !

!GtkCList methodsFor: 'C call-outs'!
getSelectionInfo: x y: y row: row column: column
    <cCall: 'gtk_clist_get_selection_info' returning: #int
	args: #( #self #int #int #cObject #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
selectAll
    <cCall: 'gtk_clist_select_all' returning: #void
	args: #( #self )>! !

!GtkCList methodsFor: 'C call-outs'!
unselectAll
    <cCall: 'gtk_clist_unselect_all' returning: #void
	args: #( #self )>! !

!GtkCList methodsFor: 'C call-outs'!
swapRows: row1 row2: row2
    <cCall: 'gtk_clist_swap_rows' returning: #void
	args: #( #self #int #int )>! !

!GtkCListRow class methodsFor: 'C call-outs'!
move: clist sourceRow: sourceRow destRow: destRow
    <cCall: 'gtk_clist_row_move' returning: #void
	args: #( #cObject #int #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setCompareFunc: cmpFunc
    <cCall: 'gtk_clist_set_compare_func' returning: #void
	args: #( #self #cObject )>! !

!GtkCList methodsFor: 'C call-outs'!
setSortColumn: column
    <cCall: 'gtk_clist_set_sort_column' returning: #void
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
setSortType: sortType
    <cCall: 'gtk_clist_set_sort_type' returning: #void
	args: #( #self #int )>! !

!GtkCList methodsFor: 'C call-outs'!
sort
    <cCall: 'gtk_clist_sort' returning: #void
	args: #( #self )>! !

!GtkCList methodsFor: 'C call-outs'!
setAutoSort: autoSort
    <cCall: 'gtk_clist_set_auto_sort' returning: #void
	args: #( #self #boolean )>! !

!GtkCTree class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_ctree_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCTree!

!GtkCTree class methodsFor: 'C call-outs'!
newWithTitles: columns treeColumn: treeColumn titles: titles
    <cCall: 'gtk_ctree_new_with_titles' returning: #{GtkCTree}
	args: #( #int #int #cObject )>! !

!GtkCTree class methodsFor: 'C call-outs'!
new: columns treeColumn: treeColumn
    <cCall: 'gtk_ctree_new' returning: #{GtkCTree}
	args: #( #int #int )>! !

!GtkCTree methodsFor: 'C call-outs'!
insertNode: parent sibling: sibling text: text spacing: spacing pixmapClosed: pixmapClosed maskClosed: maskClosed pixmapOpened: pixmapOpened maskOpened: maskOpened isLeaf: isLeaf expanded: expanded
    <cCall: 'gtk_ctree_insert_node' returning: #{GtkCTreeNode}
	args: #( #self #cObject #cObject #cObject #int #cObject #cObject #cObject #cObject #boolean #boolean )>! !

!GtkCTree methodsFor: 'C call-outs'!
removeNode: node
    <cCall: 'gtk_ctree_remove_node' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
insertGnode: parent sibling: sibling gnode: gnode func: func data: data
    <cCall: 'gtk_ctree_insert_gnode' returning: #{GtkCTreeNode}
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
exportToGnode: parent sibling: sibling node: node func: func data: data
    <cCall: 'gtk_ctree_export_to_gnode' returning: #{GNode}
	args: #( #self #cObject #cObject #cObject #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
postRecursive: node func: func data: data
    <cCall: 'gtk_ctree_post_recursive' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
postRecursiveToDepth: node depth: depth func: func data: data
    <cCall: 'gtk_ctree_post_recursive_to_depth' returning: #void
	args: #( #self #cObject #int #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
preRecursive: node func: func data: data
    <cCall: 'gtk_ctree_pre_recursive' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
preRecursiveToDepth: node depth: depth func: func data: data
    <cCall: 'gtk_ctree_pre_recursive_to_depth' returning: #void
	args: #( #self #cObject #int #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
isViewable: node
    <cCall: 'gtk_ctree_is_viewable' returning: #boolean
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
last: node
    <cCall: 'gtk_ctree_last' returning: #{GtkCTreeNode}
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
findNodePtr: ctreeRow
    <cCall: 'gtk_ctree_find_node_ptr' returning: #{GtkCTreeNode}
	args: #( #self #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
nth: ctree row: row
    <cCall: 'gtk_ctree_node_nth' returning: #{GtkCTreeNode}
	args: #( #cObject #int )>! !

!GtkCTree methodsFor: 'C call-outs'!
find: node child: child
    <cCall: 'gtk_ctree_find' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
isAncestor: node child: child
    <cCall: 'gtk_ctree_is_ancestor' returning: #boolean
	args: #( #self #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
findByRowData: node data: data
    <cCall: 'gtk_ctree_find_by_row_data' returning: #{GtkCTreeNode}
	args: #( #self #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
findAllByRowData: node data: data
    <cCall: 'gtk_ctree_find_all_by_row_data' returning: #{GList}
	args: #( #self #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
findByRowDataCustom: node data: data func: func
    <cCall: 'gtk_ctree_find_by_row_data_custom' returning: #{GtkCTreeNode}
	args: #( #self #cObject #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
findAllByRowDataCustom: node data: data func: func
    <cCall: 'gtk_ctree_find_all_by_row_data_custom' returning: #{GList}
	args: #( #self #cObject #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
isHotSpot: x y: y
    <cCall: 'gtk_ctree_is_hot_spot' returning: #boolean
	args: #( #self #int #int )>! !

!GtkCTree methodsFor: 'C call-outs'!
move: node newParent: newParent newSibling: newSibling
    <cCall: 'gtk_ctree_move' returning: #void
	args: #( #self #cObject #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
expand: node
    <cCall: 'gtk_ctree_expand' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
expandRecursive: node
    <cCall: 'gtk_ctree_expand_recursive' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
expandToDepth: node depth: depth
    <cCall: 'gtk_ctree_expand_to_depth' returning: #void
	args: #( #self #cObject #int )>! !

!GtkCTree methodsFor: 'C call-outs'!
collapse: node
    <cCall: 'gtk_ctree_collapse' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
collapseRecursive: node
    <cCall: 'gtk_ctree_collapse_recursive' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
collapseToDepth: node depth: depth
    <cCall: 'gtk_ctree_collapse_to_depth' returning: #void
	args: #( #self #cObject #int )>! !

!GtkCTree methodsFor: 'C call-outs'!
toggleExpansion: node
    <cCall: 'gtk_ctree_toggle_expansion' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
toggleExpansionRecursive: node
    <cCall: 'gtk_ctree_toggle_expansion_recursive' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
select: node
    <cCall: 'gtk_ctree_select' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
selectRecursive: node
    <cCall: 'gtk_ctree_select_recursive' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
unselect: node
    <cCall: 'gtk_ctree_unselect' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
unselectRecursive: node
    <cCall: 'gtk_ctree_unselect_recursive' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
realSelectRecursive: node state: state
    <cCall: 'gtk_ctree_real_select_recursive' returning: #void
	args: #( #self #cObject #int )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setText: ctree node: node column: column text: text
    <cCall: 'gtk_ctree_node_set_text' returning: #void
	args: #( #cObject #cObject #int #string )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setPixmap: ctree node: node column: column pixmap: pixmap mask: mask
    <cCall: 'gtk_ctree_node_set_pixmap' returning: #void
	args: #( #cObject #cObject #int #cObject #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setPixtext: ctree node: node column: column text: text spacing: spacing pixmap: pixmap mask: mask
    <cCall: 'gtk_ctree_node_set_pixtext' returning: #void
	args: #( #cObject #cObject #int #string #int #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
setNodeInfo: node text: text spacing: spacing pixmapClosed: pixmapClosed maskClosed: maskClosed pixmapOpened: pixmapOpened maskOpened: maskOpened isLeaf: isLeaf expanded: expanded
    <cCall: 'gtk_ctree_set_node_info' returning: #void
	args: #( #self #cObject #string #int #cObject #cObject #cObject #cObject #boolean #boolean )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setShift: ctree node: node column: column vertical: vertical horizontal: horizontal
    <cCall: 'gtk_ctree_node_set_shift' returning: #void
	args: #( #cObject #cObject #int #int #int )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setSelectable: ctree node: node selectable: selectable
    <cCall: 'gtk_ctree_node_set_selectable' returning: #void
	args: #( #cObject #cObject #boolean )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
getSelectable: ctree node: node
    <cCall: 'gtk_ctree_node_get_selectable' returning: #boolean
	args: #( #cObject #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
getCellType: ctree node: node column: column
    <cCall: 'gtk_ctree_node_get_cell_type' returning: #int
	args: #( #cObject #cObject #int )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
getText: ctree node: node column: column text: text
    <cCall: 'gtk_ctree_node_get_text' returning: #boolean
	args: #( #cObject #cObject #int #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
getPixmap: ctree node: node column: column pixmap: pixmap mask: mask
    <cCall: 'gtk_ctree_node_get_pixmap' returning: #boolean
	args: #( #cObject #cObject #int #cObject #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
getPixtext: ctree node: node column: column text: text spacing: spacing pixmap: pixmap mask: mask
    <cCall: 'gtk_ctree_node_get_pixtext' returning: #boolean
	args: #( #cObject #cObject #int #cObject #cObject #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
getNodeInfo: node text: text spacing: spacing pixmapClosed: pixmapClosed maskClosed: maskClosed pixmapOpened: pixmapOpened maskOpened: maskOpened isLeaf: isLeaf expanded: expanded
    <cCall: 'gtk_ctree_get_node_info' returning: #boolean
	args: #( #self #cObject #cObject #cObject #cObject #cObject #cObject #cObject #cObject #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setRowStyle: ctree node: node style: style
    <cCall: 'gtk_ctree_node_set_row_style' returning: #void
	args: #( #cObject #cObject #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
getRowStyle: ctree node: node
    <cCall: 'gtk_ctree_node_get_row_style' returning: #{GtkStyle}
	args: #( #cObject #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setCellStyle: ctree node: node column: column style: style
    <cCall: 'gtk_ctree_node_set_cell_style' returning: #void
	args: #( #cObject #cObject #int #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
getCellStyle: ctree node: node column: column
    <cCall: 'gtk_ctree_node_get_cell_style' returning: #{GtkStyle}
	args: #( #cObject #cObject #int )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setForeground: ctree node: node color: color
    <cCall: 'gtk_ctree_node_set_foreground' returning: #void
	args: #( #cObject #cObject #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setBackground: ctree node: node color: color
    <cCall: 'gtk_ctree_node_set_background' returning: #void
	args: #( #cObject #cObject #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setRowData: ctree node: node data: data
    <cCall: 'gtk_ctree_node_set_row_data' returning: #void
	args: #( #cObject #cObject #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
setRowDataFull: ctree node: node data: data destroy: destroy
    <cCall: 'gtk_ctree_node_set_row_data_full' returning: #void
	args: #( #cObject #cObject #cObject #int )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
getRowData: ctree node: node
    <cCall: 'gtk_ctree_node_get_row_data' returning: #cObject
	args: #( #cObject #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
moveto: ctree node: node column: column rowAlign: rowAlign colAlign: colAlign
    <cCall: 'gtk_ctree_node_moveto' returning: #void
	args: #( #cObject #cObject #int #float #float )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
isVisible: ctree node: node
    <cCall: 'gtk_ctree_node_is_visible' returning: #int
	args: #( #cObject #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
setIndent: indent
    <cCall: 'gtk_ctree_set_indent' returning: #void
	args: #( #self #int )>! !

!GtkCTree methodsFor: 'C call-outs'!
setSpacing: spacing
    <cCall: 'gtk_ctree_set_spacing' returning: #void
	args: #( #self #int )>! !

!GtkCTree methodsFor: 'C call-outs'!
setShowStub: showStub
    <cCall: 'gtk_ctree_set_show_stub' returning: #void
	args: #( #self #boolean )>! !

!GtkCTree methodsFor: 'C call-outs'!
setLineStyle: lineStyle
    <cCall: 'gtk_ctree_set_line_style' returning: #void
	args: #( #self #int )>! !

!GtkCTree methodsFor: 'C call-outs'!
setExpanderStyle: expanderStyle
    <cCall: 'gtk_ctree_set_expander_style' returning: #void
	args: #( #self #int )>! !

!GtkCTree methodsFor: 'C call-outs'!
setDragCompareFunc: cmpFunc
    <cCall: 'gtk_ctree_set_drag_compare_func' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
sortNode: node
    <cCall: 'gtk_ctree_sort_node' returning: #void
	args: #( #self #cObject )>! !

!GtkCTree methodsFor: 'C call-outs'!
sortRecursive: node
    <cCall: 'gtk_ctree_sort_recursive' returning: #void
	args: #( #self #cObject )>! !

!GtkCTreeNode class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_ctree_node_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkCTreeNode!

!GtkList class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_list_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkList!

!GtkList class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_list_new' returning: #{GtkList}
	args: #( )>! !

!GtkList methodsFor: 'C call-outs'!
insertItems: items position: position
    <cCall: 'gtk_list_insert_items' returning: #void
	args: #( #self #cObject #int )>! !

!GtkList methodsFor: 'C call-outs'!
appendItems: items
    <cCall: 'gtk_list_append_items' returning: #void
	args: #( #self #cObject )>! !

!GtkList methodsFor: 'C call-outs'!
prependItems: items
    <cCall: 'gtk_list_prepend_items' returning: #void
	args: #( #self #cObject )>! !

!GtkList methodsFor: 'C call-outs'!
removeItems: items
    <cCall: 'gtk_list_remove_items' returning: #void
	args: #( #self #cObject )>! !

!GtkList methodsFor: 'C call-outs'!
removeItemsNoUnref: items
    <cCall: 'gtk_list_remove_items_no_unref' returning: #void
	args: #( #self #cObject )>! !

!GtkList methodsFor: 'C call-outs'!
clearItems: start end: end
    <cCall: 'gtk_list_clear_items' returning: #void
	args: #( #self #int #int )>! !

!GtkList methodsFor: 'C call-outs'!
selectItem: item
    <cCall: 'gtk_list_select_item' returning: #void
	args: #( #self #int )>! !

!GtkList methodsFor: 'C call-outs'!
unselectItem: item
    <cCall: 'gtk_list_unselect_item' returning: #void
	args: #( #self #int )>! !

!GtkList methodsFor: 'C call-outs'!
selectChild: child
    <cCall: 'gtk_list_select_child' returning: #void
	args: #( #self #cObject )>! !

!GtkList methodsFor: 'C call-outs'!
unselectChild: child
    <cCall: 'gtk_list_unselect_child' returning: #void
	args: #( #self #cObject )>! !

!GtkList methodsFor: 'C call-outs'!
childPosition: child
    <cCall: 'gtk_list_child_position' returning: #int
	args: #( #self #cObject )>! !

!GtkList methodsFor: 'C call-outs'!
setSelectionMode: mode
    <cCall: 'gtk_list_set_selection_mode' returning: #void
	args: #( #self #int )>! !

!GtkList methodsFor: 'C call-outs'!
extendSelection: scrollType position: position autoStartSelection: autoStartSelection
    <cCall: 'gtk_list_extend_selection' returning: #void
	args: #( #self #int #float #boolean )>! !

!GtkList methodsFor: 'C call-outs'!
startSelection
    <cCall: 'gtk_list_start_selection' returning: #void
	args: #( #self )>! !

!GtkList methodsFor: 'C call-outs'!
endSelection
    <cCall: 'gtk_list_end_selection' returning: #void
	args: #( #self )>! !

!GtkList methodsFor: 'C call-outs'!
selectAll
    <cCall: 'gtk_list_select_all' returning: #void
	args: #( #self )>! !

!GtkList methodsFor: 'C call-outs'!
unselectAll
    <cCall: 'gtk_list_unselect_all' returning: #void
	args: #( #self )>! !

!GtkList methodsFor: 'C call-outs'!
scrollHorizontal: scrollType position: position
    <cCall: 'gtk_list_scroll_horizontal' returning: #void
	args: #( #self #int #float )>! !

!GtkList methodsFor: 'C call-outs'!
scrollVertical: scrollType position: position
    <cCall: 'gtk_list_scroll_vertical' returning: #void
	args: #( #self #int #float )>! !

!GtkList methodsFor: 'C call-outs'!
toggleAddMode
    <cCall: 'gtk_list_toggle_add_mode' returning: #void
	args: #( #self )>! !

!GtkList methodsFor: 'C call-outs'!
toggleFocusRow
    <cCall: 'gtk_list_toggle_focus_row' returning: #void
	args: #( #self )>! !

!GtkList methodsFor: 'C call-outs'!
toggleRow: item
    <cCall: 'gtk_list_toggle_row' returning: #void
	args: #( #self #cObject )>! !

!GtkList methodsFor: 'C call-outs'!
undoSelection
    <cCall: 'gtk_list_undo_selection' returning: #void
	args: #( #self )>! !

!GtkList methodsFor: 'C call-outs'!
endDragSelection
    <cCall: 'gtk_list_end_drag_selection' returning: #void
	args: #( #self )>! !

!GtkListItem class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_list_item_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkListItem!

!GtkListItem class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_list_item_new' returning: #{GtkListItem}
	args: #( )>! !

!GtkListItem class methodsFor: 'C call-outs'!
newWithLabel: label
    <cCall: 'gtk_list_item_new_with_label' returning: #{GtkListItem}
	args: #( #string )>! !

!GtkListItem methodsFor: 'C call-outs'!
select
    <cCall: 'gtk_list_item_select' returning: #void
	args: #( #self )>! !

!GtkListItem methodsFor: 'C call-outs'!
deselect
    <cCall: 'gtk_list_item_deselect' returning: #void
	args: #( #self )>! !

!GtkPlacer class methodsFor: 'C call-outs'!
getType
    <cCall: 'gtk_placer_get_type' returning: #long
	args: #( )>! !

GLib registerType: GtkPlacer!

!GtkPlacer class methodsFor: 'C call-outs'!
new
    <cCall: 'gtk_placer_new' returning: #{GtkPlacer}
	args: #( )>! !

!GtkPlacer methodsFor: 'C call-outs'!
put: widget x: x y: y width: width height: height relX: relX relY: relY relWidth: relWidth relHeight: relHeight
    <cCall: 'gtk_placer_put' returning: #void
	args: #( #self #cObject #int #int #int #int #int #int #int #int )>! !

!GtkPlacer methodsFor: 'C call-outs'!
move: widget x: x y: y
    <cCall: 'gtk_placer_move' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkPlacer methodsFor: 'C call-outs'!
resize: widget width: width height: height
    <cCall: 'gtk_placer_resize' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkPlacer methodsFor: 'C call-outs'!
moveRel: widget relX: relX relY: relY
    <cCall: 'gtk_placer_move_rel' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkPlacer methodsFor: 'C call-outs'!
resizeRel: widget relWidth: relWidth relHeight: relHeight
    <cCall: 'gtk_placer_resize_rel' returning: #void
	args: #( #self #cObject #int #int )>! !

!GtkPlacer methodsFor: 'C call-outs'!
setHasWindow: hasWindow
    <cCall: 'gtk_placer_set_has_window' returning: #void
	args: #( #self #boolean )>! !

!GtkPlacer methodsFor: 'C call-outs'!
getHasWindow
    <cCall: 'gtk_placer_get_has_window' returning: #boolean
	args: #( #self )>! !

