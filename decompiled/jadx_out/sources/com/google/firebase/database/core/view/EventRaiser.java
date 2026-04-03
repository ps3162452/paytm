package com.google.firebase.database.core.view;

import com.google.firebase.database.core.Context;
import com.google.firebase.database.core.EventTarget;
import com.google.firebase.database.logging.LogWrapper;
import java.util.ArrayList;
import java.util.List;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class EventRaiser {
    private final EventTarget eventTarget;
    private final LogWrapper logger;

    public EventRaiser(Context context) {
        this.eventTarget = context.getEventTarget();
        this.logger = context.getLogger(NPStringFog.decode(new byte[]{117, 79, 4, 12, 17, 106, 81, 80, 18, 7, 23}, "09abe8", false, true));
    }

    public void raiseEvents(List<? extends Event> list) {
        if (this.logger.logsDebug()) {
            this.logger.debug(NPStringFog.decode(new byte[]{52, 0, 15, 22, 81, 86, 1, 65}, "fafe88", -4.6682002E8d) + list.size() + NPStringFog.decode(new byte[]{69, 0, 20, 3, 95, 17, 77, 22, 75}, "eebf1e", -7.3485626E8f), new Object[0]);
        }
        this.eventTarget.postEvent(new Runnable(this, new ArrayList(list)) { // from class: com.google.firebase.database.core.view.EventRaiser.1
            final EventRaiser this$0;
            final ArrayList val$eventsClone;

            {
                this.this$0 = this;
                this.val$eventsClone = arrayList;
            }

            @Override // java.lang.Runnable
            public void run() {
                for (Event event : this.val$eventsClone) {
                    if (this.this$0.logger.logsDebug()) {
                        this.this$0.logger.debug(NPStringFog.decode(new byte[]{97, 4, 10, 64, 90, 13, 84, 69}, "3ec33c", 1.156988611E9d) + event.toString(), new Object[0]);
                    }
                    event.fire();
                }
            }
        });
    }
}
