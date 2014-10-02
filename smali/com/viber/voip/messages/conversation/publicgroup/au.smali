.class Lcom/viber/voip/messages/conversation/publicgroup/au;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/util/b/al;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/au;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/au;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/au;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-static {v0, p2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;Landroid/graphics/Bitmap;)V

    .line 124
    :cond_0
    return-void
.end method
