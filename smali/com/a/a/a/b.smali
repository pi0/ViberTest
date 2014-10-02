.class Lcom/a/a/a/b;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/a/a/a/a;


# direct methods
.method private constructor <init>(Lcom/a/a/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 469
    iput-object p1, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/a/a;Lcom/a/a/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lcom/a/a/a/b;-><init>(Lcom/a/a/a/a;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->notifyDataSetChanged()V

    .line 473
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/a/a/a/b;->a:Lcom/a/a/a/a;

    invoke-virtual {v0}, Lcom/a/a/a/a;->notifyDataSetInvalidated()V

    .line 478
    return-void
.end method
