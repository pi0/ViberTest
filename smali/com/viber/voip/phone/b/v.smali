.class Lcom/viber/voip/phone/b/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/phone/b/u;


# direct methods
.method constructor <init>(Lcom/viber/voip/phone/b/u;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/viber/voip/phone/b/v;->a:Lcom/viber/voip/phone/b/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viber/voip/phone/b/v;->a:Lcom/viber/voip/phone/b/u;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/u;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 120
    return-void
.end method
