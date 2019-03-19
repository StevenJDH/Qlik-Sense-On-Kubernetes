echo Find out pod names ...
collections=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "collections")
dataprep=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "data-prep")
edgeauth=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "edge-auth")
engine=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "engine")
featureflags=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "feature-flags")
hub=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "hub")
identityproviders=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "identity-providers")
insights=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "insights")
keys=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "keys")
licenses=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "licenses")
locale=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "locale")
mira=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "mira")
mongodb=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "mongodb")
ingresscontroller=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "ingress-controller")
ingressdefaultbackend=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "ingress-default-backend")
policydecisions=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "policy-decisions")
qixsessions=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "qix-sessions")
redismaster=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "redis-master")
redismetrics=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "redis-metrics")
redisslave=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "redis-slave")
reporting=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "reporting")
resourcelibrary=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "resource-library")
senseclient=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "sense-client")
tenants=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "tenants")
users=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}'|grep "users")
echo collections=$collections
echo dataprep=$dataprep
echo edgeauth=$edgeauth
echo engine=$engine
echo featureflags=$featureflags
echo hub=$hub
echo identityproviders=$identityproviders
echo insights=$insights
echo keys=$keys
echo licenses=$licenses
echo locale=$locale
echo mira=$mira
echo mongodb=$mongodb
echo ingresscontroller=$ingresscontroller
echo ingressdefaultbackend=$ingressdefaultbackend
echo policydecisions=$policydecisions
echo qixsessions=$qixsessions
echo redismaster=$redismaster
echo redismetrics=$redismetrics
echo redisslave=$redisslave
echo reporting=$reporting
echo resourcelibrary=$resourcelibrary
echo senseclient=$senseclient
echo tenants=$tenants
echo users=$users
