 mvn -f pom.xml \
-Dthreadcount=1 \
-Dorg.jitsi.malleus.conferences=1 \
-Dorg.jitsi.malleus.participants=5 \
-Dorg.jitsi.malleus.senders=3 \
-Dorg.jitsi.malleus.audio_senders=3 \
-Dorg.jitsi.malleus.duration=300 \
-Dorg.jitsi.malleus.max_disrupted_bridges_pct=0 \
-Dorg.jitsi.malleus.join_delay=200 \
-Dorg.jitsi.malleus.room_name_prefix=loadtest \
-Dorg.jitsi.malleus.regions="" \
-Dremote.address="http://localhost:4444/wd/hub" \
-Djitsi-meet.tests.toRun=MalleusJitsificus \
-Dwdm.gitHubTokenName=jitsi-jenkins \
-Dremote.resource.path='/usr/share/jitsi-meet-torture' \
-Djitsi-meet.instance.url="https://meet.dev.sariska.io" \
-Djitsi-meet.isRemote=true \
-Dchrome.disable.nosanbox=true \
test