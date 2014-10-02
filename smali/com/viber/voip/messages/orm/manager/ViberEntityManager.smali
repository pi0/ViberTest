.class public Lcom/viber/voip/messages/orm/manager/ViberEntityManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final defaultValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final entitiesMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->entitiesMapping:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    .line 41
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-class v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    return-void
.end method

.method private static findProjection(Ljava/lang/Class;Ljava/util/List;Ljava/util/Set;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 199
    const-class v4, Lcom/viber/voip/messages/orm/annotation/ViberEntityField;

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/annotation/ViberEntityField;

    .line 200
    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lcom/viber/voip/messages/orm/annotation/ViberEntityField;->projection()Ljava/lang/String;

    move-result-object v4

    .line 203
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0}, Lcom/viber/voip/messages/orm/annotation/ViberEntityField;->api()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 204
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-interface {v0}, Lcom/viber/voip/messages/orm/annotation/ViberEntityField;->uiRelated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 211
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 212
    if-eqz v0, :cond_2

    .line 213
    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->findProjection(Ljava/lang/Class;Ljava/util/List;Ljava/util/Set;)V

    .line 215
    :cond_2
    return-void
.end method

.method public static getContentValues(Ljava/lang/Class;Landroid/database/Cursor;I)Landroid/content/ContentValues;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/database/Cursor;",
            "I)",
            "Landroid/content/ContentValues;"
        }
    .end annotation

    .prologue
    .line 73
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 74
    invoke-static {p0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getFieldsData(Ljava/lang/Class;)Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    move-result-object v3

    .line 76
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, v3, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projections:[Ljava/lang/String;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 77
    iget-object v0, v3, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projections:[Ljava/lang/String;

    aget-object v4, v0, v1

    .line 78
    iget-object v0, v3, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projectionTypes:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    add-int v5, v1, p2

    invoke-static {v0, v2, p1, v4, v5}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getFromCursor(Ljava/lang/Class;Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .line 76
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string/jumbo v1, "setCursor: IllegalArgumentException"

    invoke-static {v1, v0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 87
    :cond_0
    :goto_1
    return-object v2

    .line 82
    :catch_1
    move-exception v0

    .line 83
    const-string/jumbo v1, "setCursor: IllegalAccessException"

    invoke-static {v1, v0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .line 84
    :catch_2
    move-exception v0

    .line 85
    const-string/jumbo v1, "setCursor: SecurityException"

    invoke-static {v1, v0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method private static getDefaulfAgrument(Ljava/lang/reflect/Method;)Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 218
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 219
    sget-object v1, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->defaultValues:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getEntityMapping(Ljava/lang/Class;)Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getFieldsData(Ljava/lang/Class;)Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    move-result-object v0

    return-object v0
.end method

.method private static getFieldsData(Ljava/lang/Class;)Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;"
        }
    .end annotation

    .prologue
    .line 111
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->entitiesMapping:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {p0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->initEntitityData(Ljava/lang/Class;)V

    .line 114
    :cond_0
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->entitiesMapping:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getFieldsData(Ljava/lang/Class;)Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    move-result-object v0

    .line 117
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->entitiesMapping:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    goto :goto_0
.end method

.method private static getFromCursor(Ljava/lang/Class;Landroid/content/ContentValues;Landroid/database/Cursor;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/ContentValues;",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 224
    const-class v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 225
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Ljava/lang/Long;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    :cond_2
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 229
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 230
    :cond_3
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    :cond_4
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 232
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 233
    :cond_5
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 234
    :cond_6
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v0, :cond_7

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 235
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 234
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 236
    :cond_8
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 237
    :cond_9
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 238
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0

    .line 239
    :cond_a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-class v0, Ljava/lang/Float;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 240
    :cond_b
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 241
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    goto/16 :goto_0

    .line 242
    :cond_c
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-class v0, Ljava/lang/Short;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :cond_d
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    .line 244
    invoke-virtual {p1, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    goto/16 :goto_0
.end method

.method public static getProjectionColumn(Ljava/lang/Class;Ljava/lang/String;)I
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 103
    invoke-static {p0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getFieldsData(Ljava/lang/Class;)Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->getProjectionColumn(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getProjections(Lcom/viber/voip/messages/orm/entity/Entity;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getFieldsData(Ljava/lang/Class;)Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projections:[Ljava/lang/String;

    return-object v0
.end method

.method public static getProjections(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 99
    invoke-static {p0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getFieldsData(Ljava/lang/Class;)Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->projections:[Ljava/lang/String;

    return-object v0
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getFieldsData(Ljava/lang/Class;)Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized initEntitityData(Ljava/lang/Class;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    const-class v9, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;

    monitor-enter v9

    :try_start_0
    sget-object v1, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->entitiesMapping:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 195
    :cond_0
    :goto_0
    monitor-exit v9

    return-void

    .line 126
    :cond_1
    :try_start_1
    const-class v1, Lcom/viber/voip/messages/orm/annotation/ViberEntity;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/viber/voip/messages/orm/annotation/ViberEntity;

    move-object v8, v0

    .line 129
    if-eqz v8, :cond_6

    invoke-interface {v8}, Lcom/viber/voip/messages/orm/annotation/ViberEntity;->type()Lcom/viber/voip/messages/orm/annotation/ViberEntityType;

    move-result-object v1

    sget-object v4, Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->ContentValues:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v4, :cond_6

    .line 131
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/Entity;

    .line 132
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 136
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    array-length v10, v7

    move v4, v2

    :goto_1
    if-ge v4, v10, :cond_3

    aget-object v11, v7, v4

    .line 137
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v12, "set"

    invoke-virtual {v2, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3

    .line 140
    const/4 v2, 0x1

    :try_start_3
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v11}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getDefaulfAgrument(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v13

    aput-object v13, v2, v12

    invoke-virtual {v11, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 136
    :cond_2
    :goto_2
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_1

    .line 141
    :catch_0
    move-exception v2

    .line 142
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "initEntitityData: IllegalArgumentException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 165
    :catch_1
    move-exception v1

    .line 166
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initEntitityData: InstantiationException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v9

    throw v1

    .line 143
    :catch_2
    move-exception v2

    .line 144
    :try_start_6
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "initEntitityData: IllegalAccessException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 167
    :catch_3
    move-exception v1

    .line 168
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initEntitityData: IllegalAccessException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 145
    :catch_4
    move-exception v2

    .line 146
    :try_start_8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "initEntitityData: InvocationTargetException: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 150
    :cond_3
    const/4 v4, 0x0

    .line 151
    invoke-interface {v1}, Lcom/viber/voip/messages/orm/entity/Entity;->getContentValues()Landroid/content/ContentValues;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v1

    .line 152
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    .line 153
    const-string/jumbo v7, "_id"

    aput-object v7, v2, v4

    .line 154
    const-string/jumbo v4, "_id"

    const-class v7, Ljava/lang/Long;

    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v3

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 156
    add-int/lit8 v7, v4, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v4

    .line 157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v7

    goto :goto_3

    .line 159
    :cond_4
    const-class v1, Lcom/viber/voip/messages/orm/annotation/ViberCacheId;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/annotation/ViberCacheId;

    .line 160
    if-eqz v1, :cond_5

    .line 161
    invoke-interface {v1}, Lcom/viber/voip/messages/orm/annotation/ViberCacheId;->projection()Ljava/lang/String;

    move-result-object v5

    .line 163
    :cond_5
    const-string/jumbo v1, "content://%s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v8}, Lcom/viber/voip/messages/orm/annotation/ViberEntity;->authority()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x1

    invoke-interface {v8}, Lcom/viber/voip/messages/orm/annotation/ViberEntity;->table()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 164
    sget-object v7, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->entitiesMapping:Ljava/util/Map;

    new-instance v1, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    invoke-interface {v8}, Lcom/viber/voip/messages/orm/annotation/ViberEntity;->table()Ljava/lang/String;

    move-result-object v3

    invoke-direct/range {v1 .. v6}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;-><init>([Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v7, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InstantiationException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 170
    :cond_6
    if-eqz v8, :cond_0

    :try_start_9
    invoke-interface {v8}, Lcom/viber/voip/messages/orm/annotation/ViberEntity;->type()Lcom/viber/voip/messages/orm/annotation/ViberEntityType;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/messages/orm/annotation/ViberEntityType;->Standard:Lcom/viber/voip/messages/orm/annotation/ViberEntityType;

    if-ne v1, v2, :cond_0

    .line 172
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 178
    :try_start_a
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 179
    instance-of v4, v1, Lcom/viber/voip/messages/orm/manager/EntityHelper;

    if-eqz v4, :cond_8

    .line 180
    check-cast v1, Lcom/viber/voip/messages/orm/manager/EntityHelper;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :goto_4
    move-object v4, v1

    .line 186
    :goto_5
    :try_start_b
    invoke-static {p0, v2, v3}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->findProjection(Ljava/lang/Class;Ljava/util/List;Ljava/util/Set;)V

    .line 188
    const-class v1, Lcom/viber/voip/messages/orm/annotation/ViberCacheId;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/annotation/ViberCacheId;

    .line 189
    if-eqz v1, :cond_7

    .line 190
    invoke-interface {v1}, Lcom/viber/voip/messages/orm/annotation/ViberCacheId;->projection()Ljava/lang/String;

    move-result-object v7

    .line 192
    :goto_6
    const-string/jumbo v1, "content://%s/%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v8}, Lcom/viber/voip/messages/orm/annotation/ViberEntity;->authority()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    const/4 v6, 0x1

    invoke-interface {v8}, Lcom/viber/voip/messages/orm/annotation/ViberEntity;->table()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 193
    sget-object v10, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->entitiesMapping:Ljava/util/Map;

    new-instance v1, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;

    invoke-interface {v8}, Lcom/viber/voip/messages/orm/annotation/ViberEntity;->table()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v1 .. v7}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager$EntityMapping;-><init>(Ljava/util/List;Ljava/util/Set;Lcom/viber/voip/messages/orm/manager/EntityHelper;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-interface {v10, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 182
    :catch_5
    move-exception v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->log(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v4, v5

    goto :goto_5

    :cond_7
    move-object v7, v5

    goto :goto_6

    :cond_8
    move-object v1, v5

    goto :goto_4
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    return-void
.end method

.method protected static log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 253
    return-void
.end method

.method public static setCursor(Ljava/lang/Class;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/viber/voip/messages/orm/manager/ViberEntityManager;->getContentValues(Ljava/lang/Class;Landroid/database/Cursor;I)Landroid/content/ContentValues;

    .line 62
    return-void
.end method
