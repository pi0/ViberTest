.class Lcom/viber/voip/billing/cu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/billing/cs;


# direct methods
.method constructor <init>(Lcom/viber/voip/billing/cs;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/viber/voip/billing/cu;->a:Lcom/viber/voip/billing/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/viber/voip/billing/cu;->a:Lcom/viber/voip/billing/cs;

    invoke-static {v0}, Lcom/viber/voip/billing/cs;->d(Lcom/viber/voip/billing/cs;)V

    .line 167
    return-void
.end method
