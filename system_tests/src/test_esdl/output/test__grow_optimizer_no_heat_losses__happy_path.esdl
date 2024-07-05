<?xml version='1.0' encoding='UTF-8'?>
<esdl:EnergySystem xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:esdl="http://www.tno.nl/esdl" name="PoC Tutorial_SmartControlOptimized_GrowOptimized" id="21781e7d-78f5-4278-afb5-90a69f31ccf4" version="13" description="" esdlVersion="v2207">
  <instance xsi:type="esdl:Instance" name="Untitled instance" id="9af52a01-24e2-4bbe-a7b8-f868161e6ca3">
    <area xsi:type="esdl:Area" id="9edf5aa3-3855-4dac-b6f5-01c2edf1a43a" name="Untitled area">
      <asset xsi:type="esdl:ResidualHeatSource" id="72d74fb5-134f-4bfb-829e-220ab76a8a7b" power="7822436.327999999" name="ResidualHeatSource_72d7">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.372987747192384" lat="52.00467202060717"/>
        <port xsi:type="esdl:OutPort" id="d890f8aa-9b94-493d-b017-bd7cebaf8c77" connectedTo="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="33eb846f-34f1-48a3-a5a3-82cc7bf2384b" measurement="ResidualHeatSource_72d7" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="b79ae1ea-e412-405d-814e-4ee274c76ac7" measurement="ResidualHeatSource_72d7" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
        </port>
        <port xsi:type="esdl:InPort" connectedTo="c0a27794-98e2-4119-a363-cec4f0b525cd" id="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In"/>
        <costInformation xsi:type="esdl:CostInformation" id="123cc46e-f8ef-42f9-842f-08e77dd06899">
          <variableOperationalCosts xsi:type="esdl:SingleValue" id="e5bc1b5e-23b1-4985-94f2-bea25c12da14" value="100.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="de56cc5d-2baa-451c-b38c-47abea1393c2" description="Cost in EUR/MWh" perMultiplier="MEGA" perUnit="WATTHOUR" unit="EURO"/>
          </variableOperationalCosts>
          <investmentCosts xsi:type="esdl:SingleValue" id="3102215e-50a4-4332-b16e-2fd6522df31b" value="1500000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="69673880-fe81-4f34-8fd9-558cc693a251" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT" unit="EURO"/>
          </investmentCosts>
          <marginalCosts xsi:type="esdl:SingleValue" id="e52de449-7340-4878-b582-d20711d9fb14" value="1.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="4fccbb6b-2e41-46d9-a92c-f94da7c3aca7" description="Cost in EUR"/>
          </marginalCosts>
          <installationCosts xsi:type="esdl:SingleValue" id="12c24715-08dc-4b61-ae15-76541704c83a" value="10000000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="89b04c83-eb32-49a3-adc4-492a719221d3" description="Cost in EUR"/>
          </installationCosts>
          <fixedOperationalCosts xsi:type="esdl:SingleValue" id="8ee43904-745d-4f5c-8b15-5a2adcde7e5f" value="600000.0">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="4c3a445d-d13f-4f61-8d75-22280135830f" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT" unit="EURO"/>
          </fixedOperationalCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.25" id="Pipe1" diameter="DN150" innerDiameter="0.1603" length="818.07" name="Pipe1" related="Pipe1_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.372987747192384" lat="52.00467202060717"/>
          <point xsi:type="esdl:Point" lon="4.365863800048829" lat="52.00210934629504"/>
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.004">
            <matter xsi:type="esdl:Material" id="fa85538e-ebfa-4bce-8386-04980e793e18" thermalConductivity="52.15" name="steel"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.03725">
            <matter xsi:type="esdl:Material" id="3bafa031-f40f-42fc-b409-e35fffe5f457" thermalConductivity="0.027" name="PUR"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0036">
            <matter xsi:type="esdl:Material" id="893337e3-58f1-4fb4-8c25-68d71b11fb71" thermalConductivity="0.4" name="HDPE"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="d890f8aa-9b94-493d-b017-bd7cebaf8c77" id="07c2f88e-85be-4b8b-a72e-14364a3810c9" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="fc2801d0-215b-4d2b-9846-ee4918b87e21" connectedTo="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="9b6080c0-ec31-40bc-89b7-af12b7dea861" measurement="Pipe1" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="f8a281e1-dd4e-4156-aea9-6b3ffd4c25aa" measurement="Pipe1" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="3ba43b00-8806-4881-a542-8b350967feac" measurement="Pipe1" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" perTimeUnit="SECOND" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="1126.4" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" id="a04cb927-426d-4016-a084-356002a85d6c" name="Joint_a04c">
        <geometry xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
        <port xsi:type="esdl:InPort" connectedTo="fc2801d0-215b-4d2b-9846-ee4918b87e21" id="d149871b-d76a-4cc3-8922-c8d99205f47e" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="3535f436-1270-4b1b-a326-41d69cd6e330" connectedTo="863d2ff2-7a68-4bfb-8aa5-dab741b72b25 7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.56" id="Pipe2" diameter="DN400" innerDiameter="0.3938" length="517.54" name="Pipe2" related="Pipe2_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" name="steel" id="74d84321-1767-4cec-b6e7-b90c06020400" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" name="PUR" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" name="HDPE" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="863d2ff2-7a68-4bfb-8aa5-dab741b72b25" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="8c38fc93-ed85-42ef-9be6-87d47c416e90" connectedTo="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="a442d21f-bd7c-44df-b150-6582944d3486" measurement="Pipe2" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="e5b77e3a-630d-4f06-9d8e-c2dde8cbd2be" measurement="Pipe2" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="d4927661-b2f6-4dc8-b88c-086e8c6cc3c1" measurement="Pipe2" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" perTimeUnit="SECOND" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.56" id="Pipe3" diameter="DN400" innerDiameter="0.3938" length="1182.23" name="Pipe3" related="Pipe3_ret">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373888969421388" lat="51.989029496545015"/>
          <point xsi:type="esdl:Point" lon="4.379038810729981" lat="51.99069441691871"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0063">
            <matter xsi:type="esdl:Material" name="steel" id="74d84321-1767-4cec-b6e7-b90c06020400" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0711">
            <matter xsi:type="esdl:Material" name="PUR" id="95012cd9-7648-4df5-8c83-74dc73bc16ba" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0057">
            <matter xsi:type="esdl:Material" name="HDPE" id="1392ee3f-34f6-4c8e-ab0e-635b9d7ec9be" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="e44060e9-8b0e-41e5-ae46-ce074c891c15" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="13edd58c-4a04-4770-8aac-c6e8689acbba" connectedTo="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="f962c272-6cfd-418b-b193-bbe3effbb323" measurement="Pipe3" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="59b4faf3-71e1-4e44-80f7-a27a26f1dc69" measurement="Pipe3" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="64beee20-5920-4b96-a4f3-f0ff356a837a" measurement="Pipe3" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" perTimeUnit="SECOND" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4a3d48d9-74bb-4407-b249-9e2af4d1037c">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="2840.6" id="2ab2214c-8d42-4b74-877f-7fb97f6eab86">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="9169bd50-197f-4d6b-aaac-b383a59c815d" description="Costs in EUR/m" perUnit="METRE" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" id="95caf7c7-e89f-4378-96f2-f904f9255c83" name="Joint_95ca">
        <geometry xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
        <port xsi:type="esdl:InPort" connectedTo="8c38fc93-ed85-42ef-9be6-87d47c416e90" id="4d629e6e-5db4-4a8f-9945-934a24ede11a" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="a42acf83-361d-4d4d-8001-8617daad939a" connectedTo="e44060e9-8b0e-41e5-ae46-ce074c891c15 20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.45" id="Pipe4" diameter="DN300" innerDiameter="0.3127" length="455.4" name="Pipe4" related="Pipe4_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.367129802703858" lat="51.99996926872789"/>
          <point xsi:type="esdl:Point" lon="4.373545646667481" lat="52.00105253065436"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" name="steel" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" name="PUR" id="e4c0350c-cd79-45b4-a45c-6259c750b478" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" name="HDPE" id="9a97f588-10fe-4a34-b0f2-277862151763" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="3535f436-1270-4b1b-a326-41d69cd6e330" id="7f18f0b7-fcf3-4d83-8a65-79cbd3273ea7" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="5169316d-ae93-4f04-9a34-7c776444b651" connectedTo="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="247ad14c-39f0-40ff-b3c4-3ec27cc897dc" measurement="Pipe4" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="92510b5a-21b7-4243-920c-d2b9e2ca95d1" measurement="Pipe4" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="b029abf3-79e4-4ce3-8b60-79083b33c96a" measurement="Pipe4" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" perTimeUnit="SECOND" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="384df56d-e3f0-4794-a0e2-bc0c71482e45">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="1962.1" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" perUnit="METRE" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.45" id="Pipe5" diameter="DN300" innerDiameter="0.3127" length="252.3" name="Pipe5" related="Pipe5_ret">
        <geometry xsi:type="esdl:Line" CRS="WGS84">
          <point xsi:type="esdl:Point" lon="4.36983346939087" lat="51.995622746921015"/>
          <point xsi:type="esdl:Point" lon="4.373245239257813" lat="51.99648151568376"/>
        </geometry>
        <material xsi:type="esdl:CompoundMatter" compoundType="LAYERED">
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0056">
            <matter xsi:type="esdl:Material" name="steel" id="f4cee538-cc3b-4809-bd66-979f2ce9649b" thermalConductivity="52.15"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.05785">
            <matter xsi:type="esdl:Material" name="PUR" id="e4c0350c-cd79-45b4-a45c-6259c750b478" thermalConductivity="0.027"/>
          </component>
          <component xsi:type="esdl:CompoundMatterComponent" layerWidth="0.0052">
            <matter xsi:type="esdl:Material" name="HDPE" id="9a97f588-10fe-4a34-b0f2-277862151763" thermalConductivity="0.4"/>
          </component>
        </material>
        <port xsi:type="esdl:InPort" connectedTo="a42acf83-361d-4d4d-8001-8617daad939a" id="20165ec3-cf86-41e4-976f-079ba0ca5be4" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In"/>
        <port xsi:type="esdl:OutPort" id="787c6ae3-96da-41e1-af86-6e68a1e28cb1" connectedTo="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="Out">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="349a2ed6-3d2f-4c96-bc85-776d6b5fdced" measurement="Pipe5" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="1d953309-413f-4aa1-a859-e150f266a940" measurement="Pipe5" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="5a9d565d-c3e1-4862-941e-8c838f81c1d2" measurement="Pipe5" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" perTimeUnit="SECOND" unit="METRE"/>
          </profile>
        </port>
        <dataSource xsi:type="esdl:DataSource" attribution="https://www.logstor.com/media/6506/product-catalogue-uk-202003.pdf" name="Logstor Product Catalogue Version 2020.03"/>
        <costInformation xsi:type="esdl:CostInformation" id="4c8d9c8f-7e99-4402-8f66-d413e73db121">
          <investmentCosts xsi:type="esdl:SingleValue" name="Combined investment and installation costs" value="1962.1" id="1e93bdda-8a74-42d5-960d-d64e4dff2025">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="983f0959-8566-43ce-a380-782d29406ed3" description="Costs in EUR/m" perUnit="METRE" unit="EURO"/>
          </investmentCosts>
        </costInformation>
      </asset>
      <asset xsi:type="esdl:Joint" id="076ba789-3040-4952-9b2b-fbf9ed05e6bd" name="Joint_a04c_ret">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.3663488762941665" lat="52.000059268817886"/>
        <port xsi:type="esdl:InPort" connectedTo="c5df4e61-6603-4315-a45a-196903690d9e 23d8b6bb-9480-4f02-ba7c-d00de8ff206e" id="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="044ef084-2a9e-4356-bac2-207f5361d4ce" connectedTo="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
      </asset>
      <asset xsi:type="esdl:Joint" id="b4a5be45-3352-4837-94d6-b110aa842da6" name="Joint_95ca_ret">
        <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.369031429215318" lat="51.99571274701101"/>
        <port xsi:type="esdl:InPort" connectedTo="59b53a77-a253-4a96-81ef-84e719a1f518 6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" id="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
        <port xsi:type="esdl:OutPort" id="5a47482f-6cdf-41b3-91b0-014578ee8143" connectedTo="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="ret_port"/>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.25" id="Pipe1_ret" diameter="DN150" innerDiameter="0.1603" length="818.07" name="Pipe1_ret" related="Pipe1">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.3663488762941665" lat="52.000059268817886"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.365092860885141" lat="52.00219934638504"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.372228431895539" lat="52.004762020697164"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="044ef084-2a9e-4356-bac2-207f5361d4ce" id="2c3c73cb-d282-4c97-a060-922c91c50180" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="c0a27794-98e2-4119-a363-cec4f0b525cd" connectedTo="4d6c18cd-cc52-443d-8e53-96cd188dd1a8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="b9184119-5e78-4e90-97fb-e30fe88eba0a" measurement="Pipe1_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="d6675885-d3eb-4e5d-aa5b-3b7bc9221417" measurement="Pipe1_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="5e5afe44-8c71-4d3c-9205-00e9a906215c" measurement="Pipe1_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" perTimeUnit="SECOND" unit="METRE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.56" id="Pipe2_ret" diameter="DN400" innerDiameter="0.3938" length="517.54" name="Pipe2_ret" related="Pipe2">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.369031429215318" lat="51.99571274701101"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.3663488762941665" lat="52.000059268817886"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="5a47482f-6cdf-41b3-91b0-014578ee8143" id="da70a1aa-53c4-496e-ba63-2c04674b8c84" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="c5df4e61-6603-4315-a45a-196903690d9e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="318332c2-5f33-473f-a43e-b0fafb3b753a" measurement="Pipe2_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="7c6f60e9-15cd-4c59-84a8-a4876b7a6611" measurement="Pipe2_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="fba5272e-64be-432f-b9f7-33f7fd9b88e9" measurement="Pipe2_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" perTimeUnit="SECOND" unit="METRE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.56" id="Pipe3_ret" diameter="DN400" innerDiameter="0.3938" length="1182.23" name="Pipe3_ret" related="Pipe3">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.378211386257638" lat="51.990784417008705"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.37305259776345" lat="51.98911949663501"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.369031429215318" lat="51.99571274701101"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" id="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="59b53a77-a253-4a96-81ef-84e719a1f518" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="728fb8d9-a2d8-4475-8af3-9aed448d0614" measurement="Pipe3_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="e6f8a4a1-ccc6-4d00-aa08-8d834aadd791" measurement="Pipe3_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="b6f2b4c7-deee-43bc-8542-1211ca81b0d8" measurement="Pipe3_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" perTimeUnit="SECOND" unit="METRE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.45" id="Pipe4_ret" diameter="DN300" innerDiameter="0.3127" length="455.4" name="Pipe4_ret" related="Pipe4">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.372769808163894" lat="52.00114253074436"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.3663488762941665" lat="52.000059268817886"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="d7eb3623-7481-41bb-911d-2dd9bd67db39" id="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="23d8b6bb-9480-4f02-ba7c-d00de8ff206e" connectedTo="1ba08c64-4c54-4f23-93bf-2b2f6c04229d" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="8cfa6bc4-9ff7-4604-a178-d1c2a60ec3e4" measurement="Pipe4_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="a7f62fb4-27ce-44e5-b206-138d945d9b59" measurement="Pipe4_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="e9c5682d-362d-4565-81b8-16dc0e208685" measurement="Pipe4_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" perTimeUnit="SECOND" unit="METRE"/>
          </profile>
        </port>
      </asset>
      <asset xsi:type="esdl:Pipe" outerDiameter="0.45" id="Pipe5_ret" diameter="DN300" innerDiameter="0.3127" length="252.3" name="Pipe5_ret" related="Pipe5">
        <geometry xsi:type="esdl:Line">
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.372447461880088" lat="51.99657151577376"/>
          <point xsi:type="esdl:Point" CRS="WGS84" lon="4.369031429215318" lat="51.99571274701101"/>
        </geometry>
        <port xsi:type="esdl:InPort" connectedTo="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" id="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="In_ret"/>
        <port xsi:type="esdl:OutPort" id="6f9268a0-1fd9-42f6-8821-2d7d4a6e5618" connectedTo="6b4d9bba-484b-46aa-bfe6-895d491b6747" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out_ret">
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="e7f1c199-4856-43a1-853b-357b8a2ababd" measurement="Pipe5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="250ae5f3-8fd3-4dd7-a85c-aaed1b4c00fb" measurement="Pipe5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
          </profile>
          <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="d2856848-237b-4f2b-be51-febb5b9fae33" measurement="Pipe5_ret" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="PostProc.Velocity">
            <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="SPEED" perTimeUnit="SECOND" unit="METRE"/>
          </profile>
        </port>
      </asset>
      <area xsi:type="esdl:Area" id="76a75122-8ea6-472d-8059-374830275d72" name="Area_76a7">
        <asset xsi:type="esdl:HeatingDemand" id="b0ff0df6-4a47-43a5-a0a5-aa10975c0a5c" power="15000000.0" name="HeatingDemand_b0ff">
          <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.373545646667481" lat="52.00105253065436"/>
          <port xsi:type="esdl:InPort" connectedTo="5169316d-ae93-4f04-9a34-7c776444b651" id="2c5a109b-0d98-47b6-acc1-05e1708f8b85" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="energy_profiles" host="profiles.warmingup.info" id="b8150ac7-ea23-4be6-b5a3-b6974b8df58d" measurement="WarmingUp default profiles" filters="" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" port="443" field="demand4_MW">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="d7eb3623-7481-41bb-911d-2dd9bd67db39" connectedTo="5e2f4591-43f2-489f-8eb2-63105dbd0355" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="2d5caf68-ebad-4dc9-9944-92f00ade158d" measurement="HeatingDemand_b0ff" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="3e00f0d0-bc4d-4aad-97aa-5281dc880c68" measurement="HeatingDemand_b0ff" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="cd676c1c-6224-406f-a864-3e7ff55265e0">
            <investmentCosts xsi:type="esdl:SingleValue" id="08f06cd1-471b-404a-8894-27b315775b59" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="f8e5bc00-6eae-47d6-b7ad-b9699879b14c" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT" unit="EURO"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" id="829c1c62-4266-4560-ac77-b961b7a722cf" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="1c0a9d42-bb5a-44c1-9ed6-824d7c82e932" description="Cost in EUR"/>
            </installationCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.376142024993897" lat="52.003232185574326"/>
            <point xsi:type="esdl:Point" lon="4.372107982635499" lat="52.002228236493224"/>
            <point xsi:type="esdl:Point" lon="4.3712711334228525" lat="52.0031132980428"/>
            <point xsi:type="esdl:Point" lon="4.366979598999024" lat="52.00197724570447"/>
            <point xsi:type="esdl:Point" lon="4.369254112243653" lat="51.99826505971136"/>
            <point xsi:type="esdl:Point" lon="4.373760223388673" lat="51.99945404958839"/>
            <point xsi:type="esdl:Point" lon="4.3776869773864755" lat="51.995635958872874"/>
            <point xsi:type="esdl:Point" lon="4.380712509155274" lat="51.9963626102222"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="a753fe7a-db04-4555-848f-26d0db27adc5">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]" value="100.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed [GWh]" value="7.4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR" multiplier="GIGA"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" id="9d0fd9ed-662c-42ec-a417-7e789737084c" name="Area_9d0f">
        <asset xsi:type="esdl:HeatingDemand" id="08fd3385-681a-4211-a083-51775cc99daa" power="15000000.0" name="HeatingDemand_08fd">
          <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.373245239257813" lat="51.99648151568376"/>
          <port xsi:type="esdl:InPort" connectedTo="787c6ae3-96da-41e1-af86-6e68a1e28cb1" id="01caa60f-1549-4f3f-817e-e4e6807b2398" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="energy_profiles" host="profiles.warmingup.info" id="ddd73fb0-d96f-4127-8d39-869455c77930" measurement="WarmingUp default profiles" filters="" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" port="443" field="demand4_MW">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="ca90e0a5-f866-4ec2-9b3b-07f054f1c2b2" connectedTo="35ddd90a-e45c-4afd-95b4-80ce6c927071" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="979ce7b0-387f-4e61-9868-85dd12cbdf5c" measurement="HeatingDemand_08fd" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="a7708883-400e-434b-b765-66d3176a5d7d" measurement="HeatingDemand_08fd" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="7eac6b5e-ba11-4ef1-b90e-599dd2690d20">
            <investmentCosts xsi:type="esdl:SingleValue" id="26aba0b6-a1a0-4610-97b3-be763548c669" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="424508c6-24aa-4a35-81e9-7ae198cbaeb8" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT" unit="EURO"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" id="3b93383a-2ec4-4b35-9335-ebd91f0de600" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="318840e0-6f48-46f4-b9c9-91315d7b45fd" description="Cost in EUR"/>
            </installationCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.3692970275878915" lat="51.99817258139733"/>
            <point xsi:type="esdl:Point" lon="4.373695850372315" lat="51.99932194116153"/>
            <point xsi:type="esdl:Point" lon="4.376678466796876" lat="51.99534529503086"/>
            <point xsi:type="esdl:Point" lon="4.38081979751587" lat="51.99624370444482"/>
            <point xsi:type="esdl:Point" lon="4.381613731384278" lat="51.99490929572965"/>
            <point xsi:type="esdl:Point" lon="4.372708797454835" lat="51.99272923553559"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="d15e0924-a5e6-42ae-9f16-6e859135a67f">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]" value="100.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed [GWh]" value="7.4">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR" multiplier="GIGA"/>
          </kpi>
        </KPIs>
      </area>
      <area xsi:type="esdl:Area" id="a58a988c-95c1-492b-bc63-b125d25f5108" name="Area_a58a">
        <asset xsi:type="esdl:HeatingDemand" id="8fbe3d4e-5d5b-4489-9271-9969c2b9e589" power="15000000.0" name="HeatingDemand_8fbe">
          <geometry xsi:type="esdl:Point" CRS="WGS84" lon="4.379038810729981" lat="51.99069441691871"/>
          <port xsi:type="esdl:InPort" connectedTo="13edd58c-4a04-4770-8aac-c6e8689acbba" id="23cdb929-5cfc-4b8d-963e-06b6e6cf3a5c" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" name="In">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="energy_profiles" host="profiles.warmingup.info" id="5ae97047-619a-4119-84f3-848b36743e5d" measurement="WarmingUp default profiles" filters="" multiplier="2.0" endDate="2019-12-31T22:00:00.000000+0000" port="443" field="demand3_MW">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitReference" reference="e9405fc8-5e57-4df5-8584-4babee7cdf1b"/>
            </profile>
          </port>
          <port xsi:type="esdl:OutPort" id="0fd050fa-15ff-4f1e-b0bd-ef1823365eaa" connectedTo="6d1edc18-1962-4d3d-9882-ef27ae1702e8" carrier="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" name="Out">
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="055b1ef8-fed5-47db-afb5-626203c25757" measurement="HeatingDemand_8fbe" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="HeatIn.Q">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="FLOW" perTimeUnit="SECOND" unit="CUBIC_METRE"/>
            </profile>
            <profile xsi:type="esdl:InfluxDBProfile" startDate="2018-12-31T23:00:00.000000+0000" database="21781e7d-78f5-4278-afb5-90a69f31ccf4" host="localhost" id="07594544-fb59-4a15-a925-5fd24d197845" measurement="HeatingDemand_8fbe" endDate="2019-12-31T23:00:00.000000+0000" port="8096" field="Heat_flow">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" unit="WATT"/>
            </profile>
          </port>
          <costInformation xsi:type="esdl:CostInformation" id="32e59a3e-fe5e-4201-bbd6-4f26dc4c961e">
            <investmentCosts xsi:type="esdl:SingleValue" id="3971c64d-50e4-47ec-a769-1f91935065d9" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" id="5a0e43e1-b141-4626-87eb-487cdb70e60e" description="Cost in EUR/MW" perMultiplier="MEGA" perUnit="WATT" unit="EURO"/>
            </investmentCosts>
            <installationCosts xsi:type="esdl:SingleValue" id="850701a9-ec9a-40c5-ab3e-e0dbe6165cb6" value="1000000.0">
              <profileQuantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" id="b18cdc99-6303-404c-958a-1a4c079f842d" description="Cost in EUR"/>
            </installationCosts>
          </costInformation>
        </asset>
        <geometry xsi:type="esdl:Polygon" CRS="WGS84">
          <exterior xsi:type="esdl:SubPolygon">
            <point xsi:type="esdl:Point" lon="4.372987747192384" lat="51.992279997820766"/>
            <point xsi:type="esdl:Point" lon="4.382214546203614" lat="51.994235470276436"/>
            <point xsi:type="esdl:Point" lon="4.38581943511963" lat="51.989333415199866"/>
            <point xsi:type="esdl:Point" lon="4.37633514404297" lat="51.98688879367896"/>
          </exterior>
        </geometry>
        <KPIs xsi:type="esdl:KPIs" id="04246b3b-d5db-4bd7-9610-7eb538f4cc76">
          <kpi xsi:type="esdl:DoubleKPI" name="Investment" value="15.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Installation" value="1.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Variable OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Fixed OPEX">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO" multiplier="MEGA"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from local source(s) [%]">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Estimated energy from regional source(s) [%]" value="100.0">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" unit="PERCENT"/>
          </kpi>
          <kpi xsi:type="esdl:DoubleKPI" name="Total energy consumed [GWh]" value="6.6">
            <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR" multiplier="GIGA"/>
          </kpi>
        </KPIs>
      </area>
      <KPIs xsi:type="esdl:KPIs" id="40f0b004-92df-47f4-b0b7-dd2c3f1fc99e">
        <kpi xsi:type="esdl:DistributionKPI" name="High level cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="CAPEX" value="77793547.41999997"/>
            <stringItem xsi:type="esdl:StringItem" label="OPEX" value="6820966.574094007"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Overall cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="12999999.999999965"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="64793547.42"/>
            <stringItem xsi:type="esdl:StringItem" label="Variable OPEX" value="2127504.7772940067"/>
            <stringItem xsi:type="esdl:StringItem" label="Fixed OPEX" value="4693461.7968"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="CAPEX breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="21733654.49199996"/>
            <stringItem xsi:type="esdl:StringItem" label="Pipe" value="8059892.928"/>
            <stringItem xsi:type="esdl:StringItem" label="HeatingDemand" value="48000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="OPEX breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource" value="6820966.574094007"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Energy production [Wh]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="ENERGY" unit="WATTHOUR"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="ResidualHeatSource_72d7" value="21275047772.940067"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_76a7: Asset cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_9d0f: Asset cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
        <kpi xsi:type="esdl:DistributionKPI" name="Area_a58a: Asset cost breakdown [EUR]">
          <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="COST" unit="EURO"/>
          <distribution xsi:type="esdl:StringLabelDistribution">
            <stringItem xsi:type="esdl:StringItem" label="Installation" value="1000000.0"/>
            <stringItem xsi:type="esdl:StringItem" label="Investment" value="15000000.0"/>
          </distribution>
        </kpi>
      </KPIs>
    </area>
  </instance>
  <energySystemInformation xsi:type="esdl:EnergySystemInformation" id="5fa7e6e3-5701-48a7-bbbd-cad59a46f6c5">
    <quantityAndUnits xsi:type="esdl:QuantityAndUnits" id="38f7850a-2090-411e-a15a-84b1d7b78362">
      <quantityAndUnit xsi:type="esdl:QuantityAndUnitType" physicalQuantity="POWER" id="e9405fc8-5e57-4df5-8584-4babee7cdf1b" description="Power in MW" multiplier="MEGA" unit="WATT"/>
    </quantityAndUnits>
    <carriers xsi:type="esdl:Carriers" id="42a694c6-9a1b-4cc7-bbae-0b44725f9434">
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6" supplyTemperature="80.0" name="Primary"/>
      <carrier xsi:type="esdl:HeatCommodity" id="9f6aeb1a-138b-4bb9-9a09-d524e94658e6_ret" returnTemperature="40.0" name="Primary_ret"/>
    </carriers>
  </energySystemInformation>
</esdl:EnergySystem>
