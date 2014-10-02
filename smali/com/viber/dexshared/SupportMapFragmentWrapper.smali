.class public Lcom/viber/dexshared/SupportMapFragmentWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;


# instance fields
.field private mFragmentSuper:Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;

.field private mHelper:Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;


# direct methods
.method public constructor <init>(Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;)V
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/viber/dexshared/SupportMapFragmentWrapper;->mHelper:Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;

    .line 15
    iget-object v0, p0, Lcom/viber/dexshared/SupportMapFragmentWrapper;->mHelper:Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;

    invoke-interface {v0, p0}, Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;->init(Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;)V

    .line 16
    invoke-interface {p1}, Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;->getFragmentSuper()Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/dexshared/SupportMapFragmentWrapper;->mFragmentSuper:Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;

    .line 17
    return-void
.end method


# virtual methods
.method public getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/viber/dexshared/SupportMapFragmentWrapper;->mHelper:Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getMap()Lcom/viber/dexshared/GMaps$GoogleMap;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/dexshared/SupportMapFragmentWrapper;->mHelper:Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper;->getMap()Lcom/viber/dexshared/GMaps$GoogleMap;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/dexshared/SupportMapFragmentWrapper;->mFragmentSuper:Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;

    invoke-interface {v0}, Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/dexshared/SupportMapFragmentWrapper;->mFragmentSuper:Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;

    invoke-interface {v0, p1}, Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;->onActivityCreated(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/viber/dexshared/SupportMapFragmentWrapper;->mFragmentSuper:Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/viber/dexshared/GMaps$SupportMapFragmentHelper$FragmentDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
