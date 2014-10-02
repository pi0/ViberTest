.class Lcom/viber/voip/messages/conversation/a/i;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/messages/conversation/a/g;


# direct methods
.method private constructor <init>(Lcom/viber/voip/messages/conversation/a/g;)V
    .locals 0
    .parameter

    .prologue
    .line 351
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/a/i;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/messages/conversation/a/g;Lcom/viber/voip/messages/conversation/a/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 351
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/conversation/a/i;-><init>(Lcom/viber/voip/messages/conversation/a/g;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/i;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->notifyDataSetChanged()V

    .line 356
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/a/i;->a:Lcom/viber/voip/messages/conversation/a/g;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/a/g;->notifyDataSetInvalidated()V

    .line 361
    return-void
.end method
