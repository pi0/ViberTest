.class Lcom/viber/voip/billing/ca;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/billing/be;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/bv;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/bv;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/viber/voip/billing/ca;->a:Lcom/viber/voip/billing/bv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/billing/ca;->a:Lcom/viber/voip/billing/bv;

    invoke-static {v0}, Lcom/viber/voip/billing/bv;->a(Lcom/viber/voip/billing/bv;)V

    .line 148
    return-void
.end method
