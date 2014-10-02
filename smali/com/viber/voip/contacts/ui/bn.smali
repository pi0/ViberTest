.class Lcom/viber/voip/contacts/ui/bn;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/ui/bm;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/ui/bm;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bn;->a:Lcom/viber/voip/contacts/ui/bm;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bn;->a:Lcom/viber/voip/contacts/ui/bm;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/bm;->a(Lcom/viber/voip/contacts/ui/bm;)V

    .line 86
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bn;->a:Lcom/viber/voip/contacts/ui/bm;

    invoke-static {v0}, Lcom/viber/voip/contacts/ui/bm;->a(Lcom/viber/voip/contacts/ui/bm;)V

    .line 91
    return-void
.end method
