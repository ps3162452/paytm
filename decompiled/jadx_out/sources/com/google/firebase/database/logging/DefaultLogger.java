package com.google.firebase.database.logging;

import com.google.firebase.database.logging.Logger;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import n.NPStringFog;

/* JADX INFO: loaded from: classes57.dex */
public class DefaultLogger implements Logger {
    private final Set<String> enabledComponents;
    private final Logger.Level minLevel;

    /* JADX INFO: renamed from: com.google.firebase.database.logging.DefaultLogger$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final int[] $SwitchMap$com$google$firebase$database$logging$Logger$Level;

        static {
            int[] iArr = new int[Logger.Level.values().length];
            $SwitchMap$com$google$firebase$database$logging$Logger$Level = iArr;
            try {
                iArr[Logger.Level.ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$google$firebase$database$logging$Logger$Level[Logger.Level.WARN.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$google$firebase$database$logging$Logger$Level[Logger.Level.INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$google$firebase$database$logging$Logger$Level[Logger.Level.DEBUG.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    public DefaultLogger(Logger.Level level, List<String> list) {
        if (list != null) {
            this.enabledComponents = new HashSet(list);
        } else {
            this.enabledComponents = null;
        }
        this.minLevel = level;
    }

    protected String buildLogMessage(Logger.Level level, String str, String str2, long j) {
        return new Date(j).toString() + NPStringFog.decode(new byte[]{21, 62}, "5e00aa", -5.1092512E8f) + level + NPStringFog.decode(new byte[]{107, 25}, "6910cc", 1623247226L) + str + NPStringFog.decode(new byte[]{11, 25}, "1977d1", 32162) + str2;
    }

    protected void debug(String str, String str2) {
        System.out.println(str2);
    }

    protected void error(String str, String str2) {
        System.err.println(str2);
    }

    @Override // com.google.firebase.database.logging.Logger
    public Logger.Level getLogLevel() {
        return this.minLevel;
    }

    protected void info(String str, String str2) {
        System.out.println(str2);
    }

    @Override // com.google.firebase.database.logging.Logger
    public void onLogMessage(Logger.Level level, String str, String str2, long j) {
        if (shouldLog(level, str)) {
            String strBuildLogMessage = buildLogMessage(level, str, str2, j);
            switch (AnonymousClass1.$SwitchMap$com$google$firebase$database$logging$Logger$Level[level.ordinal()]) {
                case 1:
                    error(str, strBuildLogMessage);
                    return;
                case 2:
                    warn(str, strBuildLogMessage);
                    return;
                case 3:
                    info(str, strBuildLogMessage);
                    return;
                case 4:
                    debug(str, strBuildLogMessage);
                    return;
                default:
                    throw new RuntimeException(NPStringFog.decode(new byte[]{99, 91, 14, 19, 92, 84, 16, 93, 14, 18, 16, 66, 85, 82, 2, 14, 16, 88, 85, 65, 4, 71}, "03af00", 2.048194E9f));
            }
        }
    }

    protected boolean shouldLog(Logger.Level level, String str) {
        return level.ordinal() >= this.minLevel.ordinal() && (this.enabledComponents == null || level.ordinal() > Logger.Level.DEBUG.ordinal() || this.enabledComponents.contains(str));
    }

    protected void warn(String str, String str2) {
        System.out.println(str2);
    }
}
