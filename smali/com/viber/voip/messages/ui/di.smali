.class Lcom/viber/voip/messages/ui/di;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;


# direct methods
.method constructor <init>(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;)V
    .locals 0
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 632
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 649
    :goto_0
    return-void

    .line 634
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;ZZ)V

    .line 635
    iget-object v0, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 638
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-static {v0, v2, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;ZZ)V

    .line 640
    iget-object v0, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/dn;->a(Ljava/util/Map;)V

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 644
    :pswitch_2
    iget-object v0, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-static {v0, v1, v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;ZZ)V

    .line 645
    iget-object v0, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->c:Lcom/viber/voip/messages/ui/dn;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    invoke-virtual {v1}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/dn;->b(Ljava/util/Map;)V

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/ui/di;->a:Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 632
    nop

    :pswitch_data_0
    .packed-switch 0x7f07023c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
