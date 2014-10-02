.class Lcom/viber/voip/bq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/viber/voip/bq;->a:Lcom/viber/voip/SystemDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 369
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "303"

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Continue"

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 373
    iget-object v0, p0, Lcom/viber/voip/bq;->a:Lcom/viber/voip/SystemDialogActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/viber/voip/bq;->a:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v2}, Lcom/viber/voip/SystemDialogActivity;->c(Lcom/viber/voip/SystemDialogActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;ILjava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/viber/voip/bq;->a:Lcom/viber/voip/SystemDialogActivity;

    invoke-virtual {v0, p1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    .line 375
    return-void
.end method
