.class public abstract Lcom/viber/voip/sound/SoundFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
#the value of this static final field might be set in the static constructor
.field public static final RESET_AUDIORECORDER_ON_SPEAKER_EVENT:Z = false

#the value of this static final field might be set in the static constructor
.field public static final RESET_AUDIOTRACK_ON_SPEAKER_EVENT:Z = false

.field private static final SENSE_UI_LAUNCHER_NAME:Ljava/lang/String; = "com.htc.launcher.Launcher"

.field public static final TAG:Ljava/lang/String;

.field public static final _volumeBoostedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field static instance:Lcom/viber/voip/sound/ISoundService;

.field private static final isGalaxyS:Z

.field private static final isGalaxyS2:Z

.field private static final isGalaxySwifi:Z

.field private static final isHTCSense:Z

.field private static final isHtcDesireC:Z

.field private static final isHtcDesireV:Z

.field private static final isLGOptimus:Z

.field private static final isMilestone:Z

.field private static final isNexusS:Z

.field private static final isZteBlade:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/high16 v5, 0x3fc0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 29
    const-class v0, Lcom/viber/voip/sound/SoundFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/SoundFactory;->TAG:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/sound/SoundFactory;->_volumeBoostedDevices:Ljava/util/Map;

    .line 74
    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->_volumeBoostedDevices:Ljava/util/Map;

    const-string/jumbo v3, "GT-I9100"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->_volumeBoostedDevices:Ljava/util/Map;

    const-string/jumbo v3, "GT-N7000"

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v0, 0x3

    const-string/jumbo v3, "-- sound init --"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ":: brand: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "device: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "manufacturer: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "model: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]; product: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " user: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]; ID: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " weak? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/viber/voip/sound/SoundServiceCommonConfig;->WEAK_DEVICE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ::"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "GT-I9000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "SPH-D700"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "SGH-I897"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "SGH-T959"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "SCH-I500"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "SCH-I400"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isGalaxyS:Z

    .line 104
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "YP-GS1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    :goto_1
    sput-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isGalaxySwifi:Z

    .line 108
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "Nexus S"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    move v0, v2

    :goto_2
    sput-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isNexusS:Z

    .line 112
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "blade"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    :goto_3
    sput-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isZteBlade:Z

    .line 116
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "golfu"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    :goto_4
    sput-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isHtcDesireC:Z

    .line 120
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string/jumbo v3, "primods"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v2

    :goto_5
    sput-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isHtcDesireV:Z

    .line 124
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "GT-I9100"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isGalaxyS2:Z

    .line 128
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "Milestone"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "MB525"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-le v0, v3, :cond_c

    :cond_1
    move v0, v2

    :goto_7
    sput-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isMilestone:Z

    .line 132
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string/jumbo v3, "LG-P500"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lcom/viber/voip/sound/SoundFactory;->isLGOptimus:Z

    .line 136
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isGalaxyS:Z

    sget-boolean v1, Lcom/viber/voip/sound/SoundFactory;->isMilestone:Z

    or-int/2addr v0, v1

    sget-boolean v1, Lcom/viber/voip/sound/SoundFactory;->isLGOptimus:Z

    or-int/2addr v0, v1

    if-nez v0, :cond_d

    invoke-static {}, Lcom/viber/voip/sound/SoundFactory;->detectHTCSense()Z

    move-result v0

    :goto_8
    sput-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isHTCSense:Z

    .line 138
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isGalaxyS:Z

    if-eqz v0, :cond_e

    :cond_3
    :goto_9
    sput-boolean v2, Lcom/viber/voip/sound/SoundFactory;->RESET_AUDIORECORDER_ON_SPEAKER_EVENT:Z

    .line 143
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isGalaxyS:Z

    if-eqz v0, :cond_f

    :cond_4
    :goto_a
    sput-boolean v2, Lcom/viber/voip/sound/SoundFactory;->RESET_AUDIOTRACK_ON_SPEAKER_EVENT:Z

    .line 151
    invoke-static {}, Ljava/lang/Compiler;->enable()V

    .line 152
    return-void

    .line 81
    :cond_5
    const-string/jumbo v0, "MIUI"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Cyanogen"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "CyanogenMod"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "GRJ22"

    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    const-string/jumbo v3, "cm-build"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 104
    goto/16 :goto_1

    :cond_7
    move v0, v1

    .line 108
    goto/16 :goto_2

    :cond_8
    move v0, v1

    .line 112
    goto/16 :goto_3

    :cond_9
    move v0, v1

    .line 116
    goto/16 :goto_4

    :cond_a
    move v0, v1

    .line 120
    goto/16 :goto_5

    :cond_b
    move v0, v1

    .line 124
    goto/16 :goto_6

    :cond_c
    move v0, v1

    .line 128
    goto :goto_7

    :cond_d
    move v0, v2

    .line 136
    goto :goto_8

    .line 138
    :cond_e
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isMilestone:Z

    if-eqz v0, :cond_3

    goto :goto_9

    .line 143
    :cond_f
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isMilestone:Z

    if-eqz v0, :cond_4

    goto :goto_a
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static chooseSoundServiceModelImplInternal(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;
    .locals 2
    .parameter

    .prologue
    .line 155
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isGalaxyS:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 156
    new-instance v0, Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/quirks/GalaxySFamilySoundService;-><init>(Landroid/content/Context;)V

    .line 166
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-static {}, Lcom/viber/voip/sound/SoundFactory;->isMilestone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    new-instance v0, Lcom/viber/voip/sound/quirks/MilestoneFamilySoundService;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/quirks/MilestoneFamilySoundService;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 159
    :cond_1
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isLGOptimus:Z

    if-eqz v0, :cond_2

    .line 160
    new-instance v0, Lcom/viber/voip/sound/quirks/LGOptimusSoundService;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/quirks/LGOptimusSoundService;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 161
    :cond_2
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isNexusS:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isHtcDesireC:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isHtcDesireV:Z

    if-eqz v0, :cond_4

    .line 162
    :cond_3
    new-instance v0, Lcom/viber/voip/sound/quirks/ModeNormalGenericSoundService;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/quirks/ModeNormalGenericSoundService;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 163
    :cond_4
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isZteBlade:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isGalaxySwifi:Z

    if-eqz v0, :cond_6

    .line 164
    :cond_5
    new-instance v0, Lcom/viber/voip/sound/quirks/ModeInCallGenericSoundService;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/quirks/ModeInCallGenericSoundService;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 166
    :cond_6
    new-instance v0, Lcom/viber/voip/sound/GenericSoundService;

    invoke-direct {v0, p0}, Lcom/viber/voip/sound/GenericSoundService;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private static detectHTCSense()Z
    .locals 3

    .prologue
    .line 170
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 172
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 176
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 177
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.htc.launcher.Launcher"

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x1

    .line 181
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getSoundService(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;
    .locals 6
    .parameter

    .prologue
    .line 228
    const-class v1, Lcom/viber/voip/sound/SoundFactory;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 229
    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    invoke-static {v0}, Lcom/viber/voip/sound/SoundFactory;->init(Lcom/viber/voip/ViberApplication;)V

    .line 232
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/16 v4, 0x64

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 233
    const/4 v0, 0x6

    sget-object v2, Lcom/viber/voip/sound/SoundFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Use mViberApplication.getPhoneController(false).addReadyListener()! SoundFactory should be initialized asynchronously. \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_1
    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized init(Lcom/viber/voip/ViberApplication;)V
    .locals 7
    .parameter

    .prologue
    .line 185
    const-class v1, Lcom/viber/voip/sound/SoundFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    if-nez v0, :cond_3

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->init()V

    .line 188
    invoke-static {p0}, Lcom/viber/voip/sound/SoundFactory;->chooseSoundServiceModelImplInternal(Landroid/content/Context;)Lcom/viber/voip/sound/ISoundService;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    .line 190
    const/4 v0, 0x3

    sget-object v2, Lcom/viber/voip/sound/SoundFactory;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ":: using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " AudioManager wrapper ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    const/4 v2, 0x3

    sget-object v3, Lcom/viber/voip/sound/SoundFactory;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ":: voice channel listeners are "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->useVoiceChannelListeners()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ENABLED (!!! experimental feature warning, should be compiled in native lib !!!)"

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "  ::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->_volumeBoostedDevices:Ljava/util/Map;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v2, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->_volumeBoostedDevices:Ljava/util/Map;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v2, v0}, Lcom/viber/voip/sound/ISoundService;->setVolumeBoostLevel(F)Z

    .line 198
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    invoke-virtual {v0, v2}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerHoldStateListener()Lcom/viber/jni/dialer/DialerHoldStateListener;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerHoldState;

    const/4 v3, 0x0

    sget-object v4, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/viber/jni/dialer/DialerHoldStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerPhoneStateListener()Lcom/viber/jni/dialer/DialerPhoneStateListener;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerPhoneState;

    const/4 v3, 0x0

    sget-object v4, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/viber/jni/dialer/DialerPhoneStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 201
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getDelegatesManager()Lcom/viber/jni/PhoneControllerListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerListener;->getDialerLocalCallStateListener()Lcom/viber/jni/dialer/DialerLocalCallStateListener;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/viber/jni/dialer/DialerControllerDelegate$DialerLocalCallState;

    const/4 v3, 0x0

    sget-object v4, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/viber/jni/dialer/DialerLocalCallStateListener;->registerDelegate([Ljava/lang/Object;)Lcom/viber/jni/controller/ControllerListener;

    .line 203
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getFlagsForDeviceModel()I

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/sound/AbstractSoundService;->setDeviceFlags(I)I

    .line 204
    invoke-static {}, Lcom/viber/jni/DeviceFlags;->getSpeechEnhancementsModeForDeviceModel()Lcom/viber/jni/DeviceFlags$DeviceModes;

    move-result-object v0

    .line 205
    iget v2, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AEC_mode:I

    iget v3, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->AGC_mode:I

    iget v4, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->NS_mode:I

    iget v5, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxAGC_mode:I

    iget v0, v0, Lcom/viber/jni/DeviceFlags$DeviceModes;->RxNS_mode:I

    invoke-static {v2, v3, v4, v5, v0}, Lcom/viber/voip/sound/AbstractSoundService;->setSpeechEnhancementsModes(IIIII)I

    .line 207
    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService;->getVocoderSettings()Lcom/viber/voip/sound/ISoundService$IVocoderSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IVocoderSettings;->getSupportedCodecs()Ljava/util/Set;

    move-result-object v0

    .line 208
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;

    .line 209
    const/4 v3, 0x3

    sget-object v4, Lcom/viber/voip/sound/SoundFactory;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;->getVocoderId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "] supported VOE codec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;->getVocoderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " (bitrate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;->getVocoderBitrate()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", payload:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/viber/voip/sound/ISoundService$IVocoderSettings$IVocoderDescriptor;->getVocoderPayloadType()I

    move-result v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/viber/voip/sound/SoundFactory;->log(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 191
    :cond_1
    :try_start_1
    const-string/jumbo v0, "disabled"

    goto/16 :goto_0

    .line 212
    :cond_2
    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    check-cast v0, Lcom/viber/voip/sound/AbstractSoundService;

    invoke-static {v0}, Lcom/viber/voip/sound/ToneGeneratorFactory;->init(Lcom/viber/voip/sound/AbstractSoundService;)V

    .line 215
    invoke-static {}, Lcom/viber/voip/sound/AbstractSoundService;->isVideoSupportBuiltin()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    :cond_3
    monitor-exit v1

    return-void
.end method

.method public static isGalaxyS()Z
    .locals 1

    .prologue
    .line 244
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isGalaxyS:Z

    return v0
.end method

.method public static isGalaxyS2()Z
    .locals 1

    .prologue
    .line 248
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isGalaxyS2:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHTCSense()Z
    .locals 1

    .prologue
    .line 272
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isHTCSense:Z

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 240
    sget-object v0, Lcom/viber/voip/sound/SoundFactory;->instance:Lcom/viber/voip/sound/ISoundService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMilestone()Z
    .locals 1

    .prologue
    .line 252
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isMilestone:Z

    return v0
.end method

.method public static isTonegenOnInCallChannel()Z
    .locals 1

    .prologue
    .line 263
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isMilestone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceOnInCallChannel()Z
    .locals 1

    .prologue
    .line 267
    sget-boolean v0, Lcom/viber/voip/sound/SoundFactory;->isMilestone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static log(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 260
    return-void
.end method
