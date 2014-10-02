.class public Lcom/viber/voip/widget/SpinnerWithDescription;
.super Lcom/viber/voip/widget/am;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/viber/voip/widget/am;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/widget/am;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/widget/am;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/widget/SpinnerWithDescription;->a:Landroid/widget/Spinner;

    .line 31
    iget-object v0, p0, Lcom/viber/voip/widget/SpinnerWithDescription;->a:Landroid/widget/Spinner;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/viber/voip/widget/SpinnerWithDescription;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/widget/SpinnerWithDescription;->a:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/viber/voip/widget/SpinnerWithDescription;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 36
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/viber/voip/widget/SpinnerWithDescription;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/viber/voip/widget/SpinnerWithDescription;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 52
    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/viber/voip/widget/SpinnerWithDescription;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 56
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/widget/SpinnerWithDescription;->a:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 48
    return-void
.end method
