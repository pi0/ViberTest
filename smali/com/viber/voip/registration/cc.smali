.class Lcom/viber/voip/registration/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/registration/au;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/cb;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/viber/voip/registration/cc;->a:Lcom/viber/voip/registration/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/registration/CountryCode;)V
    .locals 2
    .parameter

    .prologue
    .line 115
    iget-object v0, p0, Lcom/viber/voip/registration/cc;->a:Lcom/viber/voip/registration/cb;

    iget-object v0, v0, Lcom/viber/voip/registration/cb;->a:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/registration/cd;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/registration/cd;-><init>(Lcom/viber/voip/registration/cc;Lcom/viber/voip/registration/CountryCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method
