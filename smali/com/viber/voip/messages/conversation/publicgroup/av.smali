.class Lcom/viber/voip/messages/conversation/publicgroup/av;
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
    .line 127
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/publicgroup/av;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/av;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->a(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/av;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/actionbarsherlock/app/SherlockFragmentActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/util/p;

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/av;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-virtual {v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/viber/voip/util/p;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/publicgroup/av;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-static {v0}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->d(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/publicgroup/av;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-static {v1}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->b(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/messages/conversation/publicgroup/av;->a:Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;

    invoke-static {v2}, Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;->c(Lcom/viber/voip/messages/conversation/publicgroup/PublicGroupInfoFragment;)Lcom/viber/voip/util/b/x;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/viber/voip/util/b/w;->a(Landroid/net/Uri;Landroid/widget/ImageView;Lcom/viber/voip/util/b/x;)V

    .line 135
    :cond_0
    return-void
.end method
