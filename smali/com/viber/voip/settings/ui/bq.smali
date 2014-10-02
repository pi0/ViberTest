.class Lcom/viber/voip/settings/ui/bq;
.super Lcom/viber/voip/messages/extras/fb/ad;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/settings/ui/bj;


# direct methods
.method constructor <init>(Lcom/viber/voip/settings/ui/bj;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/viber/voip/settings/ui/bq;->a:Lcom/viber/voip/settings/ui/bj;

    invoke-direct {p0}, Lcom/viber/voip/messages/extras/fb/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public onFacebookProfileStored()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/viber/voip/settings/ui/bq;->a:Lcom/viber/voip/settings/ui/bj;

    invoke-static {v0}, Lcom/viber/voip/settings/ui/bj;->b(Lcom/viber/voip/settings/ui/bj;)V

    .line 181
    return-void
.end method
