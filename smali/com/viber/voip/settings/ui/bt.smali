.class Lcom/viber/voip/settings/ui/bt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bt;->a:Lcom/viber/voip/settings/ui/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bt;->a:Lcom/viber/voip/settings/ui/bj;

    invoke-static {}, Lcom/viber/voip/settings/j;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/settings/ui/bj;->a(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 243
    return-void
.end method
