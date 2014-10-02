.class public Lcom/viber/voip/messages/extras/map/l;
.super Lcom/viber/dexshared/SupportMapFragmentWrapper;
.source "SourceFile"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/viber/voip/messages/extras/map/m;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/viber/voip/ViberEnv;->getGMapsFactory()Lcom/viber/dexshared/GMaps$Factory;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$Factory;->newSupportMapFragmentHelper()Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/dexshared/SupportMapFragmentWrapper;-><init>(Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;)V

    .line 17
    return-void
.end method


# virtual methods
.method public a()Lcom/viber/voip/messages/extras/map/m;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/l;->b:Lcom/viber/voip/messages/extras/map/m;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/l;->a:Landroid/view/View;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/viber/dexshared/SupportMapFragmentWrapper;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/l;->a:Landroid/view/View;

    .line 22
    new-instance v0, Lcom/viber/voip/messages/extras/map/m;

    invoke-virtual {p0}, Lcom/viber/voip/messages/extras/map/l;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/messages/extras/map/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/messages/extras/map/l;->b:Lcom/viber/voip/messages/extras/map/m;

    .line 23
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/l;->b:Lcom/viber/voip/messages/extras/map/m;

    iget-object v1, p0, Lcom/viber/voip/messages/extras/map/l;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/viber/voip/messages/extras/map/m;->addView(Landroid/view/View;)V

    .line 24
    iget-object v0, p0, Lcom/viber/voip/messages/extras/map/l;->b:Lcom/viber/voip/messages/extras/map/m;

    return-object v0
.end method
