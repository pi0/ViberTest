.class Lcom/viber/voip/billing/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/aj;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/ac;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/viber/voip/billing/ad;->a:Lcom/viber/voip/billing/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/billing/an;)V
    .locals 1
    .parameter

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/viber/voip/billing/ad;->a:Lcom/viber/voip/billing/ac;

    iput-object p1, v0, Lcom/viber/voip/billing/ac;->g:Lcom/viber/voip/billing/an;

    .line 1098
    iget-object v0, p0, Lcom/viber/voip/billing/ad;->a:Lcom/viber/voip/billing/ac;

    invoke-static {v0}, Lcom/viber/voip/billing/ac;->a(Lcom/viber/voip/billing/ac;)V

    .line 1099
    return-void
.end method
