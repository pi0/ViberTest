.class public final enum Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

.field public static final enum CONNECTING:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

.field public static final enum NO_INTERNET:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

.field public static final enum SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

.field public static final enum SERVICE_NOT_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    const-string/jumbo v1, "SERVICE_CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    .line 17
    new-instance v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    const-string/jumbo v1, "SERVICE_NOT_CONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_NOT_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    .line 18
    new-instance v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    const-string/jumbo v1, "NO_INTERNET"

    invoke-direct {v0, v1, v4}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->NO_INTERNET:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    .line 19
    new-instance v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->CONNECTING:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    sget-object v1, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_NOT_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->NO_INTERNET:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->CONNECTING:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->$VALUES:[Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static resolveEnum(I)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    .locals 3
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    const/4 v1, 0x0

    sget-object v2, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_NOT_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->NO_INTERNET:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->CONNECTING:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    aput-object v2, v0, v1

    .line 23
    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    .locals 1
    .parameter

    .prologue
    .line 14
    const-class v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->$VALUES:[Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    invoke-virtual {v0}, [Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    return-object v0
.end method
