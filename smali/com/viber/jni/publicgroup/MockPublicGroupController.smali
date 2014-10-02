.class public Lcom/viber/jni/publicgroup/MockPublicGroupController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/jni/publicgroup/PublicGroupController;


# instance fields
.field private mInviteReceiveListener:Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;

.field private mInviteSendListener:Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;


# direct methods
.method public constructor <init>(Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/viber/jni/publicgroup/MockPublicGroupController;->mInviteSendListener:Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;

    .line 22
    iput-object p2, p0, Lcom/viber/jni/publicgroup/MockPublicGroupController;->mInviteReceiveListener:Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;

    .line 23
    return-void
.end method


# virtual methods
.method public handleSendPublicGroupInvite(I[Ljava/lang/String;J)Z
    .locals 16
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const/4 v1, 0x0

    move v15, v1

    :goto_0
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v15, v1, :cond_0

    .line 38
    const-string/jumbo v8, ""

    .line 39
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/jni/publicgroup/MockPublicGroupController;->mInviteReceiveListener:Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aget-object v4, p2, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v11, "8d24ff38e4f970f2f753f63fb098c9035affe8a2dd89372f68ffa107a7a763cb"

    const-string/jumbo v12, "\u00d0\u00a0\u00d0\u00be\u00d1\u008f\u00d0\u00bb\u00d1\u0152 \u00d0\u00b2 \u00d0\u00ba\u00d1\u0192\u00d1\u0081\u00d1\u201a\u00d0\u00b0\u00d1\u2026"

    mul-int/lit16 v13, v15, 0x2710

    const/4 v14, 0x1

    move/from16 v7, p1

    move-wide/from16 v9, p3

    invoke-interface/range {v1 .. v14}, Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteReceive;->onPublicGroupInvite(JLjava/lang/String;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;II)Z

    .line 36
    add-int/lit8 v1, v15, 0x1

    move v15, v1

    goto :goto_0

    .line 48
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/jni/publicgroup/MockPublicGroupController;->mInviteSendListener:Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/viber/jni/publicgroup/PublicGroupControllerDelegate$InviteSend;->onSendPublicGroupInviteReply(IJILjava/util/Map;)V

    .line 51
    const/4 v1, 0x1

    return v1
.end method
