.class public Lcom/viber/jni/LibVersion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ViberCoreVersion:Ljava/lang/String;

.field private static ViberDebugVersion:Ljava/lang/String;

.field private static VoiceLibVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNativeVersionString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VoiceLib:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/jni/LibVersion;->VoiceLibVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";  ViberCore:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/viber/jni/LibVersion;->ViberCoreVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getViberCoreVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/viber/jni/LibVersion;->ViberCoreVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getViberDebugVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/viber/jni/LibVersion;->ViberDebugVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getVoiceLibVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/viber/jni/LibVersion;->VoiceLibVersion:Ljava/lang/String;

    return-object v0
.end method
