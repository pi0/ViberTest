.class Lcom/viber/voip/registration/cd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/CountryCode;

.field final synthetic b:Lcom/viber/voip/registration/cc;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/cc;Lcom/viber/voip/registration/CountryCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 115
    iput-object p1, p0, Lcom/viber/voip/registration/cd;->b:Lcom/viber/voip/registration/cc;

    iput-object p2, p0, Lcom/viber/voip/registration/cd;->a:Lcom/viber/voip/registration/CountryCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/viber/voip/registration/cd;->b:Lcom/viber/voip/registration/cc;

    iget-object v0, v0, Lcom/viber/voip/registration/cc;->a:Lcom/viber/voip/registration/cb;

    iget-object v1, p0, Lcom/viber/voip/registration/cd;->a:Lcom/viber/voip/registration/CountryCode;

    invoke-static {v0, v1}, Lcom/viber/voip/registration/cb;->a(Lcom/viber/voip/registration/cb;Lcom/viber/voip/registration/CountryCode;)V

    .line 119
    return-void
.end method
