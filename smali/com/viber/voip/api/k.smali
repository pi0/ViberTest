.class Lcom/viber/voip/api/k;
.super Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

.field final synthetic b:Lcom/viber/voip/api/j;


# direct methods
.method constructor <init>(Lcom/viber/voip/api/j;Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Lcom/viber/voip/api/k;->b:Lcom/viber/voip/api/j;

    iput-object p2, p0, Lcom/viber/voip/api/k;->a:Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

    invoke-direct {p0}, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPublicGroupInfo(IJILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/viber/jni/LocationInfo;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lcom/viber/jni/PublicGroupUserInfo;IIIZI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 685
    sget v1, Lcom/viber/jni/ClientMessages$CGetGroupInfoReplyMsgStatus;->GROUP_REPLY_OK:I

    move/from16 v0, p19

    if-ne v0, v1, :cond_0

    .line 686
    new-instance v1, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;

    invoke-static/range {p7 .. p7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-wide v2, p2

    move-object/from16 v4, p9

    move-object v6, p5

    move v7, p6

    move/from16 v8, p17

    invoke-direct/range {v1 .. v8}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;-><init>(JLjava/lang/String;Landroid/net/Uri;Ljava/lang/String;II)V

    .line 687
    iget-object v2, p0, Lcom/viber/voip/api/k;->b:Lcom/viber/voip/api/j;

    iget-object v2, v2, Lcom/viber/voip/api/j;->a:Lcom/viber/voip/api/w;

    invoke-interface {v2, v1}, Lcom/viber/voip/api/w;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;)V

    .line 692
    :goto_0
    iget-object v1, p0, Lcom/viber/voip/api/k;->a:Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;

    invoke-virtual {v1, p0}, Lcom/viber/jni/publicgroup/PublicGroupInfoReceiverListener;->removeDelegate(Ljava/lang/Object;)V

    .line 693
    return-void

    .line 690
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/api/k;->b:Lcom/viber/voip/api/j;

    iget-object v1, v1, Lcom/viber/voip/api/j;->a:Lcom/viber/voip/api/w;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/viber/voip/api/w;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupConversationData;)V

    goto :goto_0
.end method
