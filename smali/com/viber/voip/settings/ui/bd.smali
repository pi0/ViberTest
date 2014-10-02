.class Lcom/viber/voip/settings/ui/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/controller/y;


# instance fields
.field final synthetic a:Landroid/app/ProgressDialog;

.field final synthetic b:Lcom/viber/voip/settings/ui/bc;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bc;Landroid/app/ProgressDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bd;->b:Lcom/viber/voip/settings/ui/bc;

    iput-object p2, p0, Lcom/viber/voip/settings/ui/bd;->a:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bd;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 68
    return-void
.end method
