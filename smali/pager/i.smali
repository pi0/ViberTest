.class Lpager/i;
.super Landroid/database/DataSetObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lpager/ViewPager;


# direct methods
.method private constructor <init>(Lpager/ViewPager;)V
    .locals 0
    .parameter

    .prologue
    .line 2539
    iput-object p1, p0, Lpager/i;->a:Lpager/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lpager/ViewPager;Lpager/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2539
    invoke-direct {p0, p1}, Lpager/i;-><init>(Lpager/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2542
    iget-object v0, p0, Lpager/i;->a:Lpager/ViewPager;

    invoke-virtual {v0}, Lpager/ViewPager;->a()V

    .line 2543
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2546
    iget-object v0, p0, Lpager/i;->a:Lpager/ViewPager;

    invoke-virtual {v0}, Lpager/ViewPager;->a()V

    .line 2547
    return-void
.end method
