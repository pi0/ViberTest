.class public Lcom/viber/jni/ClientMessages$CGetGroupInfoReplyMsgStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static GROUP_REPLY_FAIL:I

.field public static GROUP_REPLY_NOT_IN_GROUP:I

.field public static GROUP_REPLY_OK:I

.field public static GROUP_REPLY_TIMEOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    sput v0, Lcom/viber/jni/ClientMessages$CGetGroupInfoReplyMsgStatus;->GROUP_REPLY_OK:I

    .line 58
    const/4 v0, 0x1

    sput v0, Lcom/viber/jni/ClientMessages$CGetGroupInfoReplyMsgStatus;->GROUP_REPLY_NOT_IN_GROUP:I

    .line 59
    const/4 v0, 0x2

    sput v0, Lcom/viber/jni/ClientMessages$CGetGroupInfoReplyMsgStatus;->GROUP_REPLY_TIMEOUT:I

    .line 60
    const/4 v0, 0x3

    sput v0, Lcom/viber/jni/ClientMessages$CGetGroupInfoReplyMsgStatus;->GROUP_REPLY_FAIL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
