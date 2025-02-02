alias bi="bundle install"
alias rdm="rake db:migrate; gco db/schema.rb; gco db/secondbase/schema.rb"
alias fs="foreman start"
alias bl_rvm_use="rvm use ruby-2.3.0@bukalapak"
alias bl_rails_c="bl_rvm_use; rails c"
alias bl_fs="bl_rvm_use; bi; rdm; yarn; fs;"

alias to_bl="cd ~/Playground/Bukalapak"
alias to_gosrc="cd ~/go/src/github.com/bukalapak"
alias to_mothership="to_bl; cd mothership; bl_rvm_use; gst"

alias bl_mothership="to_bl; cd mothership; bl_fs"
alias bl_aleppo="to_gosrc; cd aleppo; ./aleppo"
alias bl_seedorf="to_gosrc; cd seedorf; ./seedorf"
alias bl_palaver="to_bl; cd palaver; source .env; iex --name master@127.0.0.1 -S mix"
alias bl_hahen="to_gosrc; cd hahen; make compile; ./deploy/_output/web-service/web-service"
alias bl_pokedex="to_bl; cd pokedex; yarn start"
alias bl_essos="to_bl; cd essos; yarn; yarn dev"
alias bl_persona="to_bl; cd persona; yarn; yarn start"

alias runmysql="brew services run mysql@5.6"
alias runmongo="brew services run mongodb"
alias runredis="brew services run redis"
alias runbeanstalkd="brew services run beanstalkd"
alias runelasticsearch="brew services run elasticsearch@2.4"
alias runpostgres="brew services run postgres"
alias runhaproxy="brew services run haproxy"

alias bl_services="runmysql; runmongo; runredis; runbeanstalkd; runelasticsearch; runpostgres; runhaproxy"

# vim:set foldmethod=marker foldlevel=0:
