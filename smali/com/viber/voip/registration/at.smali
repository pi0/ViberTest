.class Lcom/viber/voip/registration/at;
.super Lcom/viber/voip/util/t;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/util/fw;

.field final synthetic b:Lcom/viber/voip/registration/ar;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/ar;Lcom/viber/voip/util/t;Lcom/viber/voip/util/fw;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/viber/voip/registration/at;->b:Lcom/viber/voip/registration/ar;

    iput-object p3, p0, Lcom/viber/voip/registration/at;->a:Lcom/viber/voip/util/fw;

    invoke-direct {p0, p2}, Lcom/viber/voip/util/t;-><init>(Lcom/viber/voip/util/t;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/viber/voip/registration/at;->a:Lcom/viber/voip/util/fw;

    invoke-interface {v0}, Lcom/viber/voip/util/fw;->b()V

    .line 113
    return-void
.end method
