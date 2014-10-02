.class Lcom/viber/voip/phone/b/w;
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
    .line 131
    iput-object p1, p0, Lcom/viber/voip/phone/b/w;->a:Lcom/viber/voip/phone/b/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 134
    iget-object v0, p0, Lcom/viber/voip/phone/b/w;->a:Lcom/viber/voip/phone/b/u;

    invoke-virtual {v0}, Lcom/viber/voip/phone/b/u;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f070350

    iget-object v2, p0, Lcom/viber/voip/phone/b/w;->a:Lcom/viber/voip/phone/b/u;

    invoke-static {v2}, Lcom/viber/voip/phone/b/u;->a(Lcom/viber/voip/phone/b/u;)Lcom/viber/voip/phone/b/ag;

    move-result-object v2

    const-string/jumbo v3, "fragment_call_keypad"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const-string/jumbo v1, "fragment_call_keypad"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 138
    return-void
.end method
