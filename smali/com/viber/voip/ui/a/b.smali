.class Lcom/viber/voip/ui/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/ui/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/ui/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/viber/voip/ui/a/b;->a:Lcom/viber/voip/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 54
    sparse-switch p2, :sswitch_data_0

    .line 64
    const/4 v0, 0x0

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 56
    :sswitch_1
    iget-object v1, p0, Lcom/viber/voip/ui/a/b;->a:Lcom/viber/voip/ui/a/a;

    iget-boolean v1, v1, Lcom/viber/voip/ui/a/a;->b:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    goto :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
