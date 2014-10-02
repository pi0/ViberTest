.class Lcom/viber/voip/cm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/SystemDialogActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/SystemDialogActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/viber/voip/cm;->b:Lcom/viber/voip/SystemDialogActivity;

    iput-boolean p2, p0, Lcom/viber/voip/cm;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/viber/voip/cm;->a:Z

    if-eqz v0, :cond_0

    .line 151
    iget-boolean v0, p0, Lcom/viber/voip/cm;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "202"

    .line 154
    :goto_0
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "Ok"

    invoke-virtual {v2, v0, v3}, Lcom/viber/voip/a/u;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/cm;->b:Lcom/viber/voip/SystemDialogActivity;

    iget-object v1, p0, Lcom/viber/voip/cm;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v1}, Lcom/viber/voip/SystemDialogActivity;->a(Lcom/viber/voip/SystemDialogActivity;)Landroid/content/DialogInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/SystemDialogActivity;->a(Landroid/content/DialogInterface;)V

    .line 159
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/cm;->b:Lcom/viber/voip/SystemDialogActivity;

    invoke-static {v0}, Lcom/viber/voip/util/ft;->d(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "201"

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "203"

    goto :goto_0
.end method
